using System;
using System.Collections;
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

public partial class select_cb_email : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    public string total;
    string st1 = "", st2 = "";
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Employer_Login.aspx");

        }
        else
        {
            if (!IsPostBack)
            {
                st1 = Session["cb_email"].ToString();
                string[] star1 = st1.Split(',');
                total = star1.Count().ToString();
               
            }
        }
    }
    protected void send_Click(object sender, EventArgs e)
    {
        if (Session["cb_email"] != null)
        {
            if (Editor2.Content != "" && subject.Text != "")
            {
                Editor2.Content = Editor2.Content.Replace("'", "&rsquo;");

                st1 = Session["cb_email"].ToString();
                string[] star1 = st1.Split(',');
                st2 = Session["cb_name"].ToString();
                string[] star2 = st2.Split(',');

                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                SqlDataReader dr, dr2;
                m.CommandText = "select  count(id)  from sent_email";

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
                    m.CommandText = "select  max(id)  from  sent_email";
                    dr2 = m.ExecuteReader();
                    dr2.Read();
                    id = Int32.Parse(dr2[0].ToString());
                    id = id + 1;
                    dr2.Close();

                }

                m.CommandText = "update  clogin_detail set email_remain = email_remain - " + Int32.Parse(star1.Count().ToString()) + ",email_spend = email_spend + " + Int32.Parse(star1.Count().ToString()) + "   where id_txt=" + Session["Client_number"];
                m.ExecuteNonQuery();

                m.CommandText = "update  login_det set email_num= email_num + " + Int32.Parse(star1.Count().ToString()) + " where id=" + Session["login_det_id"];
                m.ExecuteNonQuery();

                Session["email_num"] = Int32.Parse(Session["email_num"].ToString()) - Int32.Parse(star1.Count().ToString());

                TimeSpan ts = new TimeSpan(+5, +30, 0);
               
                for (int i = 0; i < star1.Count(); i++)
                {
                    mail(star1[i].ToString(), Editor2.Content, subject.Text, star2[i].ToString());
                    m.CommandText = "insert into sent_email values(" + id + ",'" + star2[i].ToString() + "','" + star1[i].ToString() + "','" + subject.Text + "','" + Editor2.Content + "'," + Int32.Parse(Session["Client_number"].ToString()) + ",'" + DateTime.Now.Date.Add(ts).Date + "')";
                    m.ExecuteNonQuery();
                    id += 1;

                }
                c.Close();
                Editor2.Content = "";
                subject.Text = "";

                Label1.Text = "Successfully email sent.";
                
                total = star1.Count().ToString();

            }
        }
    }

    public void mail(string mailto, string mes, string subject, string name1)
    {

        MailMessage msgMail = new MailMessage();
        msgMail.To = mailto;
        msgMail.From = "admin@suvidhajobs.in";
        msgMail.Subject = subject;
        msgMail.BodyFormat = MailFormat.Html;
        msgMail.Body = name1 +"          " + mes;
        SmtpMail.Send(msgMail);


    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Re");
    }
}
