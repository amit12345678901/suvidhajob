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
using System.IO;
using System.Collections;
using System.Net;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Web.Mail;


public partial class PostResume1 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    string ch1="NO",ch2="NO",ch3="NO",ch4="NO",ch5="NO",ch6="NO",ch7="NO",ch8="NO",ch9="NO";

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


                    if (Convert.ToString(Session["cand_add"]) == "False")
                    {
                        Response.Redirect("Admin_Main.aspx");
                    }
                }

            }
        }

    }
    public void sms(string mobil, string name7, string sms7)
    {
        WebClient web = new WebClient();
        byte[] bufData = null;
        bufData = web.DownloadData("http://125.63.126.187/desk2web/SendSMS.aspx?UserName=meandmy&password=meandmy&MobileNo=" + mobil + "&SenderID= MeandMy&CDMAHeader=MeandMy&Message=Thank you " + name7 + " " + sms7 + "&isFlash=False");


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox8.Text != "" && TextBox10.Text != "" && TextBox70.Text != "" && TextBox14.Text != "" && DropDownList6.Text != "Select" && TextBox23.Text != "" && TextBox19.Text != "")
        {
            if (TextBox2.Text == TextBox70.Text)
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                m.CommandText = "select  id_txt  from  pyr_master where user_txt='" + TextBox1.Text + "'";
                SqlDataReader dr, dr1;
                dr1 = m.ExecuteReader();
                if (dr1.Read())
                {
                    dr1.Close();
                    TextBox1.Text = "Already exist.";
                }
                else
                {
                    dr1.Close();

                    m.CommandText = "select  max(id_txt)  from  pyr_master";

                    dr = m.ExecuteReader();
                    dr.Read();
                    m.CommandText = "insert into pyr_master values(@id_txt,@user_txt,@pass_txt,@name_txt,@sex_txt,@date_txt,@month_txt,@year_txt,@ms_txt,@email_txt,@add_txt,@cloc_txt,@pre_txt,@s_country,@tel_txt,@mob_txt,@in_txt,@yq_txt,@t_n,@t_no_txt,@f_n,@exp_txt,@ks_txt,@aq_txt,@pq_txt,@aqo_txt,@pqo_txt,@res_til_txt,@curr_emp_txt,@curr_des_txt,@curr_emp_from_txt,@curr_emp_to_txt,@job_res_txt,@pre_emp_txt,@pre_des_txt,@pre_emp_from_txt,@pre_emp_to_txt,@ljob_res_txt,@pre_emp_txt2,@pre_emp_from_txt2,@pre_emp_to_txt2,@pre_des_txt2,@ljob_res_txt2,@pre_emp_txt3,@pre_emp_from_txt3,@pre_emp_to_txt3,@pre_des_txt3,@ljob_res_txt3,@ins_txt,@ctc_txt,@summery_txt,@jt_txt,@es_txt,@lan1_txt,@lan2_txt,@lan3_txt,@lan1_r_txt,@lan1_w_txt,@lan1_s_txt,@lan2_r_txt,@lan2_w_txt,@lan2_s_txt,@lan3_r_txt,@lan3_w_txt,@lan3_s_txt,@ref_n_txt,@ref_co_txt,@ref_d_txt,@ref_rr_txt,@ref_phone_txt,@ref_email_txt,@File_Name,@File_Size,@File_Data,@Content_Type,@update_date,@Status_txt,@resume_view_txt)";


                    m.Parameters.AddWithValue("@id_txt", Int32.Parse(dr[0].ToString()) + 1);
                    dr.Close();
                    m.Parameters.AddWithValue("@user_txt", TextBox1.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pass_txt", TextBox2.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@name_txt", TextBox3.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@sex_txt", DropDownList3.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@date_txt", DropDownList1.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@month_txt", DropDownList2.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@year_txt", DropDownList4.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ms_txt", DropDownList10.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@email_txt", TextBox8.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@add_txt", TextBox10.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@cloc_txt", ListBox1.SelectedValue);
                    m.Parameters.AddWithValue("@pre_txt", TextBox13.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@s_country", TextBox14.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@tel_txt", TextBox11.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@mob_txt", TextBox12.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@in_txt", DropDownList8.SelectedValue);
                    m.Parameters.AddWithValue("@yq_txt", DropDownList5.SelectedValue);
                    m.Parameters.AddWithValue("@t_n", DropDownList15.SelectedValue);

                    m.Parameters.AddWithValue("@t_no_txt", TextBox18.Text.ToString().Trim().Replace("'", "''"));
                    if (DropDownList9.Text.ToString().Trim().Replace("'", "''") != "" || DropDownList9.Text.ToString().Trim().Replace("'", "''") != "Not Applicable")
                    {
                        m.Parameters.AddWithValue("@f_n", DropDownList9.SelectedValue);
                    }
                    else
                    {
                        m.Parameters.AddWithValue("@f_n", null);
                    }
                    m.Parameters.AddWithValue("@exp_txt", DropDownList11.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@ks_txt", TextBox19.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@aq_txt", DropDownList6.SelectedValue);

                    m.Parameters.AddWithValue("@pq_txt", DropDownList7.SelectedValue);
                    m.Parameters.AddWithValue("@aqo_txt", TextBox34.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pqo_txt", TextBox22.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@res_til_txt", TextBox23.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@curr_emp_txt", TextBox24.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@curr_des_txt", TextBox25.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@curr_emp_from_txt", TextBox26.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@curr_emp_to_txt", TextBox27.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@job_res_txt", TextBox28.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_txt", TextBox29.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_des_txt", TextBox30.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_from_txt", TextBox31.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_to_txt", TextBox32.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ljob_res_txt", TextBox35.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_txt2", TextBox36.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_from_txt2", TextBox37.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_to_txt2", TextBox38.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_des_txt2", TextBox39.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ljob_res_txt2", TextBox40.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_txt3", TextBox41.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_from_txt3", TextBox42.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_emp_to_txt3", TextBox43.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@pre_des_txt3", TextBox44.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ljob_res_txt3", TextBox45.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ins_txt", TextBox46.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ctc_txt", DropDownList12.SelectedValue);
                    m.Parameters.AddWithValue("@summery_txt", TextBox48.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@jt_txt", DropDownList13.SelectedValue);
                    m.Parameters.AddWithValue("@es_txt", DropDownList14.SelectedValue);
                    m.Parameters.AddWithValue("@lan1_txt", TextBox51.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@lan2_txt", TextBox52.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@lan3_txt", TextBox62.Text.ToString().Trim().Replace("'", "''"));
                    if (CheckBox1.Checked == true)
                    {
                        ch1 = "Yes";
                    }

                    m.Parameters.AddWithValue("@lan1_r_txt", ch1);
                    if (CheckBox2.Checked == true)
                    {
                        ch2 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan1_w_txt", ch2);
                    if (CheckBox3.Checked == true)
                    {
                        ch3 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan1_s_txt", ch3);
                    if (CheckBox4.Checked == true)
                    {
                        ch4 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan2_r_txt", ch4);
                    if (CheckBox5.Checked == true)
                    {
                        ch5 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan2_w_txt", ch5);
                    if (CheckBox6.Checked == true)
                    {
                        ch6 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan2_s_txt", ch6);
                    if (CheckBox7.Checked == true)
                    {
                        ch7 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan3_r_txt", ch7);
                    if (CheckBox8.Checked == true)
                    {
                        ch8 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan3_w_txt", ch8);
                    if (CheckBox9.Checked == true)
                    {
                        ch9 = "Yes";
                    }
                    m.Parameters.AddWithValue("@lan3_s_txt", ch9);
                    m.Parameters.AddWithValue("@ref_n_txt", TextBox63.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ref_co_txt", TextBox64.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ref_d_txt", TextBox65.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ref_rr_txt", TextBox66.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ref_phone_txt", TextBox68.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@ref_email_txt", TextBox69.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@File_Name", "no");
                    m.Parameters.AddWithValue("@File_Size", 0);

                    byte[] data = new byte[0];
                    m.Parameters.AddWithValue("@File_Data", data);
                    m.Parameters.AddWithValue("@Content_Type", "ttyyy");
                    m.Parameters.AddWithValue("@update_date", DateTime.Now.ToString());
                    m.Parameters.AddWithValue("@Status_txt", 0);
                    m.Parameters.AddWithValue("@resume_view_txt", 0);
                  
                    m.ExecuteNonQuery();
                   // mail(TextBox8.Text,TextBox3.Text,TextBox1.Text,TextBox2.Text);

                   // string sms5="Thank You.For any query, please email us ceo@theitheaven.com.";

                   // sms(TextBox12.Text.ToString().Trim().Replace("'", "''"), TextBox3.Text.ToString().Trim().Replace("'", "''"), sms5.ToString());

                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Account successfully created.')", true);
        
                    c.Close();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    // TextBox5.Text = "";


                    TextBox8.Text = "";

                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    TextBox13.Text = "";
                    TextBox14.Text = "";



                    TextBox18.Text = "";
                    TextBox19.Text = "";

                    TextBox22.Text = "";
                    TextBox23.Text = "";
                    TextBox24.Text = "";
                    TextBox25.Text = "";
                    TextBox26.Text = "";
                    TextBox27.Text = "";
                    TextBox28.Text = "";
                    TextBox29.Text = "";
                    TextBox30.Text = "";
                    TextBox31.Text = "";
                    TextBox32.Text = "";

                    TextBox34.Text = "";
                    TextBox35.Text = "";
                    TextBox36.Text = "";
                    TextBox37.Text = "";
                    TextBox38.Text = "";
                    TextBox39.Text = "";
                    TextBox40.Text = "";
                    TextBox41.Text = "";
                    TextBox42.Text = "";
                    TextBox43.Text = "";
                    TextBox44.Text = "";
                    TextBox45.Text = "";
                    TextBox46.Text = "";

                    TextBox48.Text = "";


                    TextBox51.Text = "";
                    TextBox52.Text = "";
                    TextBox52.Text = "";
                    TextBox62.Text = "";
                    TextBox63.Text = "";
                    TextBox64.Text = "";
                    TextBox65.Text = "";
                    TextBox66.Text = "";
                    TextBox68.Text = "";
                    TextBox69.Text = "";
                    CheckBox1.Checked = false;
                    CheckBox2.Checked = false;
                    CheckBox3.Checked = false;
                    CheckBox4.Checked = false;
                    CheckBox5.Checked = false;
                    CheckBox6.Checked = false;
                    CheckBox7.Checked = false;
                    CheckBox8.Checked = false;
                    CheckBox9.Checked = false;
                    Label4.Text = "";
                    Label2.Text = "";
                    Label3.Text = "";
                }
            }
            else
            {
                //Label4.Text = "password is not same.";
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('password is not same in confirm box.please check.')", true);
        

            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
        
        }

       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Check_User_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  id_txt  from  pyr_master where user_txt='"+TextBox1.Text+"'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            Label2.Text = "Not available.";
            Label2.ForeColor = Color.Red;
        }
        else
        {
            Label2.Text = "Available";
            Label2.ForeColor = Color.Green;
            dr.Close();
        }
    }
    protected void Check_Email_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  id_txt  from  pyr_master where email_txt='" + TextBox8.Text + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            Label3.Text = "Not available.";
            Label3.ForeColor = Color.Red;
        }
        else
        {
            Label3.Text = "Available.";
            Label3.ForeColor = Color.Green;
            dr.Close();
        }
    }
    protected void TextBox30_TextChanged(object sender, EventArgs e)
    {

    }

    public void mail(string to, string name, string uid, string pass)
    {
        MailMessage msgMail = new MailMessage();

        msgMail.To = to;
        msgMail.From = "admin@theitheaven.com";
        msgMail.Subject = "new password";

        msgMail.BodyFormat = MailFormat.Html;
        //msgMail.Body = "Dear sir="+name+"    your user id is="+uid+"  and password="+pass;
        //msgMail.Attachments.Add(new MailAttachment(Server.MapPath("SimpleMail.aspx")));
        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC>"+
                      "<tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td>"+
                     " </tr> <tr><td>        Dear"+ name+" , <br><p align=justify>Thank you for registering with Suvidha Jobs.</p>"+
            "<p align=justify>Given below are the log-in details of your account. <table align=center cellpadding=5 cellspacing=0>"+
              "<tr><td valign=center width=183 align=right>USER ID: </td>"+
                "<td valign=center width=182 align=left><strong>"+uid+"</strong></td>"+
              "</tr><tr><td valign=center width=18 align=right>Password : </td>"+
                "<td valign=center width=182 align=left><strong>"+pass+"</strong></td></tr></table></td></tr><tr><td></td>"+
          "</tr><tr><td></td> </tr><td bgcolor=#f6e2c1>For any Queries, call  +91 9674245433, 9674926708 or e-mail us at accounting.knowledge@gmail.com</td>"+
          "</tr>  <tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>With regards.<br> Team Suvidha Jobs</td>"+
          "</tr><tr><td></td></tr><tr><td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr>"+
      "</table></td></tr></table><br></body></html>";

        SmtpMail.Send(msgMail);



    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();

        m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");
        DropDownList9.DataSource = ds.Tables["subfun"];
        DropDownList9.DataTextField = "subname";
        DropDownList9.DataValueField = "subname";
        DropDownList9.DataBind();
        if (DropDownList9.Items.Count == 0)
        {
            //DropDownList9.Text = "Not Applicable.";

            DropDownList9.Items.Add("Not Applicable.");

        }
        c.Close();
    }

}
