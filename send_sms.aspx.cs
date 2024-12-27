using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Sockets;
using System.IO;
using System.Collections;
using System.Web.Security;
using System.Text.RegularExpressions;
using System.Web.Mail;
using System.Net;

public partial class send_sms : System.Web.UI.Page
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
                st1 = Session["mb_num"].ToString();
                string[] star1 = st1.Split(',');
               total = star1.Count().ToString();
              
                
            }
        }
    }

    public void sms(string mobil, string name7, string sms7)
    {
         WebClient web = new WebClient();
         byte[] bufData = null;
        bufData = web.DownloadData("http://125.63.126.187/desk2web/SendSMS.aspx?UserName=meandmy&password=meandmy&MobileNo=" + mobil + "&SenderID= MeandMy&CDMAHeader=MeandMy&Message=Thank you " + name7 + " " + sms7 + "&isFlash=False");

        
    }

    protected void send_Click(object sender, EventArgs e)
    {

        if (subject.Text != "")
        {
            
            st1 = Session["mb_num"].ToString();
            string[] star1 = st1.Split(',');
            st2 = Session["cb_name"].ToString();
            string[] star2 = st2.Split(',');

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            SqlDataReader dr, dr2;
            m.CommandText = "select  count(id)  from sent_sms";

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
                m.CommandText = "select  max(id)  from  sent_sms";
                dr2 = m.ExecuteReader();
                dr2.Read();
                id = Int32.Parse(dr2[0].ToString());
                id = id + 1;
                dr2.Close();

            }

            m.CommandText = "update  clogin_detail set sms_remain = sms_remain - " + Int32.Parse(star1.Count().ToString()) + ",sms_spend = sms_spend + " + Int32.Parse(star1.Count().ToString()) + "   where id_txt=" + Session["Client_number"];
            m.ExecuteNonQuery();

            m.CommandText = "update  login_det set sms_num = sms_num + " + Int32.Parse(star1.Count().ToString()) + " where id=" + Session["login_det_id"];
            m.ExecuteNonQuery();

            Session["sms_num"] = Int32.Parse(Session["sms_num"].ToString()) - Int32.Parse(star1.Count().ToString());

            TimeSpan ts = new TimeSpan(+5, +30, 0);

            for (int i = 0; i < star1.Count(); i++)
            {
                sms(star1[i].ToString(), star2[i].ToString(), subject.Text);

                m.CommandText = "insert into sent_sms values(" + id + ",'" + star2[i].ToString() + "','" + star1[i].ToString() + "','" + subject.Text + "'," + Int32.Parse(Session["Client_number"].ToString()) + ",'" + DateTime.Now.Date.Add(ts).Date + "')";
                m.ExecuteNonQuery();
                id += 1;

            }
            c.Close();
         
            subject.Text = "";

            Label1.Text = "Successfully email sent.";

        }

    }
}
