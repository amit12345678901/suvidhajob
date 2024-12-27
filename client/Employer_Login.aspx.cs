using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;
using System.Web.Mail;
using System.Net.Sockets;
using System.Text;
using System.Collections;
using System.Net;
using System.Text.RegularExpressions;


public partial class Employer_Login : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (Session["Username_txt"] != null)
        {
            Response.Redirect("Company_main.aspx");
        }*/

        if (!IsPostBack)
        {
            TextBox1.Focus();
        }
    }

    public void mail1(string email1, string name12, string pass12)
    {

        MailMessage msgMail = new MailMessage();


        msgMail.To = email1;

        msgMail.From = "admin@suvidhajobs.in";

        msgMail.Subject = "Ack Cv Search Log-in. Thank you.";

        msgMail.BodyFormat = MailFormat.Html;


        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                       "Dear " + name12 + ",<br><p align=justify>We thank you for your relationship with dreamfield realtors. It is our privilege to have you as our valued user.</p>" +
                      "<p align=justify>Given below are the log-in details of your account.</p>" +
                      "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right><tr>" +
                         "<td valign=center width=183 align=right>Date : </td><td valign=center width=182 align=left><strong>" + pass12 + "</strong></td></tr></table></td></tr>" +
                    "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1>For any Queries,  e-mail us at info@dreamfieldrealtors.com</td></tr>" +
                    "<tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>Thanks for choosing us. <br><br>Sincerely, <br>Team dreamfield realtors</td></tr><tr><td></td></tr><tr>" +
                      "<td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr></table></td></tr></table><br></body></html>";


        SmtpMail.Send(msgMail);





    }

    protected void Signin_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select id,close_date,remain,email,cl_name from cvsearch_num  where user_id='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            
            SqlDataReader dr;
            dr = m.ExecuteReader();
            if (dr.Read())
            {
                TimeSpan ts = new TimeSpan(+5, +30, 0);
                if (Convert.ToDateTime(dr[1].ToString()) > DateTime.Now.Date.Add(ts).Date)

                    {
                    //DateTime.Now.Date.Add(ts).
                        if (Int32.Parse(dr[2].ToString()) > 0)
                        {
                            

                            Session["cvsearch_id"] = dr[0].ToString();

                            Session["cv_num"] = dr[2].ToString();

                            Session["email"] = dr[3].ToString();

                            Session["cl_name"] = dr[4].ToString();

                          

                            dr.Close();

                           

                                m.CommandText = "select  max(id)  from  login_det";
                                SqlDataReader dr1, dr2;
                                dr1 = m.ExecuteReader();
                                dr1.Read();
                                id = Int32.Parse(dr1[0].ToString());
                                id = id + 1;
                                dr1.Close();
                                m.CommandText = "select  id from  login_det where uid=" + Session["cvsearch_id"] + " and date1='" + DateTime.Now.Date.Add(ts).ToShortDateString() + "'"; ;
                                dr2 = m.ExecuteReader();

                                if (dr2.Read())
                                {
                                    Session["login_det_id"] = dr2[0].ToString();
                                    dr2.Close();
                                    m.CommandText = "update  login_det set login_time= login_time + 1  where id=" + Session["login_det_id"];
                                    m.ExecuteNonQuery();
                                }
                                else
                                {
                                    dr2.Close();
                                    m.CommandText = "insert into login_det values(" + id + "," + Int32.Parse(Session["cvsearch_id"].ToString()) + ",'" + DateTime.Now.Date.Add(ts).ToShortDateString() + "',0,1)";
                                    m.ExecuteNonQuery();
                                    Session["login_det_id"] = id.ToString();
                                }

                            mail1(Session["email"].ToString(), Session["cl_name"].ToString(), DateTime.Now.Date.Add(ts).ToLongDateString().ToString());
                            
                                Response.Redirect("Company_main.aspx");
                        }
                        else
                        {
                            Label1.Text = "Your account is Empty.";
                            dr.Close();
                        }
                    }
                    else
                    {
                        Label1.Text = "Your account is out of date.";
                        dr.Close();
                    }


              
            }
            else
            {
                dr.Close();
                Label1.Text = "Unknown user/password.";
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
}
