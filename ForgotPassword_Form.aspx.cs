using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI;
using System.Net;


public partial class ForgotPassword_Form : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!IsNullOrWhiteSpace(TextBox1.Text) || !IsNullOrWhiteSpace(TextBox2.Text))
        {
            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                if (!IsNullOrWhiteSpace(TextBox1.Text) && IsNullOrWhiteSpace(TextBox2.Text))
                {
                    HandleUserSearchByUserId();
                }
                else if (IsNullOrWhiteSpace(TextBox1.Text) && !IsNullOrWhiteSpace(TextBox2.Text))
                {
                    HandleUserSearchByEmail();
                }
                else if (!IsNullOrWhiteSpace(TextBox1.Text) && !IsNullOrWhiteSpace(TextBox2.Text))
                {
                    HandleUserSearchByUserIdAndEmail();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "An error occurred: " + ex.Message;
            }
            finally
            {
                c.Close();
            }
        }
        else
        {
            Label1.Text = "Please enter your User ID or Email.";
        }
    }

    private bool IsNullOrWhiteSpace(string value)
    {
        return string.IsNullOrEmpty(value) || value.Trim().Length == 0;
    }


    private void HandleUserSearchByUserId()
    {
        m.CommandText = "SELECT user_txt, pass_txt, name_txt, email_txt FROM pyr_master WHERE user_txt = @UserId";
        m.Parameters.AddWithValue("@UserId", TextBox1.Text.Trim());

        using (SqlDataReader dr = m.ExecuteReader())
        {
            if (dr.Read())
            {
                SendEmail(dr["email_txt"].ToString(), dr["name_txt"].ToString(), dr["user_txt"].ToString(), dr["pass_txt"].ToString());
                Label1.Text = "Your user ID and password have been sent successfully to your registered email.";
            }
            else
            {
                Label1.Text = "Unknown user ID.";
            }
        }
    }

    private void HandleUserSearchByEmail()
    {
        m.CommandText = "SELECT user_txt, pass_txt, name_txt, email_txt FROM pyr_master WHERE email_txt = @Email";
        m.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());

        using (SqlDataReader dr = m.ExecuteReader())
        {
            if (dr.Read())
            {
                SendEmail(dr["email_txt"].ToString(), dr["name_txt"].ToString(), dr["user_txt"].ToString(), dr["pass_txt"].ToString());
                Label1.Text = "Your user ID and password have been sent successfully to your registered email.";
            }
            else
            {
                Label1.Text = "Unknown email ID.";
            }
        }
    }

    private void HandleUserSearchByUserIdAndEmail()
    {
        m.CommandText = "SELECT user_txt, pass_txt, name_txt, email_txt FROM pyr_master WHERE user_txt = @UserId OR email_txt = @Email";
        m.Parameters.AddWithValue("@UserId", TextBox1.Text.Trim());
        m.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());

        using (SqlDataReader dr = m.ExecuteReader())
        {
            if (dr.Read())
            {
                SendEmail(dr["email_txt"].ToString(), dr["name_txt"].ToString(), dr["user_txt"].ToString(), dr["pass_txt"].ToString());
                Label1.Text = "Your user ID and password have been sent successfully to your registered email.";
            }
            else
            {
                Label1.Text = "Unknown user ID or email ID.";
            }
        }
    }

    private void SendEmail(string to, string name, string userId, string password)
    {
        try
        {
            string from = "noreply@suvidhajobs.in";
            MailMessage message = new MailMessage(from, to);
            string mailbody = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
             "Dear " + name + ",<br><p align=justify>We thank you for your relationship with suvidhajobs.in Group a leading placement company. It is our privilege to have you as our valued user.</p>" +
            "<p align=justify>Given below are the log-in details of your account.</p>" +
            "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right>USER ID: </td><td valign=center width=182 align=left><strong>" + userId + "</strong></td></tr><tr>" +
               "<td valign=center width=183 align=right>Password : </td><td valign=center width=182 align=left><strong>" + password + "</strong></td></tr></table></td></tr>" +
          "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1>For any Queries, call +91 9674926708 or e-mail us at response@suvidhajobs.in</td></tr>" +
          "<tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>Thanks for choosing us. <br><br>Sincerely, <br>Team suvidhajobs.in.</td></tr><tr><td></td></tr><tr>" +
            "<td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr></table></td></tr></table><br></body></html>";

         message.Subject = "Password reset from Suvidhajobs.in";
         message.Body = mailbody;
         message.BodyEncoding = System.Text.Encoding.UTF8;
         message.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("mail5002.site4now.net", 25); // SMTP server address and port
        client.Credentials = new NetworkCredential("noreply@suvidhajobs.in", "Norp@4521*");
        client.EnableSsl = false;
                // Send the message
        client.Send(message);
        TextBox1.Text = "";
        TextBox2.Text = "";

        }
        catch (Exception ex)
        {
            throw new Exception("Error sending email: " + ex.Message);
        }
    }
}
