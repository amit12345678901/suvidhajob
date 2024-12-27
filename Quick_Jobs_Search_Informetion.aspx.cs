using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.IO;

public partial class Quick_jobs_Search_Informetion : System.Web.UI.Page
{
     DataTable dt = new DataTable();
     DataTable dt1 = new DataTable();
    General g1 = new General();
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string exp, loc, fun, key;
    int id;

    public string opening = "", exper = "", indus = "", loc1 = "", spc = "", key1 = "", pid1 = "", crview = "", companyName="",filepath="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["t1"].Value == "")
        {
            key = "";
        }
        else
        {
            key = " and (keywords_txt like '%" + Request.Cookies["t1"].Value + "%' or in_txt   like '%" + Request.Cookies["t1"].Value + "%' or fa_txt like '%" + Request.Cookies["t1"].Value + "%' or sfa_txt like '%" + Request.Cookies["t1"].Value + "%' or cname_txt like '%" + Request.Cookies["t1"].Value + "%' or cprofile_txt like '%" + Request.Cookies["t1"].Value + "%' or cp_txt like '%" + Request.Cookies["t1"].Value + "%' or jp_txt like '%" + Request.Cookies["t1"].Value + "%' or rep_txt like '%" + Request.Cookies["t1"].Value + "%' or gender_txt like '%" + Request.Cookies["t1"].Value + "%' or jobt_txt like '%" + Request.Cookies["t1"].Value + "%' or aqr_txt like '%" + Request.Cookies["t1"].Value + "%' or pqr_txt like '%" + Request.Cookies["t1"].Value + "%' or jobt like '%" + Request.Cookies["t1"].Value + "%') ";
        }
        if (Request.Cookies["t2"].Value != "")
        {
            exp = Request.Cookies["t2"].Value;
        }
       
        if (Request.Cookies["t3"].Value == "")
        {
            loc = "";
        }
        else
        {
            loc = " and loc_txt='" + Request.Cookies["t3"].Value + "' ";
        }
        if (Request.Cookies["t4"].Value == "")
        {
            fun = "";
        }
        else
        {
            fun = " and fa_txt='" + Request.Cookies["t4"].Value + "' ";
        }
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        if (Request.Cookies["t2"].Value == "")
        {

           dt = g1.return_dt("SELECT  cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,cast(salary_txt  as varchar) + '-'  +  cast(salary_txt_max  as varchar) as ctc,pv_id_txt,in_txt,post_date,loc_txt,jobr_txt,jp_txt,year_min_txt,year_max_txt,fa_txt,novacc_txt,rep_txt,keywords_txt,jp_txt,cname_txt  from post_vaca  where hidden_txt=0 and category!='1' and year_min_txt<=" + 100 + " and year_max_txt>=" + 0 + loc + fun + key+"");
        

        }
        else
        {

           dt = g1.return_dt("SELECT cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,cast(salary_txt  as varchar) + '-'  +  cast(salary_txt_max  as varchar) as ctc,pv_id_txt,in_txt,post_date,loc_txt,jobr_txt,jp_txt,year_min_txt,year_max_txt,fa_txt,novacc_txt,rep_txt,keywords_txt,jp_txt,cname_txt  from post_vaca  where hidden_txt=0 and category!='1' and year_min_txt<=" + Int32.Parse(exp) + " and year_max_txt>=" + Int32.Parse(exp) + loc + fun + key+"");

        }

        if (dt.Rows.Count > 0)
        {

            opening = Convert.ToString(dt.Rows[0]["rep_txt"]);
            exper = Convert.ToString(dt.Rows[0]["Experience"]);
            indus = Convert.ToString(dt.Rows[0]["in_txt"]);
            loc1 = Convert.ToString(dt.Rows[0]["loc_txt"]);
            loc1 = loc1.Replace("<br/>", ",");
            spc = Convert.ToString(dt.Rows[0]["jp_txt"]);
            key1 = Convert.ToString(dt.Rows[0]["keywords_txt"]);
            pid1 = Convert.ToString(dt.Rows[0]["pv_id_txt"]);
            companyName = Convert.ToString(dt.Rows[0]["cname_txt"]);

            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                crview += "<div class=wrpCB><div class=jRes><a class=l_j aK href='Current_Opening_Informetion_inter.aspx?pin=" + Convert.ToString(dt.Rows[i]["pv_id_txt"]) + "' title=View &amp; Apply  id=><strong>" + Convert.ToString(dt.Rows[i]["rep_txt"]) + "<span> (" + Convert.ToString(dt.Rows[i]["Experience"]) + " yrs.)</span></strong><i>" + Convert.ToString(dt.Rows[i]["loc_txt"]).Replace("<br/>", ",") + " </i><em> " + Convert.ToString(dt.Rows[i]["jp_txt"]) + "</em><em><span class=f12>Keyskills:</span> " + Convert.ToString(dt.Rows[i]["keywords_txt"]) + "</em>   </a></div></div>";
            }
        }

        else
        {

            Label1.Text = "Sorry, no result found";
        }
        // SqlDataAdapter dap = new SqlDataAdapter(m);
        //DataSet ds = new DataSet();
        //dap.Fill(ds, "post_vaca");
        //GridView1.DataSource = ds.Tables["post_vaca"];
        //GridView1.DataBind();
        //c.Close();

    }
   
   // protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
   // {

   // }
   ///* protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
   // {
   //     GridView1.EditIndex = e.NewEditIndex;

   //     GridView1.DataBind();
   // }*/

   // protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
   // {
   //     //GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
   //     switch (e.CommandName.Trim())
   //     {

   //         case "Apply":
   //             int r = Int32.Parse((e.CommandArgument).ToString());
   //             Session["pv_id_txt"] = GridView1.DataKeys[r].Value.ToString();
   //             if (Session["id_txt"] == null)
   //             {
   //                 Response.Redirect("CandidateZone_Login.aspx");
   //             }
   //             else
   //             {
   //                 int can_id = Int32.Parse(Session["id_txt"].ToString());
   //                 // int r = Int32.Parse((e.CommandArgument).ToString());
   //                 int pv_id = Int32.Parse(Session["pv_id_txt"].ToString());
   //                 if (c.State.ToString() == "Open")
   //                     c.Close();
   //                 c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
   //                 c.Open();
   //                 m.Connection = c;
   //                 m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id ;
   //                 SqlDataReader dr, dr4,dr2,dr3;
   //                 dr4 = m.ExecuteReader();
   //                 if (dr4.Read())
   //                 {
   //                     Label1.Text = "Already is apply.";
   //                     dr4.Close();
   //                 }
   //                 else
   //                 {

   //                     dr4.Close();
   //                     m.CommandText = "select  count(a_id)  from  apply_master";

   //                     dr2 = m.ExecuteReader();
   //                     dr2.Read();
   //                     if (Int32.Parse(dr2[0].ToString()) == 0)
   //                     {
   //                         id = 1;
   //                         dr2.Close();
   //                     }
   //                     else
   //                     {
   //                         dr2.Close();

   //                         m.CommandText = "select  max(a_id)  from  apply_master";

   //                         dr3 = m.ExecuteReader();
   //                         dr3.Read();
   //                         id = Int32.Parse(dr3[0].ToString());
   //                         id = id + 1;
   //                         dr3.Close();
   //                     }




   //                     m.CommandText = "insert into   apply_master values(@a_id,@can_id,@pv_id,@Apply_date);";
   //                     m.Parameters.AddWithValue("@a_id", id);

   //                     m.Parameters.AddWithValue("@can_id", can_id);
   //                     m.Parameters.AddWithValue("@pv_id", pv_id);
   //                     m.Parameters.AddWithValue("@Apply_date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
   //                     m.ExecuteNonQuery();
   //                     c.Close();
   //                     dt = g1.return_dt("select mob_txt,email_txt,File_Data,name_txt from pyr_master where id_txt=" + can_id);
   //                     dt1 = g1.return_dt("select rep_txt,cname_txt from post_vaca where pv_id_txt=" + pv_id);
   //                     companyName = dt1.Rows[0]["cname_txt"].ToString();
   //                     if (mail1(Session["name_txt"].ToString(), dt.Rows[0]["mob_txt"].ToString(), dt.Rows[0]["email_txt"].ToString(), companyName, dt1.Rows[0]["rep_txt"].ToString()))
   //                     {
   //                         Byte[] bytes = (Byte[])dt.Rows[0]["File_Data"];
   //                         File.WriteAllBytes(Server.MapPath("~/cv/") + dt.Rows[0]["name_txt"].ToString()+".doc",bytes);
   //                         if (mail(dt.Rows[0]["name_txt"].ToString(), dt.Rows[0]["email_txt"].ToString(), companyName, dt1.Rows[0]["rep_txt"].ToString(), Server.MapPath("~/cp/") + dt.Rows[0]["name_txt"].ToString() + ".doc"))
   //                             Response.Redirect("SentJob_Informetion.aspx");
   //                     }
   //                 }
   //             }
   //             c.Close();
   //             break;

   //         case "detail":

   //             int r1 = Int32.Parse((e.CommandArgument).ToString());
   //             Session["pv_id_txt"] = GridView1.DataKeys[r1].Value.ToString();
   //             Response.Redirect("Job_Detail_Informetion.aspx");
   //             break;

   //     }


   // }
    //protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.Cells.Count > 2)
    //    {
    //        e.Row.Cells[2].Visible = false;
    //    }
    //}

    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    //GridView1.PageIndex = e.NewPageIndex;
    //    //GridView1.DataBind();
    //}
    public bool mail1(string applicantName, string phone, string email, string companyName, string postName)
    {
        SendMailLibrary.SendEMail email1 = new SendMailLibrary.SendEMail();
        email1.HostName = "mail.suvidhajobs.in";
        email1.UserId = "noreply@suvidhajobs.in";
        email1.Password = "Nor1234";
        email1.Port = 25;
        string body2 = "<html><body>" + "<p>Dear   " + applicantName + ",</p><p>Your job application for the post of " + postName + " has been sent to " + companyName + ". You will get a call at " + phone + " or an email at " + email + " if your cv is shortlisted. <p>Thanks and regards,</p><p>Team Suvidha Jobs</p></body></html>";
        return email1.SendMail("noreply@suvidhajobs.in", email, "Job Application Conmfirmation", body2);
    }
    public bool mail(string applicantName, string email, string companyName, string postName, string path)
    {
        SendMailLibrary.SendEMail email1 = new SendMailLibrary.SendEMail();
        email1.HostName = "mail.suvidhajobs.in";
        email1.UserId = "noreply@suvidhajobs.in";
        email1.Password = "Nor1234";
        email1.Port = 25;
        string body2 = "<html><body>" + "<p> " + applicantName + " has applied for the post of " + postName + " in " + companyName + ". CV of the applicant has been attached for reference </p></body></html>";
        return email1.SendMail1("noreply@suvidhajobs.in", "response@suvidhajobs.in", "New Job Application Received", body2, path);
    }
}

