using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Text.RegularExpressions;
public partial class Job_Catagories_Informetion : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    DataTable dt = new DataTable();
    General g1 = new General();
    int id;
    public static string id1 = "";
    public string opening = "", exper = "", indus = "", loc = "", spc = "", key = "", pid1 = "";
    public StringBuilder jobdtl = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {

                show();
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
    }
 
  

    public void show()
    {
       // string indname = Session["indname"].ToString();
        string indnameOld = Request.QueryString["name"].ToString();
        string indname = "";
        if (indnameOld.Contains("_"))
        {
            string[] SpltFun = indnameOld.Split('_');                   
            indname = SpltFun[0].ToString() + " & " + SpltFun[1].ToString();          
        }
        else
        {
            indname = indnameOld;
        }

        dt = g1.return_dt("SELECT  cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,cast(salary_txt  as varchar) + '-'  +  cast(salary_txt_max  as varchar) as ctc,pv_id_txt,in_txt,post_date,loc_txt,jobr_txt,jp_txt,year_min_txt,year_max_txt,fa_txt,novacc_txt,rep_txt,keywords_txt,jp_txt  FROM   [post_vaca] where  hidden_txt=0 and in_txt='" + indname + "'");
        jobdtl.Length = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            //GridView1.DataSource = dt;
            //GridView1.DataBind();

            opening = Convert.ToString(dt.Rows[i]["rep_txt"]);
            exper = Convert.ToString(dt.Rows[i]["Experience"]);
            indus = Convert.ToString(dt.Rows[i]["in_txt"]);
            loc = Convert.ToString(dt.Rows[i]["loc_txt"]);
            loc = loc.Replace("<br/>", ",");
            spc = Convert.ToString(dt.Rows[i]["jp_txt"]);
            key = Convert.ToString(dt.Rows[i]["keywords_txt"]);
            pid1 = Convert.ToString(dt.Rows[i]["pv_id_txt"]);

            jobdtl.Append("<div class='c-item'><div ><a class='l_j aK' href='External-career.aspx?pin=" + pid1 + "' title='View &amp; Apply'  id=''><strong>" + opening + "<span> (" + exper + " yrs.)</span></strong><dfn>" + indus + "</dfn><br>" + loc + "<br> " + spc + "<br><span class='f12'><b>Keyskills:</b></span> " + key + "</a></div></div>");
        }


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "detail":

                int r = Int32.Parse((e.CommandArgument).ToString());
             //   Session["indname"] = GridView1.DataKeys[r].Value.ToString();

                Response.Redirect("External-career.aspx");

                break;


            case "apply":

                int r1 = Int32.Parse((e.CommandArgument).ToString());

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
                        Response.Redirect("SentJob_Informetion.aspx");
                    }
                }

                break;

            default:

                return;


        }
    }
   
}
