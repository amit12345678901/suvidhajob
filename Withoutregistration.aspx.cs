using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//using System.Web.Mail;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class Withoutregistration : System.Web.UI.Page
{
    
    string atchmnt = "";
    General g1 = new General();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            indusbind();
            funcation();
        }
    }

    public void funcation()
    {
        dt = g1.return_dt("SELECT * FROM [fun]");
        if (dt.Rows.Count > 0)
        {
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "fun_name";
            DropDownList3.DataValueField = "fun_name";
            DropDownList3.DataBind();

        }
    }

    public void indusbind()
    {
        dt = g1.return_dt("SELECT [ind_name] FROM [industry_master] where [ind_name] is not null");
        if (dt.Rows.Count > 0)
        {
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "ind_name";
            DropDownList1.DataValueField = "ind_name";
            DropDownList1.DataBind();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select" && DropDownList2.SelectedValue != "Select" && DropDownList3.SelectedValue != "Select")
        {
            ////////////
            //Label1.Text = Request.Cookies["positoion"].Value;
            //MailMessage msgMail = new MailMessage();

            //if (Response.Cookies["chkmail"].Value == "1")
            //{
            //    msgMail.To = "career@suvidhajobs.in";
            //}
            //else
            //{
            //    msgMail.To = "response@suvidhajobs.in";
            //}
            //////////////






            //  msgMail.To = "subodhsonthalia@gmail.com";


            //kamal 05-06-21
            //  msgMail.From = "admin@suvidhajobs.in";
            //   msgMail.Subject = "Job application  from  Suvidhajobs.in";


            //////////////
            //msgMail.BodyFormat = MailFormat.Html;
            ////////////


            //msgMail.Body = "Dear sir="+name+"    your user id is="+uid+"  and password="+pass;
            //msgMail.Attachments.Add(new MailAttachment(Server.MapPath("SimpleMail.aspx")));


            ////////////////////
            //msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
            //                  "Dear Sir" + ",<br><p align=justify> </p>" +
            //                 "<p align=justify>Here is the resume of the applicant " + TextBox1.Text + " for the Job Position " + Request.Cookies["positoion"].Value + "</p>" +
            //                 "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right><tr>" +
            //                    "<td valign=center width=183 align=right>Position : </td><td valign=center width=182 align=left><strong>" + Request.Cookies["positoion"].Value + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Jobcode : </td><td valign=center width=182 align=left><strong>" + Request.Cookies["jobcode"].Value + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Name : </td><td valign=center width=182 align=left><strong>" + TextBox1.Text + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Email : </td><td valign=center width=182 align=left><strong>" + TextBox2.Text + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Contact no. : </td><td valign=center width=182 align=left><strong>" + TextBox3.Text + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Current Location : </td><td valign=center width=182 align=left><strong>" + TextBox4.Text + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Total Experience : </td><td valign=center width=182 align=left><strong>" + DropDownList2.SelectedValue + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Industry : </td><td valign=center width=182 align=left><strong>" + DropDownList1.SelectedValue + "</strong></td></tr></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>Functional Area : </td><td valign=center width=182 align=left><strong>" + DropDownList3.SelectedValue + "</strong></td></tr><tr>" +
            //                    "<td valign=center width=183 align=right>KeySkill,Designation : </td><td valign=center width=182 align=left><strong>" + TextBox5.Text + "</strong></td></tr></table></td></tr>" +
            //                    "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1></td></tr>" +
            //                    "</table><br></body></html>";

            //if (FileUpload1.FileName.ToString() != "")
            //{
            //    FileUpload1.SaveAs(Server.MapPath("~/all-picture/atachment/" + FileUpload1.FileName));
            //    MailAttachment attachment = new MailAttachment(Server.MapPath("~/all-picture/atachment/" + FileUpload1.FileName)); //create the attachment
            //    msgMail.Attachments.Add(attachment);
            //}

            //SmtpMail.Send("admin@suvidhajobs.in", "career@suvidhajobs.in", "Job application  from Suvidhajobs.in", "Test");
            //TextBox1.Text = "";
            //TextBox2.Text = "";
            //TextBox3.Text = "";
            //TextBox4.Text = "";
            //TextBox5.Text = "";
            /////////////////

            string to = "response@suvidhajobs.in"; //To address    
            string from = "noreply@suvidhajobs.in"; //From address    
            MailMessage message = new MailMessage(from, to);

            string jobCode = "";
            if (Request.Cookies["jobcode"].Value != "")
            {
                jobCode = "<td valign=center width=183 align=right>Jobcode : </td><td valign=center width=182 align=left><strong>" + Request.Cookies["jobcode"].Value + "</strong></td></tr><tr>";
             }

            string mailbody = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                              "Dear Sir" + ",<br><p align=justify> </p>" +
                             "<p align=justify>Here is the resume of the applicant " + TextBox1.Text + " for the Job Position " + Request.Cookies["positoion"].Value + "</p>" +
                             "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right><tr>" +
                               "<td valign=center width=183 align=right>Position : </td><td valign=center width=182 align=left><strong>" + Request.Cookies["positoion"].Value + "</strong></td></tr><tr>" +
                              jobCode+
                               "<td valign=center width=183 align=right>Name : </td><td valign=center width=182 align=left><strong>" + TextBox1.Text + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Email : </td><td valign=center width=182 align=left><strong>" + TextBox2.Text + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Contact no. : </td><td valign=center width=182 align=left><strong>" + TextBox3.Text + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Current Location : </td><td valign=center width=182 align=left><strong>" + TextBox4.Text + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Total Experience : </td><td valign=center width=182 align=left><strong>" + DropDownList2.SelectedValue + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Industry : </td><td valign=center width=182 align=left><strong>" + DropDownList1.SelectedValue + "</strong></td></tr></td></tr><tr>" +
                                "<td valign=center width=183 align=right>Functional Area : </td><td valign=center width=182 align=left><strong>" + DropDownList3.SelectedValue + "</strong></td></tr><tr>" +
                                "<td valign=center width=183 align=right>KeySkill,Designation : </td><td valign=center width=182 align=left><strong>" + TextBox5.Text + "</strong></td></tr></table></td></tr>" +
                                
                                "</table><br></body></html>";



         
            message.Subject = "Job application  from  Suvidhajobs.in";
            message.Body = mailbody;

         

            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                message.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, fileName));
            }

            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            
            SmtpClient client = new SmtpClient("192.185.129.211", 25); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("noreply@suvidhajobs.in", "Nor4521*");
            client.EnableSsl = false;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }

            catch (Exception ex)
            {
                throw ex;
            }


            Label1.Text = "Your  mail  has  been sent  Successfully";

        }
        else
        {
            Label1.Text = "Please Fillup  all Mandatory Fields";
        }

    }


}
