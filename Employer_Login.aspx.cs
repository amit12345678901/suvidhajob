using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;

public partial class Employer_Login : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] != null)
        {
            Response.Redirect("Company_main.aspx");
        }
        TextBox1.Focus();
    }
    protected void Signin_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select password_txt,id_txt,auth_txt,rs_auth,jp_auth,end_date,email_txt,co_name_txt2 from clogin_detail  where Username_txt='" + TextBox1.Text + "'";
            SqlDataReader dr;
            dr = m.ExecuteReader();
            if (dr.Read())
            {

                if (TextBox2.Text == dr[0].ToString())
                {
                    if (Convert.ToBoolean(dr[2].ToString()) == true)
                    {
                        TimeSpan ts = new TimeSpan(+5, +30, 0);

                        if (Convert.ToDateTime(dr[5].ToString()) > DateTime.Now.Date.Add(ts).Date)
                        {

                            Response.Cookies["emplogin"].Value = "yes";

                            Session["Client_number"] = dr[1].ToString();

                            Session["Username_txt"] = TextBox1.Text;
                            if (Convert.ToBoolean(dr[3].ToString()) == true)
                            {
                                Session["resume_search"] = "yes";
                            }
                            if (Convert.ToBoolean(dr[4].ToString()) == true)
                            {
                                Session["job_posting"] = "yes";
                            }


                         
                            dr.Close();


                           


                            Response.Redirect("Company_main.aspx");
                        }
                        else
                        {
                            Label1.Text = "Your account is out of date.";
                            dr.Close();
                        }

                    }
                    else
                    {
                        Label1.Text = "You are not authorised by administrator, please contact suvidhagroup.";
                        dr.Close();
                    }


                }
                else
                {
                    dr.Close();
                    Label1.Text = "Wrong password";
                }
            }
            else
            {
                dr.Close();
                Label1.Text = "Unknown user.";
                TextBox1.Text = "";
            }
        }
        else
        {
            Label1.Text = "please fill all the field.";
        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }


    public void mail1(string email1, string name12, string pass12)
    {

        MailMessage msgMail = new MailMessage();


        msgMail.To = email1;

        msgMail.From = "admin@suvidhajobs.in";

        msgMail.Subject = "Ack Employer Log-in. Thank you.";

        msgMail.BodyFormat = MailFormat.Html;


        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                       "Dear " + name12 + ",<br><p align=justify>We thank you for your relationship with dreamfield realtors. It is our privilege to have you as our valued user.</p>" +
                      "<p align=justify>Given below are the log-in details of your account.</p>" +
                      "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right><tr>" +
                         "<td valign=center width=183 align=right>Date : </td><td valign=center width=182 align=left><strong>" + pass12 + "</strong></td></tr></table></td></tr>" +
                    "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1>For any Queries,  e-mail us at info@suvidhajobs.in</td></tr>" +
                    "<tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>Thanks for choosing us. <br><br>Sincerely, <br>Team suvidhajobs.in</td></tr><tr><td></td></tr><tr>" +
                      "<td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr></table></td></tr></table><br></body></html>";


        SmtpMail.Send(msgMail);





    }
}
