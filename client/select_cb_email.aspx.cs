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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cvsearch_id"] == null)
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
            m.CommandText = "update  cvsearch_num set remain= remain - " + Int32.Parse(star1.Count().ToString()) + "  where id=" + Session["cvsearch_id"];
            m.ExecuteNonQuery();

            m.CommandText = "update  cvsearch_num set spend= spend + " + Int32.Parse(star1.Count().ToString()) + "  where id=" + Session["cvsearch_id"];
            m.ExecuteNonQuery();

            m.CommandText = "update  login_det set searh_num= searh_num + " + Int32.Parse(star1.Count().ToString()) + " where id=" + Session["login_det_id"];
            m.ExecuteNonQuery();

            c.Close();
            Session["cv_num"] = Int32.Parse(Session["cv_num"].ToString()) - Int32.Parse(star1.Count().ToString());
            for (int i = 0; i < star1.Count(); i++)
            {
                mail(star1[i].ToString(), Editor2.Content, subject.Text, star2[i].ToString());
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
        msgMail.Body = "<table width=773  border=1 align=center cellpadding=0 cellspacing=0 bordercolor=cd0065><tr><td><div align=center><table width=100%  border=0 cellspacing=0 cellpadding=0><tr><td><img src=http://www.rahulcomputex.com/mass_email/images2/header.jpg width=773 height=146 border=0 usemap=#Map href=http://www.rahulcomputex.com/rcpl_login.asp></td></tr><tr>" +
         "<td><table width=95%  border=0 align=center cellpadding=0 cellspacing=0>" +
           "<tr><td>Dear : " + name1 + "<br><br>" +
                 mes +

      "</td></tr></table></td></tr><tr><td height=34 valign=top background=http://www.rahulcomputex.com/mass_email/images2/bottom.jpg><table width=95%  border=0 align=center cellpadding=0 cellspacing=0><tr><td width=33% height=30><div align=center><span class=style3>Phone: 91 33 22132473</span></div></td><td width=34%><div align=center><span class=style3>Fax: 91 33 22132987</span></div></td><td width=33%><div align=center><span class=style3>Email: sales@rahulcomputex.com </span></div></td></tr></table></td></tr></table></div></td></tr></table>" +
"<map name=Map><area shape=rect coords=202,61,311,87 href=http://www.rahulcomputex.com target=_blank> <area shape=rect coords=312,62,421,89 href=http://www.rahulcomputex.com/profile.asp target=_blank> <area shape=rect coords=426,61,536,90 href=http://www.rahulcomputex.com/network.asp target=_blank> <area shape=rect coords=539,62,647,89 href=mailto:sales@rahulcomputex.com> <area shape=rect coords=650,63,762,90 href=http://www.rahulcomputex.com/rcpl_login.asp target=_blank></map>";

        SmtpMail.Send(msgMail);



    }
}
