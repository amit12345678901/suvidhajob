using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

//using Outlook = Microsoft.Office.Interop.Outlook;

public partial class _aboutus : System.Web.UI.Page 
{
    DataTable dt = new DataTable();
    General g1 = new General();
    public string Text_message;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    //Outlook.Application oApp = new Outlook.Application();
    public string career = "",crview="";
    int id;
    public string opening = "", exper = "", indus = "", loc = "", spc = "", key = "", pid1 = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["p"] != null)
            {
                career = " and category='2' ";
            }
            else
            {
                career = " and category='1'";
            }
            show();
        }
    }

    public void show()
    {
        dt = g1.return_dt("SELECT  cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,pv_id_txt,in_txt,post_date,loc_txt,year_min_txt,year_max_txt,fa_txt,keywords_txt,aqr_txt,pqr_txt,ab_txt,salary_txt,rep_txt  FROM   [post_vaca] where hidden_txt=0 " + career + " order by pv_id_txt desc");
       
        if (dt.Rows.Count > 0)
        {

            opening = Convert.ToString(dt.Rows[0]["rep_txt"]);
            exper = Convert.ToString(dt.Rows[0]["Experience"]);
            indus = Convert.ToString(dt.Rows[0]["in_txt"]);
            loc = Convert.ToString(dt.Rows[0]["loc_txt"]);
            loc = loc.Replace("<br/>", ",");
            // spc = Convert.ToString(dt.Rows[0]["jp_txt"]);
            key = Convert.ToString(dt.Rows[0]["keywords_txt"]);
            pid1 = Convert.ToString(dt.Rows[0]["pv_id_txt"]); 

            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                crview += "<div class=c-item><a class=l_j aK href='Current_Opening_Informetion_inter.aspx?pin=" + Convert.ToString(dt.Rows[i]["pv_id_txt"]) + "' title=View &amp; Apply  id=><strong>" + Convert.ToString(dt.Rows[i]["rep_txt"]) + "<span> (" + Convert.ToString(dt.Rows[i]["Experience"]) + " yrs.)</span></strong><i>" + Convert.ToString(dt.Rows[i]["loc_txt"]) + " </i><em> " + Convert.ToString(dt.Rows[i]["jp_txt"]) + "</em><em><span class=f12>Keyskills:</span> " + Convert.ToString(dt.Rows[i]["keywords_txt"]) + "</em>   </a></div>";
            }
        }
        else
        {
             
            //GridView1.DataSource = null;
            //GridView1.DataBind();
        }
    
    }

    protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
       
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case  "details":

                int r = Int32.Parse((e.CommandArgument).ToString());
               // Session["pv_id_txt"] = GridView1.DataKeys[r].Value.ToString();


                if (Request.QueryString["p"] != null)
                {
                    Response.Redirect("External-career.aspx");

                }
                else
                {
                    Response.Redirect("Current_Opening_Informetion_inter.aspx");

                }
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
