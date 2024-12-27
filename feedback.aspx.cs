using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Mail;

public partial class _feedback : System.Web.UI.Page 
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

        Session["email1"] = Request.QueryString["email"];

    }

    public void mail(string org, string name1, string street,string city,string pin,string country1,string email1,string phone1,string fax1,string search1,string content)
    {
        MailMessage msgMail = new MailMessage();
      

        msgMail.To = "response@suvidhajobs.in";
        msgMail.From = "admin@suvidhajobs.in";
        msgMail.Subject = "Feedback from suvidhajobs.in";

        msgMail.BodyFormat = MailFormat.Html;
        
        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                      "Dear Sir" + ",<br><p align=justify> </p>" +
                     "<p align=justify>Given below are the Feedback details.</p>" +
                     "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right><tr>" +
                        "<td valign=center width=183 align=right>Nmae : </td><td valign=center width=182 align=left><strong>" + name1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Organization : </td><td valign=center width=182 align=left><strong>" + org + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Street Address : </td><td valign=center width=182 align=left><strong>" + street + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>City : </td><td valign=center width=182 align=left><strong>" + city + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Pin : </td><td valign=center width=182 align=left><strong>" + pin + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Email : </td><td valign=center width=182 align=left><strong>" + email1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Country : </td><td valign=center width=182 align=left><strong>" + country1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Phone : </td><td valign=center width=182 align=left><strong>" + phone1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Fax : </td><td valign=center width=182 align=left><strong>" + fax1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Find from : </td><td valign=center width=182 align=left><strong>" + search1 + "</strong></td></tr><tr>" +
                        "<td valign=center width=183 align=right>Message : </td><td valign=center width=182 align=left><strong>" + content + "</strong></td></tr></table></td></tr>" +
                   "<tr><td></td> </tr><tr><td></td></tr><tr><td bgcolor=#f6e2c1></td></tr>" +
                   "<tr><td></td></tr><tr><td>We look forward to a long and fruitful association with you. <br><br>Thanks for choosing us. <br><br>Sincerely, <br>Team Suvidhajobs.in</td></tr><tr><td></td></tr><tr>" +
                     "<td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr></table></td></tr></table><br></body></html>";

        SmtpMail.Send(msgMail);


      

        S_organization.Text = "";
        S_city.Text = "";
        S_pin.Text = "";
        name.Text = "";
        phone.Text = "";
        fax.Text="";
        email.Text="";
        country.SelectedValue="---Choose One---";
        search.SelectedValue = "Select";
        TextBox1.Text = "";
        S_streetaddress.Text = "";

        ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Thank you for contact us.');</script>");



    }



    protected void send_Click(object sender, EventArgs e)
    {
        if (name.Text != "" && phone.Text != "" && email.Text != "" && country.Text != "---Choose One---" && TextBox1.Text!="")
        {

            mail(S_organization.Text, name.Text, S_streetaddress.Text, S_city.Text, S_pin.Text, country.Text, email.Text, phone.Text, fax.Text, search.SelectedValue, TextBox1.Text);


          
        }
        else
        {

            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('All criteria are not fill up. Please follow the * mark.');</script>");


        }
    }

    protected void reset_Click(object sender, EventArgs e)
    {

        S_organization.Text = "";
        S_city.Text = "";
        S_pin.Text = "";
        name.Text = "";
        phone.Text = "";
        fax.Text = "";
        email.Text = "";
        country.SelectedValue = "---Choose One---";
        search.SelectedValue = "Select";
        TextBox1.Text = "";
        S_streetaddress.Text = "";

    }
}
