using System;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblMessage.Visible = false;  // Ensure the message label is hidden on initial load.
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "" && txtSubject.Text != "" && txtMail.Text != "" && txtHelp.Text != "")
        {
            try
            {
                string to = "response@suvidhajobs.in"; // To address
                string from = "noreply@suvidhajobs.in"; // From address
                MailMessage message = new MailMessage(from, to);

                // Email body content
                string mailbody = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td>" +
                                  "<table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td></tr><tr><td>" +
                                  "Dear Sir,<br><p align=justify> </p>" +
                                  "<p align=justify>Here is the name of the applicant " + txtName.Text + " who is trying to contact you.</p>" +
                                  "<table align=center cellpadding=5 cellspacing=0><tr><td valign=center width=183 align=right>" +
                                  "<td valign=center width=183 align=right>Name : </td><td valign=center width=182 align=left><strong>" + txtName.Text + "</strong></td></tr><tr>" +
                                  "<td valign=center width=183 align=right>Email : </td><td valign=center width=182 align=left><strong>" + txtMail.Text + "</strong></td></tr><tr>" +
                                  "<td valign=center width=183 align=right>Subject : </td><td valign=center width=182 align=left><strong>" + txtSubject.Text + "</strong></td></tr><tr>" +
                                  "<td valign=center width=183 align=right>Message: </td><td valign=center width=182 align=left><strong>" + txtHelp.Text + "</strong></td></tr></table></td></tr>" +
                                  "</table><br></body></html>";

                message.Subject = "Enquiry from website Suvidhajobs.in";
                message.Body = mailbody;

                message.BodyEncoding = System.Text.Encoding.UTF8;
                message.IsBodyHtml = true;

                // Send the email
                SmtpClient client = new SmtpClient("mail5002.site4now.net", 25); // SMTP server address and port
                client.Credentials = new NetworkCredential("noreply@suvidhajobs.in", "Norp@4521*");
                client.EnableSsl = false;

                // Send the message
                client.Send(message);

                // Clear the form fields
                txtName.Text = "";
                txtMail.Text = "";
                txtSubject.Text = "";
                txtHelp.Text = "";

                // Display success message
                lblMessage.Text = "Your mail has been sent successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Visible = true;

            }
            catch (SmtpException smtpEx)
            {
                // Handle SMTP exception
                lblMessage.Text = "" + smtpEx.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }
            catch (Exception ex)
            {
                // Handle general exception
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }
        }
        else
        {
            // Handle case when not all fields are filled
            lblMessage.Text = "Please fill up all mandatory fields.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true;
        }
    }
}
