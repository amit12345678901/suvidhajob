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
using System.Web.Mail;

public partial class Employer_Registation : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {


                if (Convert.ToString(Session["roll"]) != "Administrator")
                {


                    if (Convert.ToString(Session["cmp_add"]) == "False")
                    {
                        Response.Redirect("Admin_Main.aspx");
                    }
                }

            }
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
        if (TextBox1.Text != "" && TextBox3.Text != "" && TextBox7.Text != "" && TextBox2.Text != "" && TextBox9.Text != "" && uname.Text!="" && password.Text!="")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  id_txt  from  clogin_detail where email_txt='" + TextBox3.Text + "'";
            SqlDataReader dr1,dr4;
            dr1 = m.ExecuteReader();
            if (dr1.Read())
            {
                dr1.Close();
                TextBox8.Text = "Email Id already exisist";
            }
            else
            {
                dr1.Close();
                m.CommandText = "select  id_txt  from  clogin_detail where Username_txt='" + uname.Text + "'";
                dr4 = m.ExecuteReader();
                if (dr4.Read())
                {
                    dr4.Close();
                    TextBox8.Text = "User Id already exisist";
                }
                else
                {
                    dr4.Close();
                    m.CommandText = "select  max(id_txt)  from  clogin_detail";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    dr.Read();
                    m.CommandText = "insert into clogin_detail values(@id_txt,@Client_number,@branch_txt,@co_name_txt,@DrCity1,@add_txt,@email_txt,@t_n2,@t_n_o2,@phone2,@mobile2,@website2,@c_point_txt2,@desi_txt2,@size_txt2,@branches_txt2,@emp1_txt2,@username_txt,@password_txt,@terms_txt,@start_date,@end_date,@auth_txt,@mail_auth,@rs_auth,@mfs_auth,@jp_auth,@dev_by)";


                    m.Parameters.AddWithValue("@id_txt", Int32.Parse(dr[0].ToString()) + 1);
                    dr.Close();
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
                    m.Parameters.AddWithValue("@username_txt", uname.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@password_txt", password.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@terms_txt", "Terms");
                    m.Parameters.AddWithValue("@start_date", DateTime.Now.ToString());
                    m.Parameters.AddWithValue("@end_date", DateTime.Now.ToString());
                    m.Parameters.AddWithValue("@auth_txt", 1);
                    m.Parameters.AddWithValue("@mail_auth", 1);
                    m.Parameters.AddWithValue("@rs_auth", 1);
                    m.Parameters.AddWithValue("@mfs_auth", 1);
                    m.Parameters.AddWithValue("@jp_auth", 1);
                    m.Parameters.AddWithValue("@dev_by", "Admin");



                    m.ExecuteNonQuery();

                    c.Close();
                    //mail(TextBox1.Text, TextBox3.Text);
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
                    Label1.Text = "";
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Account  Successfully create.')", true);
                }
            }
        }
        else
        {

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  id_txt  from  clogin_detail where email_txt='" + TextBox3.Text + "'";
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

    public void mail(string to, string name)
    {
        MailMessage msgMail = new MailMessage();

        msgMail.To = to;
        msgMail.From = "admin@theitheaven.com";
        msgMail.Subject = "new password";

        msgMail.BodyFormat = MailFormat.Html;
        //msgMail.Body = "Dear sir="+name+"    your user id is="+uid+"  and password="+pass;
        //msgMail.Attachments.Add(new MailAttachment(Server.MapPath("SimpleMail.aspx")));
        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr>"+
    "<td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC>     <tr><td> bgcolor=#ce5039 height=10></td>"+
          "</tr><tr><td>            Dear"+ name+" , <br><p align=justify>Thank you for registering with Suvidha Jobs.</p>"+
            "<p align=justify>Your account will be activated within 24 Hours. Our representative will contact you.<br>"+
              "<br></p></td></tr><tr><td></td></tr><tr> <td></td></tr><tr><td bgcolor=#f6e2c1>For any Queries, call  +91 9674245433, 9674926708"+

 "or e-mail us at accounting.knowledge@gmail.com</td>        </tr><tr><td></td></tr><tr>"+
            "<td>We look forward to a long and fruitful association with you. <br>   <br>With regards.<br>Team Suvidha Jobs</td>"+
          "</tr><tr> <td></td></tr><tr><td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td>"+
          "</tr></table></td> </tr></table><br></body></html>";

        SmtpMail.Send(msgMail);



    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
