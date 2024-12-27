using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI.WebControls;
using System.IO;

namespace SendMailLibrary
{
    public class SendEMail
    {
        /// <summary>
        /// get or set user email id of the hosting domain
        /// </summary>
        public string UserId { get; set; }
        /// <summary>
        /// get or set password of the hosting domain
        /// </summary>
        public string Password { get; set; }
        /// <summary>
        /// get or set host name of smtp client
        /// </summary>
        public string HostName { get; set; }
        /// <summary>
        /// get or set port number of smtp client
        /// </summary>
        public int Port { get; set; }
        /// <summary>
        /// this method is used to send mail
        /// </summary>
        /// <param name="from">from: give email id</param>
        /// <param name="to">to: give email id</param>
        /// <param name="subject">subject: subject name</param>
        /// <param name="body">body: email body</param>
        /// <param name="cc">cc: provide cc email id</param>
        /// <param name="bcc">bcc: provide bcc email id</param>
        /// <param name="attachment">attachment: uploaded file</param>
        public void SendMail(string from, string to, string subject, string body, string cc, string bcc, FileUpload attachment)
        {
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = subject;
                mm.Body = body;
                if (cc != "")
                    mm.CC.Add(cc);
                if (attachment.HasFile)
                {
                    string FileName = Path.GetFileName(attachment.PostedFile.FileName);
                    mm.Attachments.Add(new Attachment(attachment.PostedFile.InputStream, FileName));
                }
                if (bcc != "")
                {
                    string[] bccc = bcc.Split(',');
                    foreach (var x in bccc)
                    {
                        mm.Bcc.Add(x);
                    }
                }
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                if (UserId != null && Password != null)
                {
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(UserId, Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    mm.Priority = MailPriority.High;

                    mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                }
                if (Port != 0)
                {
                    smtp.Port = Port;
                }
                smtp.Host = HostName;
                smtp.Send(mm);
            }

        }
        public bool SendMail1(string from, string to, string subject, string body,string path)
        {
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = subject;
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                mm.Attachments.Add(new Attachment(path));
                if (UserId != null && Password != null)
                {
                    smtp.EnableSsl = false;
                    NetworkCredential NetworkCred = new NetworkCredential(UserId, Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    mm.Priority = MailPriority.High;
                    mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                }
                if (Port != 0)
                {
                    smtp.Port = Port;
                }
                smtp.Host = HostName;
                smtp.Send(mm);
                return true;
            }

        }
        /// <summary>
        /// this method is used to send mail
        /// </summary>
        /// <param name="from">from: give email id</param>
        /// <param name="to">to: give email id</param>
        /// <param name="subject">subject: subject name</param>
        /// <param name="body">body: email body</param>
        /// <param name="cc">cc: provide cc email id</param>
        /// <param name="bcc">bcc: provide bcc email id</param>
        public void SendMail(string from, string to, string subject, string body, string cc, string bcc)
        {
            MailAddress from1 = new MailAddress(from, "starcomp");
            MailAddress to1 = new MailAddress(to, to);
            using (MailMessage mm = new MailMessage(from1, to1))
            {
                mm.Subject = subject;
                mm.Body = body;
                mm.CC.Add(cc);
                if (bcc != "")
                {
                    string[] bccc = bcc.Split(',');
                    foreach (var x in bccc)
                    {
                        mm.Bcc.Add(x);
                    }
                }
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                if (UserId != null && Password != null)
                {
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(UserId, Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    mm.Priority = MailPriority.High;

                    mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                }
                if (Port != 0)
                {
                    smtp.Port = Port;
                }
                smtp.Host = HostName;
                smtp.Send(mm);
            }

        }
        /// <summary>
        /// this method is used to send mail
        /// </summary>
        /// <param name="from">from: give email id</param>
        /// <param name="to">to: give email id</param>
        /// <param name="subject">subject: subject name</param>
        /// <param name="body">body: email body</param>
        /// <param name="cc">cc: provide cc email id</param>
        public void SendMail(string from, string to, string subject, string body, string cc)
        {
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = subject;
                mm.Body = body;
                mm.CC.Add(cc);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                if (UserId != null && Password != null)
                {
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(UserId, Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    mm.Priority = MailPriority.High;
                    mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                }
                if (Port != 0)
                {
                    smtp.Port = Port;
                }
                smtp.Host = HostName;
                smtp.Send(mm);
            }

        }
        /// <summary>
        /// this method is used to send mail
        /// </summary>
        /// <param name="from">from: give email id</param>
        /// <param name="to">to: give email id</param>
        /// <param name="subject">subject: subject name</param>
        /// <param name="body">body: email body</param>
        public bool SendMail(string from, string to, string subject, string body)
        {
            using (MailMessage mm = new MailMessage(from, to))
            {
                mm.Subject = subject;
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                if (UserId != null && Password != null)
                {
                    smtp.EnableSsl = false;
                    NetworkCredential NetworkCred = new NetworkCredential(UserId, Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    mm.Priority = MailPriority.High;
                    mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                }
                if (Port != 0)
                {
                    smtp.Port = Port;
                }
                smtp.Host = HostName;
                smtp.Send(mm);
                return true;
            }

        }
    }
}
