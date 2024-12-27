using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Mail;
using System.Data;
using System.Threading;
using System.Net;
using System.Net.Mail;
using System.IO;

public partial class PostResume1 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    TimeSpan ts = new TimeSpan(+5, +30, 0);
    string ch1="NO",ch2="NO",ch3="NO",ch4="NO",ch5="NO",ch6="NO",ch7="NO",ch8="NO",ch9="NO";
    General g1 = new General();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

       /* string handler = this.GetPostBackEventReference(this.Check_User, "");
        string handler1 = this.GetPostBackEventReference(this.Button2, "");
        TextBox1.Attributes.Add("onblur", handler);
        TextBox8.Attributes.Add("onblur", handler1); */


        if (!IsPostBack)
        {
            ListBox1.SelectedValue = "Select";
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
            if (TextBox71.Text.ToString().Trim().Replace("'", "''") != Session["Captcha"].ToString())
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
    string chk1 = "";
    public string listfind(ListBox lst)
    {
        int i1 = lst.Items.Count;
        //if (i1 > 3)
        //{
        //    chk1 = "you  have  to select  atleast 3";
        //}
        //else
        //{
        chk1 = String.Empty;
        for (int i = 0; i < lst.Items.Count; i++)
        {
            if (lst.Items[i].Selected == true)
            {
                chk1 += lst.Items[i].Value + ", ";
            }

            else
            {
                //   chk1 = "";
            }

        }
        if (chk1 != "")
        {
            chk1 = chk1.Remove(chk1.Length - 2);
        }
        //}

        return chk1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        if (TextBox1.Text.ToString().Trim().Replace("'", "''") != "" && TextBox2.Text.ToString().Trim().Replace("'", "''") != "" && TextBox3.Text.ToString().Trim().Replace("'", "''") != "" && TextBox8.Text.ToString().Trim().Replace("'", "''") != "" && TextBox10.Text.ToString().Trim().Replace("'", "''") != "" && TextBox70.Text.ToString().Trim().Replace("'", "''") != "" && TextBox14.Text.ToString().Trim().Replace("'", "''") != "" && DropDownList10.Text.ToString().Trim().Replace("'", "''") != "Select" && TextBox23.Text.ToString().Trim().Replace("'", "''") != "" && TextBox19.Text.ToString().Trim().Replace("'", "''") != "" && DropDownList1.Text.ToString().Trim().Replace("'", "''") != "Select" && DropDownList2.Text.ToString().Trim().Replace("'", "''") != "Select" && DropDownList3.Text.ToString().Trim().Replace("'", "''") != "Select" && DropDownList4.Text.ToString().Trim().Replace("'", "''") != "Select" && TextBox71.Text.ToString().Trim().Replace("'", "''") != "" && TextBox12.Text.ToString().Trim().Replace("'", "''") != "" && ListBox3.SelectedValue != "Select")
        {
            if (!Page.IsValid)
            {
                return;
            }
            else
            {
                SetVerificationText();

                if (TextBox2.Text== TextBox70.Text.ToString().Trim().Replace("'", "''"))
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;

                    m.CommandText = "select  id_txt  from  pyr_master where user_txt='" + TextBox1.Text.ToString().Trim().Replace("'", "''") + "'";
                    SqlDataReader dr, dr1, dr2;
                    dr1 = m.ExecuteReader();
                    if (dr1.Read())
                    {
                        dr1.Close();
                        TextBox1.Text= "already exisist.";
                    }
                    else
                    {
                        dr1.Close();


                        m.CommandText = "select  count(id_txt)  from  pyr_master";

                        dr = m.ExecuteReader();
                        dr.Read();
                        if (Int32.Parse(dr[0].ToString()) == 0)
                        {
                            id = 1;
                            dr.Close();
                        }
                        else
                        {
                            dr.Close();

                            m.CommandText = "select  max(id_txt)  from  pyr_master";

                            dr2 = m.ExecuteReader();
                            dr2.Read();
                            id = Int32.Parse(dr2[0].ToString());
                            id = id + 1;
                            dr2.Close();
                        }
                        string lst1 = listfind(ListBox3);
                        string lst4 = listfind(ListBox4);

                        string lst5 = listfind(lstprefer);


                        if (!lst1.Contains("Select"))
                        {
                       
                            m.CommandText = "insert into pyr_master values(@id_txt,@user_txt,@pass_txt,@name_txt,@sex_txt,@date_txt,@month_txt,@year_txt,@ms_txt,@email_txt,@add_txt,@cloc_txt,@pre_txt,@s_country,@tel_txt,@mob_txt,@in_txt,@yq_txt,@t_n,@t_no_txt,@f_n,@exp_txt,@ks_txt,@aq_txt,@pq_txt,@aqo_txt,@pqo_txt,@res_til_txt,@curr_emp_txt,@curr_des_txt,@curr_emp_from_txt,@curr_emp_to_txt,@job_res_txt,@pre_emp_txt,@pre_des_txt,@pre_emp_from_txt,@ctc_txt,@summery_txt,@jt_txt,@es_txt,@lan1_txt,@lan2_txt,@lan3_txt,@lan1_r_txt,@lan1_w_txt,@lan1_s_txt,@lan2_r_txt,@lan2_w_txt,@lan2_s_txt,@lan3_r_txt,@lan3_w_txt,@lan3_s_txt,@ref_n_txt,@ref_co_txt,@ref_d_txt,@ref_rr_txt,@ref_phone_txt,@ref_email_txt,@File_Name,@File_Size,@File_Data,@Content_Type,@update_date,@Status_txt,@resume_view_txt,@communic,@presentation,@relevent,@remarks,@rsposted,@source,@crt_date,@lastlog_date)";
                            m.Parameters.AddWithValue("@id_txt", id);
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
                            m.Parameters.AddWithValue("@pre_txt", lst5);
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
                            m.Parameters.AddWithValue("@aq_txt", lst1);

                            m.Parameters.AddWithValue("@pq_txt", lst4);
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
                            m.Parameters.AddWithValue("@Content_Type", "Application/word");
                            m.Parameters.AddWithValue("@update_date", DateTime.Now.Date.Add(ts).ToShortDateString());
                            m.Parameters.AddWithValue("@Status_txt", 0);
                            m.Parameters.AddWithValue("@resume_view_txt", 0);
                            m.Parameters.AddWithValue("@communic", 0);
                            m.Parameters.AddWithValue("@presentation", 0);
                            m.Parameters.AddWithValue("@relevent", 0);
                            m.Parameters.AddWithValue("@remarks", string.Empty);
                            m.Parameters.AddWithValue("@rsposted", "Select");
                            m.Parameters.AddWithValue("@source", 0);
                            m.Parameters.AddWithValue("@crt_date", DateTime.Now.Date.Add(ts).ToShortDateString());
                            m.Parameters.AddWithValue("@lastlog_date", DateTime.Now.Date.Add(ts).ToShortDateString());
                            /* string reg = "";
                             m.Parameters.AddWithValue("@reg_no", reg);
                             m.Parameters.AddWithValue("@last_login", DateTime.Now.Date);
                             m.Parameters.AddWithValue("@download_view", 0);
                             * */
                            m.ExecuteNonQuery();
                            mail(TextBox8.Text.ToString().Trim().Replace("'", "''"), TextBox3.Text.ToString().Trim().Replace("'", "''"), TextBox1.Text.ToString().Trim().Replace("'", "''"), TextBox2.Text.ToString().Trim().Replace("'", "''"));
                            Session["user_txt"] = TextBox1.Text.ToString().Trim().Replace("'", "''");
                            Session["id_txt"] = id.ToString();
                            Response.Redirect("Overview_Form.aspx");


                        }
                        else
                        {

                           ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Mandatory Fields should not be  blanked  or choosen 'Select'')", true);
                        }
                        c.Close();
                        TextBox1.Text = "";
TextBox2.Text = "";
TextBox3.Text = "";
// TextBox5.Text = "";


TextBox8.Text = "";

TextBox10.Text = "";
TextBox11.Text = "";
TextBox12.Text = "";
//TextBox13.Text = "";
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

TextBox34.Text = "";



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
                    //Label4.Text= "password is not same.";
                    //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('password is not same in confirm box.please check.')", true);
                    ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Password is not same in confirm box, Please check');</script>");
                    TextBox71.Text = "";

                }
            }
        }

        else
        {
           // ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('All criteria are not fill up.please follow the * mark.');</script>");
            TextBox71.Text = "";
        }

            
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    public void check_user()
    {

        if (TextBox1.Text.ToString().Trim().Replace("'", "''") != "")
        {
        //    string handler = this.GetPostBackEventReference(this.Check_User, "");
           
          //  TextBox1.Attributes.Add("onblur", handler);

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  id_txt  from  pyr_master where user_txt='" + TextBox1.Text.ToString().Trim().Replace("'", "''") + "'";
            SqlDataReader dr;
            dr = m.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Label2.Text= "Not available.";
                Label2.ForeColor = Color.Red;
            }
            else
            {
                Label2.Text= "Available";
                Label2.ForeColor = Color.Green;
                dr.Close();
            }
        }
        else
        {
            Label2.Text= "Enter some text.";
        }

    }
    protected void Check_User_Click(object sender, EventArgs e)
    {
        Thread.Sleep(1000);
        check_user();
    }
    protected void Check_Email_Click(object sender, EventArgs e)
    {
       
    }
    
    public void check_mail()
    {
        if (TextBox8.Text.ToString().Trim().Replace("'", "''") != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  id_txt  from  pyr_master where email_txt='" + TextBox8.Text.ToString().Trim().Replace("'", "''") + "'";
            SqlDataReader dr;
            dr = m.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                Label3.Text= "Not available.";
                Label3.ForeColor = Color.Red;
            }
            else
            {
                Label3.Text= "Available.";
                Label3.ForeColor = Color.Green;
                dr.Close();
            }
        }
        else
        {
            Label3.Text= "Enter Email Id.";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        check_mail();
    }
    protected void TextBox30_TextChanged(object sender, EventArgs e)
    {

    }


public void mail(string recipientEmail, string recipientName, string userId, string password)
{
    // Create the email message
    System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();  // Fully qualify the MailMessage type
mailMessage.From = new MailAddress("noreply@suvidhajobs.in", "Suvidhajobs");
    mailMessage.To.Add(new MailAddress(recipientEmail));
    mailMessage.Subject = "Welcome to Suvidhajobs.in";
    mailMessage.IsBodyHtml = true;
    mailMessage.Body = 
        "<html>" +
        "    <body>" +
        "        <table border='1' cellpadding='5' cellspacing='0' bordercolor='#CCCCCC'>" +
        "            <tr>" +
        "                <td>" +
        "                    <table border='1' cellpadding='5' cellspacing='0' bordercolor='#CCCCCC'>" +
        "                        <tr>" +
        "                            <td bgcolor='#ce5039' height='10'></td>" +
        "                        </tr>" +
        "                        <tr>" +
        "                            <td>" +
        "                                Dear " + recipientName + ",<br>" +
        "                                <p align='justify'>Thank you for registering with Suvidhajobs.</p>" +
        "                                <p align='justify'>Given below are the log-in details of your account:</p>" +
        "                                <table align='center' cellpadding='5' cellspacing='0'>" +
        "                                    <tr>" +
        "                                        <td valign='center' width='183' align='right'>USER ID: </td>" +
        "                                        <td valign='center' width='182' align='left'><strong>" + userId + "</strong></td>" +
        "                                    </tr>" +
        "                                    <tr>" +
        "                                        <td valign='center' width='183' align='right'>Password: </td>" +
        "                                        <td valign='center' width='182' align='left'><strong>" + password + "</strong></td>" +
        "                                    </tr>" +
        "                                </table>" +
        "                            </td>" +
        "                        </tr>" +
        "                        <tr>" +
        "                            <td bgcolor='#f6e2c1'>For any Queries email us at response@suvidhajobs.in</td>" +
        "                        </tr>" +
        "                        <tr>" +
        "                            <td>" +
        "                                We look forward to a long and fruitful association with you.<br><br>" +
        "                                With regards,<br>" +
        "                                Team Suvidhajobs.in" +
        "                            </td>" +
        "                        </tr>" +
        "                        <tr>" +
        "                            <td bgcolor='#425c6e'>" +
        "                                <em>This is an auto-generated mail. Please do not reply.</em>" +
        "                            </td>" +
        "                        </tr>" +
        "                    </table>" +
        "                </td>" +
        "            </tr>" +
        "        </table>" +
        "    </body>" +
        "</html>";

 // Configure the SMTP client
    SmtpClient smtpClient = new SmtpClient("mail5002.site4now.net");
    smtpClient.Port = 25; // Use the port your SMTP server requires
    smtpClient.Credentials = new NetworkCredential("noreply@suvidhajobs.in", "Norp@4521*");
    smtpClient.EnableSsl = false; // Enable SSL if required

    try
    {
        // Send the email
        smtpClient.Send(mailMessage);
        Console.WriteLine("Email sent successfully.");
    }
    catch (Exception ex)
    {
        // Log or handle the error
        Console.WriteLine("Error sending email: " + ex.Message);
        throw;
    }
}




    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        Thread.Sleep(1000);
        //c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        //c.Open();
        //m.Connection = c;
        //m.CommandText = "select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.ToString() + "'";
        //SqlDataReader dr;
        //dr = m.ExecuteReader();
        //dr.Read();

        //m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        //dr.Close();
        //SqlDataAdapter dap = new SqlDataAdapter(m);
        //DataSet ds = new DataSet();
        //dap.Fill(ds, "subfun");
        //DropDownList9.DataSource = ds.Tables["subfun"];
        //DropDownList9.DataTextField = "subname";
        //DropDownList9.DataValueField = "subname";
        //DropDownList9.DataBind();
        //if (DropDownList9.Items.Count == 0)
        //{
        //    //DropDownList9.Items.Add("Not Applicable");
        //    //DropDownList9.Text= "Not Applicable.";
        //}
        //c.Close();

        string s = g1.reterive_val("select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.ToString() + "'");

        dt = g1.return_dt("select  subname from subfun where funid=" + s);
        DropDownList9.DataSource = dt;
        DropDownList9.DataTextField = "subname";
        DropDownList9.DataValueField = "subname";
        DropDownList9.DataBind();
    }


   
    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                // Check file extension
                string fileExtension = Path.GetExtension(FileUploadControl.FileName).ToLower();
                if (fileExtension == ".pdf" || fileExtension == ".doc" || fileExtension == ".docx")
                {
                    // Validate MIME type
                    string mimeType = FileUploadControl.PostedFile.ContentType;
                    if (mimeType == "application/pdf" ||
                        mimeType == "application/msword" ||
                        mimeType == "application/vnd.openxmlformats-officedocument.wordprocessingml.document")
                    {
                        // Validate file content
                        if (ValidateFileContent(FileUploadControl.PostedFile, fileExtension))
                        {
                            // Define the folder path to save the file
                            string folderPath = Server.MapPath("~/UploadedFiles/");
                            if (!Directory.Exists(folderPath))
                            {
                                Directory.CreateDirectory(folderPath);
                            }

                            // Save the file securely
                            string filePath = folderPath + Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(filePath);

                            StatusLabel.Text = "File uploaded successfully!";
                        }
                        else
                        {
                            StatusLabel.Text = "The uploaded file content does not match the selected file type.";
                        }
                    }
                    else
                    {
                        StatusLabel.Text = "Invalid file type. Only PDF and Word documents are allowed.";
                    }
                }
                else
                {
                    StatusLabel.Text = "Invalid file extension. Only .pdf, .doc, and .docx files are allowed.";
                }
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Error: " + ex.Message;
            }
        }
        else
        {
            StatusLabel.Text = "Please select a file to upload.";
        }
    }

    // Validate file content based on file extension
    private bool ValidateFileContent(HttpPostedFile file, string fileExtension)
    {
        byte[] fileBytes = new byte[4]; // Read the first 4 bytes
        file.InputStream.Read(fileBytes, 0, 4);

        string fileHeader = BitConverter.ToString(fileBytes).Replace("-", string.Empty);

        // File header validation for PDF and Word documents
        if (fileExtension == ".pdf" && fileHeader.StartsWith("25504446")) // PDF header: %PDF
        {
            return true;
        }
        else if ((fileExtension == ".doc" && fileHeader.StartsWith("D0CF11E0")) || // DOC header
                 (fileExtension == ".docx" && fileHeader.StartsWith("504B0304")))  // DOCX header
        {
            return true;
        }

        return false; // Invalid content
    }
}
