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
using System.IO;
using System.Web.Mail;
public partial class Current_opening : System.Web.UI.Page
{
    General  g1=new General();
    DataTable  dt=new DataTable();
    DataTable dt1 = new DataTable();
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    public static string design="",indus = "", locton = "", opening = "", contctperson = "", contctemail = "", contctphone = "", contctaddr = "", comname = "";

    public string location = "", acquali = "", profess = "", datepost = "", jobposition = "", jobcode = "", jobname = "", profile = "", addr = "", expmin = "", expmax = "", ctcfrm = "", ctcto = "", keyskill = "", quli = "", specific = "", jobfunc = "", industry = "", description = "", companyName = "", filepath = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["pin"] != null)
            {
                Session["pv_id_txt"] = Request.QueryString["pin"];
                show();
            }
        }
    }

    public void show()
    {
         int id = Int32.Parse(Session["pv_id_txt"].ToString());

         dt = g1.return_dt("select a.*,b.fun_name from post_vaca as a,fun as b  where a.fa_txt=b.id and  a.pv_id_txt=" + id);

         if (dt.Rows.Count > 0)
         {
             this.Title = Convert.ToString(dt.Rows[0]["jobt"]);
             acquali = Convert.ToString(dt.Rows[0]["aqr_txt"]);
             profess = Convert.ToString(dt.Rows[0]["pqr_txt"]);
             jobname = Convert.ToString(dt.Rows[0]["cname_txt"]);
             //profile = Convert.ToString(dt.Rows[0]["conprofile_txt"]);
             addr = Convert.ToString(dt.Rows[0]["add_txt"]);
             expmin = Convert.ToString(dt.Rows[0]["year_min_txt"]);
             expmax = Convert.ToString(dt.Rows[0]["year_max_txt"]);
             ctcfrm = Convert.ToString(dt.Rows[0]["salary_txt"]);
             ctcto = Convert.ToString(dt.Rows[0]["salary_txt_max"]);
             keyskill = Convert.ToString(dt.Rows[0]["keywords_txt"]);
             quli = Convert.ToString(dt.Rows[0]["aqr_txt"]);
             //specific = Convert.ToString(dt.Rows[0]["jp_txt"]);
             jobfunc = Convert.ToString(dt.Rows[0]["fun_name"]);
             industry = Convert.ToString(dt.Rows[0]["in_txt"]);
            //  description = Convert.ToString(dt.Rows[0]["jobr_txt"]);
             jobposition = Convert.ToString(dt.Rows[0]["rep_txt"]);
             location = Convert.ToString(dt.Rows[0]["loc_txt"]);
             
             datepost = Convert.ToDateTime(dt.Rows[0]["post_date"]).ToString("dd-MMM-yyyy");


             design = Convert.ToString(dt.Rows[0]["des_txt"]);

             contctperson = Convert.ToString(dt.Rows[0]["cp_txt"]);
             contctemail = Convert.ToString(dt.Rows[0]["email_txt"]);
             contctphone = Convert.ToString(dt.Rows[0]["phone_txt"]);

             contctaddr = Convert.ToString(dt.Rows[0]["add_txt"]);

             Response.Cookies["positoion"].Value = jobposition;
            Response.Cookies["jobcode"].Value = jobcode;
            Response.Cookies["chkmail"].Value = "1";

         }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //int r1 = Int32.Parse(Convert.ToString(Session["indname"]));

        string r1 = Convert.ToString(Session["indname"]);
        Session["pv_id_txt"] = r1.ToString();
        if (Session["id_txt"] == null)
        {
            Response.Redirect("CandidateZone_Login.aspx");
        }
        else
        {

            int can_id = Int32.Parse(Session["id_txt"].ToString());
            // int r = Int32.Parse((e.CommandArgument).ToString());
            int pv_id = Int32.Parse(Request.QueryString["pin"].ToString());
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id;
            SqlDataReader dr, dr4, dr2, dr3;
            dr4 = m.ExecuteReader();
            if (dr4.Read())
            {
                Label1.Text = "Already is apply.";
                dr4.Close();
            }
            else
            {
                dr4.Close();

                m.CommandText = "select  count(a_id)  from  apply_master";

                dr2 = m.ExecuteReader();
                dr2.Read();
                if (Int32.Parse(dr2[0].ToString()) == 0)
                {
                    id = 1;
                    dr2.Close();
                }
                else
                {
                    dr2.Close();

                    m.CommandText = "select  max(a_id)  from  apply_master";

                    dr3 = m.ExecuteReader();
                    dr3.Read();
                    id = Int32.Parse(dr3[0].ToString());
                    id = id + 1;
                    dr3.Close();
                }




                m.CommandText = "insert into   apply_master values(@a_id,@can_id,@pv_id,@Apply_date);";
                m.Parameters.AddWithValue("@a_id", id);

                m.Parameters.AddWithValue("@can_id", can_id);
                m.Parameters.AddWithValue("@pv_id", pv_id);
                m.Parameters.AddWithValue("@Apply_date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
                m.ExecuteNonQuery();
                c.Close();
                dt = g1.return_dt("select mob_txt,email_txt,File_Data,name_txt from pyr_master where id_txt=" + can_id);
                dt1 = g1.return_dt("select rep_txt,cname_txt from post_vaca where pv_id_txt=" + pv_id);
                companyName = dt1.Rows[0]["cname_txt"].ToString();
                if (mail1(dt.Rows[0]["name_txt"].ToString(), dt.Rows[0]["mob_txt"].ToString(), dt.Rows[0]["email_txt"].ToString(), companyName, dt1.Rows[0]["rep_txt"].ToString()))
                {
                    Byte[] bytes = (Byte[])dt.Rows[0]["File_Data"];
                    File.WriteAllBytes(Server.MapPath("~/cv/") + dt.Rows[0]["name_txt"].ToString() + ".doc", bytes);
                    if (mail(dt.Rows[0]["name_txt"].ToString(), dt.Rows[0]["email_txt"].ToString(), companyName, dt1.Rows[0]["rep_txt"].ToString(), Server.MapPath("~/cv/") + dt.Rows[0]["name_txt"].ToString() + ".doc"))
                        Response.Redirect("SentJob_Informetion.aspx");
                }
                Response.Redirect("SentJob_Informetion.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {
        int r1 = Int32.Parse(Session["indname"].ToString());
        Session["pv_id_txt"] = r1.ToString();
        if (Session["id_txt"] == null)
        {
            Response.Redirect("CandidateZone_Login.aspx");
        }
        else
        {
            int can_id = Int32.Parse(Session["id_txt"].ToString());
            // int r = Int32.Parse((e.CommandArgument).ToString());
            int pv_id = Int32.Parse(Session["pv_id_txt"].ToString());
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id;
            SqlDataReader dr, dr4, dr2, dr3;
            dr4 = m.ExecuteReader();
            if (dr4.Read())
            {
                Label1.Text = "Already is apply.";
                dr4.Close();
            }
            else
            {
                dr4.Close();

                m.CommandText = "select  count(a_id)  from  apply_master";

                dr2 = m.ExecuteReader();
                dr2.Read();
                if (Int32.Parse(dr2[0].ToString()) == 0)
                {
                    id = 1;
                    dr2.Close();
                }
                else
                {
                    dr2.Close();

                    m.CommandText = "select  max(a_id)  from  apply_master";

                    dr3 = m.ExecuteReader();
                    dr3.Read();
                    id = Int32.Parse(dr3[0].ToString());
                    id = id + 1;
                    dr3.Close();
                }




                m.CommandText = "insert into   apply_master values(@a_id,@can_id,@pv_id,@Apply_date);";
                m.Parameters.AddWithValue("@a_id", id);

                m.Parameters.AddWithValue("@can_id", can_id);
                m.Parameters.AddWithValue("@pv_id", pv_id);
                m.Parameters.AddWithValue("@Apply_date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
                m.ExecuteNonQuery();
                c.Close();
            }
        }
    }
    public bool mail1(string applicantName, string phone, string email, string companyName, string postName)
    {
        SendMailLibrary.SendEMail email1 = new SendMailLibrary.SendEMail();
        email1.HostName = "192.185.129.211";
        email1.UserId = "noreply@suvidhajobs.in";
        email1.Password = "Nor1234";
        email1.Port = 25;
        string body2 = "<html><body>" + "<p>Dear   " + applicantName + ",</p><p>Your job application for the post of " + postName + " has been sent to " + companyName + ". You will get a call at " + phone + " or an email at " + email + " if your cv is shortlisted. <p>Thanks and regards,</p><p>Team Suvidha Jobs</p></body></html>";
        return email1.SendMail("noreply@suvidhajobs.in", "response@suvidhajobs.in", "Job Application Conmfirmation", body2);
    }
    public bool mail(string applicantName, string email, string companyName, string postName, string path)
    {
        SendMailLibrary.SendEMail email1 = new SendMailLibrary.SendEMail();
        email1.HostName = "192.185.129.211";
        email1.UserId = "noreply@suvidhajobs.in";
        email1.Password = "Nor4521*";
        email1.Port = 25;
        string body2 = "<html><body>" + "<p> " + applicantName + " has applied for the post of " + postName + " in " + companyName + ". CV of the applicant has been attached for reference </p></body></html>";
        return email1.SendMail1("noreply@suvidhajobs.in", "response@suvidhajobs.in", "New Job Application Received", body2, path);
    }
}
