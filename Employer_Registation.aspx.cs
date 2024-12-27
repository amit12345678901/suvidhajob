using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Net.Mail;



public partial class Employer_Registation : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetVerificationText();
        }
    }
    public void SetVerificationText()
    {
        Random ran = new Random();
        int no = ran.Next();
        Session["Captcha"] = no.ToString();
    }
    protected void CAPTCHAValidate(object source, ServerValidateEventArgs args)
    {
        if (Session["Captcha"] != null)
        {
            if (cap.Text.ToString().Trim().Replace("'", "''") != Session["Captcha"].ToString())
            {

                SetVerificationText();
                args.IsValid = false;
                return;
            }
        }
        else
        {
            SetVerificationText();
            args.IsValid = false;
            return;
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox1.Text = "";
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToString().Trim().Replace("'", "''") != "" && TextBox3.Text.ToString().Trim().Replace("'", "''") != "" && TextBox5.Text.ToString().Trim().Replace("'", "''") != "" && TextBox7.Text.ToString().Trim().Replace("'", "''") != "" && TextBox9.Text.ToString().Trim().Replace("'", "''") != "" && TextBox2.Text.ToString().Trim().Replace("'", "''") != "" && cap.Text.ToString().Trim().Replace("'", "''") != "" && TextBox12.Text.ToString().Trim().Replace("'", "''") != "")
        {
            string MobileNumber = TextBox5.Text.Trim();
            string phoneNumber = TextBox4.Text.Trim();

            if (!Page.IsValid)
            {
                return;
            }
            // Check if the phone number contains exactly 10 digits
            else if (MobileNumber.Length != 10)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Please enter valid mobile number !');</script>");
            }
            else
            {
                SetVerificationText();
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  id_txt  from  clogin_detail where email_txt='" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "'";
                SqlDataReader dr1, dr2, dr3;
                dr1 = m.ExecuteReader();
                if (dr1.Read())
                {
                    dr1.Close();
                    TextBox8.Text = "";
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Email Id is already exissist.')", true);
                    cap.Text = "";
                }
                else
                {
                    dr1.Close();

                    m.CommandText = "select  count(id_txt)  from  clogin_detail";

                    dr2 = m.ExecuteReader();
                    dr2.Read();
                    if (Int32.Parse(dr2[0].ToString()) == 0)
                    {
                        id = 1;
                        dr2.Close();
                    }
                    else
                    {
                        dr2.Close();

                        m.CommandText = "select  max(id_txt)  from  clogin_detail";

                        dr3 = m.ExecuteReader();
                        dr3.Read();
                        id = Int32.Parse(dr3[0].ToString());
                        id = id + 1;
                        dr3.Close();
                    }
                    m.CommandText = "insert into clogin_detail values(@id_txt,@Client_number,@branch_txt,@co_name_txt,@DrCity1,@add_txt,@email_txt,@t_n2,@t_n_o2,@phone2,@mobile2,@website2,@c_point_txt2,@desi_txt2,@size_txt2,@branches_txt2,@emp1_txt2,@username_txt,@password_txt,@terms_txt,@start_date,@end_date,@auth_txt,@mail_auth,@rs_auth,@mfs_auth,@jp_auth,@dev_by)";

                    m.Parameters.AddWithValue("@id_txt", id);
                    m.Parameters.AddWithValue("@Client_number", "0");
                    m.Parameters.AddWithValue("@branch_txt", "aaaa");
                    m.Parameters.AddWithValue("@co_name_txt", TextBox1.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@DrCity1", DropDownList1.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@add_txt", TextBox2.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@email_txt", TextBox3.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@t_n2", DropDownList2.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@t_n_o2", "aaaa");
                    m.Parameters.AddWithValue("@phone2", TextBox4.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@mobile2", TextBox5.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@website2", TextBox6.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@c_point_txt2", TextBox7.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@desi_txt2", TextBox8.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@size_txt2", TextBox9.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@branches_txt2", TextBox10.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@emp1_txt2", TextBox11.Text.ToString().Trim().Replace("'", "''"));
                    string username1 = "NILL" + id.ToString();
                    m.Parameters.AddWithValue("@username_txt", username1);
                    m.Parameters.AddWithValue("@password_txt", "NILL");
                    m.Parameters.AddWithValue("@terms_txt", "aaaa");
                    m.Parameters.AddWithValue("@start_date", DateTime.Now.ToShortDateString());
                    m.Parameters.AddWithValue("@end_date", DateTime.Now.AddDays(365).ToShortDateString());
                    m.Parameters.AddWithValue("@auth_txt", 0);
                    m.Parameters.AddWithValue("@mail_auth", 0);
                    m.Parameters.AddWithValue("@rs_auth", 0);
                    m.Parameters.AddWithValue("@mfs_auth", 0);
                    m.Parameters.AddWithValue("@jp_auth", 0);
                    m.Parameters.AddWithValue("@dev_by", TextBox12.Text.ToString().Trim().Replace("'", "''"));
                    m.ExecuteNonQuery();
                    c.Close();
                    MailService mailService = new MailService();
                    Service service = new Service();
                    mailService.mail(TextBox1.Text.ToString().Trim().Replace("'", "''"), TextBox3.Text.ToString().Trim().Replace("'", "''"));
                    service.mail1(TextBox1.Text.ToString().Trim().Replace("'", "''"));
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox4.Text = "";
                    TextBox12.Text = "";
                    DropDownList1.SelectedItem.Text = "Select";
                    DropDownList2.SelectedItem.Text = "Select";
                    //   ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Successfully create account.our representetive will be contact with  you.')", true);
                    cap.Text = "";
                    ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Your account has been successfully created. Our representative will contact you soon.');</script>");

                }
            }
        }
        else
        {
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('all criteria are not fill up.please follow the * mark.');</script>");
            cap.Text = "";
        }
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  id_txt  from  clogin_detail where email_txt='" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "'";
            SqlDataReader dr;
            dr = m.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Label1.Text = "Not available.";
                Label1.ForeColor = Color.Red;
            }
            else
            {
                Label1.Text = "Available";
                Label1.ForeColor = Color.Green;
                dr.Close();
            }
        }
        else
        {
            Label1.Text = "please, enter first a valid email id.";
        }
    }



    public class MailService
    {
        private const string SmtpServer = "mail5002.site4now.net";
        private const int SmtpPort = 25;
        private const string FromEmail = "noreply@suvidhajobs.in";
        private const string EmailPassword = "Norp@4521*";

        public void mail(string to, string name)
        {
            try
            {
                // Create a MailMessage object
                var msgMail = new MailMessage
                {
                    From = new MailAddress(FromEmail, "Suvidha Jobs"),
                    Subject = "Welcome to Suvidha Jobs",
                    IsBodyHtml = true
                };

                // Add recipient
                msgMail.To.Add(to);

                // Construct the HTML body
                msgMail.Body = "<html>" +
                    "<body>" +
                    "<table border='1' cellpadding='5' cellspacing='0' style='border-color: #CCCCCC; width: 600px;'>" +
                    "<tr>" +
                    "<td style='background-color: #ce5039; height: 10px;'></td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td>" +
                    "<p>Dear " + name + ",</p>" +
                    "<p>Thank you for registering with Suvidha Jobs.</p>" +
                    "<p>Your account will be activated within 24 Hours. Our representative will contact you shortly.</p>" +
                    "<p>If you have any queries, email us at <a href='mailto:response@suvidhajobs.in'>response@suvidhajobs.in</a>.</p>" +
                    "<p>We look forward to a long and fruitful association with you.</p>" +
                    "<p>With regards,<br>Team Suvidha Jobs</p>" +
                    "</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td style='background-color: #425c6e; color: #ffffff; font-style: italic; text-align: center;'>" +
                    "This is an auto-generated mail. Please do not reply." +
                    "</td>" +
                    "</tr>" +
                    "</table>" +
                    "</body>" +
                    "</html>";

                // Create the SmtpClient object
                var smtpClient = new SmtpClient(SmtpServer, SmtpPort);

                try
                {
                    // Configure SMTP client
                    smtpClient.Credentials = new NetworkCredential(FromEmail, EmailPassword);
                    smtpClient.EnableSsl = false; // Use true if the server requires SSL

                    // Send the email
                    smtpClient.Send(msgMail);
                }
                catch (Exception ex)
                {
                    // Log or handle the error
                    Console.WriteLine("Error sending email: " + ex.Message);
                }
            }
            catch (Exception ex)
            {
                // Log the exception or handle it accordingly
                Console.WriteLine("Failed to send email. Error: " + ex.Message);
            }
        }
    }



    public class Service
    {
        private const string SmtpServer = "mail5002.site4now.net";
        private const int SmtpPort = 25;
        private const string FromEmail = "noreply@suvidhajobs.in";
        private const string EmailPassword = "Norp@4521*";
        private const string AdminEmail = "amitmaity2024@gmail.com";

        public void mail1(string name)
        {
            try
            {
                // Create a MailMessage object
                var msgMail = new MailMessage
                {
                    From = new MailAddress(FromEmail, "Suvidha Jobs"),
                    Subject = "New Company Registered at Suvidha Jobs",
                    IsBodyHtml = true
                };

                // Add recipient
                msgMail.To.Add(AdminEmail);

                // Construct the HTML body
                msgMail.Body = "<html>" +
                    "<body>" +
                    "<table border='1' cellpadding='5' cellspacing='0' style='border-color: #CCCCCC; width: 600px;'>" +
                    "<tr>" +
                    "<td style='background-color: #ce5039; height: 10px;'></td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td>" +
                    "<p>Dear Admin,</p>" +
                    "<p>A new company has registered on Suvidha Jobs.</p>" +
                    "<p><strong>Company Name:</strong> " + name + "</p>" +
                    "<p>Please review the details in the admin section.</p>" +
                    "<p>With regards,<br>Team Suvidha Jobs</p>" +
                    "</td>" +
                    "</tr>" +
                    "<tr>" +
                    "<td style='background-color: #425c6e; color: #ffffff; font-style: italic; text-align: center;'>" +
                    "This is an auto-generated mail. Please do not reply." +
                    "</td>" +
                    "</tr>" +
                    "</table>" +
                    "</body>" +
                    "</html>";

                // Create the SmtpClient object
                var smtpClient = new SmtpClient(SmtpServer, SmtpPort);

                // Configure SMTP client
                smtpClient.Credentials = new NetworkCredential(FromEmail, EmailPassword);
                smtpClient.EnableSsl = false; // Set true if SSL is required

                // Send the email
                smtpClient.Send(msgMail);
            }
            catch (Exception ex)
            {
                // Log error or handle exception
                Console.WriteLine("Failed to send email. Error: " + ex.Message);
            }
        }
    }
}