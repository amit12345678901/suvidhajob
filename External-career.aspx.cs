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
public partial class External_career : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    DataTable dt = new DataTable();
    General g1 = new General();
    int id;
    public static string profess="",acquali="",jobres="",compprofile="",datepost = "", jobposition = "", jobname = "", profile = "", addr = "", expmin = "", expmax = "", ctcfrm = "", ctcto = "", keyskill = "", quli = "", jobfunc = "", industry = "", description = "";

    public static string indus = "", locton="",opening = "", contctperson = "", contctemail = "", contctphone = "", contctaddr = "", comname = "";

    public string jobtitle="",func="",subfunc="",gender="",design="",type="",jobcode="",age="";
   
    public string hdcode = "", hdsubfunc = "",hdaddrss="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["pin"] != null)
            {
                Session["indname"] = Request.QueryString["pin"];
                show();
            }
        }
    }

    public void show()
    {
        int id = Int32.Parse(Session["indname"].ToString());

        dt = g1.return_dt("select a.*,b.fun_name from post_vaca as a,fun as b where a.fa_txt=b.id and a.pv_id_txt=" + id);

        if (dt.Rows.Count > 0)
        {
            age = Convert.ToString(dt.Rows[0]["ab_txt"]);
            this.Title = Convert.ToString(dt.Rows[0]["jobt"]);
            func = Convert.ToString(dt.Rows[0]["fun_name"]);
            subfunc = Convert.ToString(dt.Rows[0]["sfa_txt"]);
            if (subfunc == "")
            {
                hdsubfunc = "";
            }
            else
            {
                hdsubfunc = " <div class=nw_all><div class=nw_cont_lft>Subfunctional Area:</div><div class=nw_cont_rgt>" + subfunc + "</div></div>";
            }
            gender = Convert.ToString(dt.Rows[0]["gender_txt"]);
            design = Convert.ToString(dt.Rows[0]["des_txt"]);
            type = Convert.ToString(dt.Rows[0]["jobt_txt"]);
            jobcode = Convert.ToString(dt.Rows[0]["jobcode_txt"]);
           
            if (jobcode == "")
            {
                hdcode = "";
            }
            else
            {
                hdcode = "| <font color=#999>Job Code:</font> " + jobcode + "";
            }

            jobname = Convert.ToString(dt.Rows[0]["cname_txt"]);
            profile = Convert.ToString(dt.Rows[0]["cprofile_txt"]);
            addr = Convert.ToString(dt.Rows[0]["add_txt"]);
            expmin = Convert.ToString(dt.Rows[0]["year_min_txt"]);
            expmax = Convert.ToString(dt.Rows[0]["year_max_txt"]);
            ctcfrm = Convert.ToString(dt.Rows[0]["salary_txt"]);
            ctcto = Convert.ToString(dt.Rows[0]["salary_txt_max"]);
            keyskill = Convert.ToString(dt.Rows[0]["keywords_txt"]);
            quli = Convert.ToString(dt.Rows[0]["aqr_txt"]);
            //specific = Convert.ToString(dt.Rows[0]["jp_txt"]);
        
            industry = Convert.ToString(dt.Rows[0]["in_txt"]);
            // description = Convert.ToString(dt.Rows[0]["jobr_txt"]);
            jobposition = Convert.ToString(dt.Rows[0]["rep_txt"]);
            datepost = Convert.ToDateTime(dt.Rows[0]["post_date"]).ToString("dd-MMM-yyyy");
            compprofile = Convert.ToString(dt.Rows[0]["cprofile_txt"]);
         
            acquali = Convert.ToString(dt.Rows[0]["aqr_txt"]);
            profess = Convert.ToString(dt.Rows[0]["pqr_txt"]);
            locton = Convert.ToString(dt.Rows[0]["loc_txt"]);
            locton = locton.Replace("<br/>",",");
            comname = Convert.ToString(dt.Rows[0]["cname_txt"]);  
            indus=Convert.ToString(dt.Rows[0]["in_txt"]);
            opening = Convert.ToString(dt.Rows[0]["novacc_txt"]);  


            contctperson=Convert.ToString(dt.Rows[0]["cp_txt"]);  
            contctemail=Convert.ToString(dt.Rows[0]["email_txt"]);
            contctphone = Convert.ToString(dt.Rows[0]["phone_txt"]); 

            contctaddr=Convert.ToString(dt.Rows[0]["add_txt"]);

            if (contctaddr == "")
            {
                hdaddrss = "";
            }
            else
            {
                hdaddrss = " <div class=nw_all>div class=nw_cont_lft> Address:</div><div class=nw_cont_rgt>"+ contctaddr+"</div></div>";
            }



            Response.Cookies["positoion"].Value= jobposition;
            Response.Cookies["jobcode"].Value = jobcode;
            Response.Cookies["chkmail"].Value = "0";

        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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
                Response.Redirect("SentJob_Informetion.aspx");
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Withoutregistration.aspx?position=" + jobposition + "&jobcode=" + jobcode);
        
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
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
                Response.Redirect("SentJob_Informetion.aspx");
            }
        }
    }
}
