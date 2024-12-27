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

public partial class ForgotPassword_Company : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                if (TextBox1.Text != "" && TextBox2.Text == "")
                {
                    m.CommandText = "select  user_id,pass,cl_name,email  from  cvsearch_num where user_id='" + TextBox1.Text + "'";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    if (dr.Read())
                    {
                        //Label2.Text = dr[0].ToString();
                        //Label3.Text = dr[1].ToString();

                        mail(dr[3].ToString(), dr[2].ToString(), dr[0].ToString(), dr[1].ToString());
                        Label1.Text = "your user id,password send  successfully.";

                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        dr.Close();
                    }
                    else
                    {
                        Label2.Text = "";
                        Label3.Text = "";
                        dr.Close();
                        Label1.Text = "Unknown user";
                    }
                }
              
               
                
              
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                c.Close();
            }
        }
        else
        {
            Label1.Text = "please enter some criteria get the result.";
        }
    }

    public void mail(string to, string name, string uid, string pass)
    {
        MailMessage msgMail = new MailMessage();

        msgMail.To = to;
        msgMail.From = "admin@suvidhajobs.in";
        msgMail.Subject = "new password";

        msgMail.BodyFormat = MailFormat.Html;
        //msgMail.Body = "Dear sir="+name+"    your user id is="+uid+"  and password="+pass;
        //msgMail.Attachments.Add(new MailAttachment(Server.MapPath("SimpleMail.aspx")));
        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                     "Dear " + name + ",<br><p align=justify>We thank you for your relationship with Ack Group a leading placement company. It is our privilege to have you as our valued customer.</p>" +
                    "<p align=justify>Given below are the log-in details of your account.</p>" +
                    "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right>USER ID: </td><td valign=center width=182 align=left><strong>" + uid + "</strong></td></tr><tr>" +
                       "<td valign=center width=183 align=right>Password : </td><td valign=center width=182 align=left><strong>" + pass + "</strong></td></tr></table></td></tr>" +
                  "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1>For any Queries, call +91 9674245433, 9674926708 or e-mail us at accounting.knowledge@gmail.com</td></tr>" +
                  "<tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>Thanks for choosing us. <br><br>Sincerely, <br>Team ACK Group</td></tr><tr><td></td></tr><tr>" +
                    "<td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr></table></td></tr></table><br></body></html>";

        SmtpMail.Send(msgMail);



    }

    }

