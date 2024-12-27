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

public partial class Current_opening : System.Web.UI.Page
{
    General  g1=new General();
    DataTable  dt=new DataTable();

    public string location="",acquali="",profess="", datepost = "", jobposition = "", jobname = "", profile = "", addr = "", expmin = "", expmax = "", ctcfrm = "", ctcto = "", keyskill = "", quli = "", specific = "", jobfunc = "", industry = "", description = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
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
             profile = Convert.ToString(dt.Rows[0]["conprofile_txt"]);
             addr = Convert.ToString(dt.Rows[0]["add_txt"]);
             expmin = Convert.ToString(dt.Rows[0]["year_min_txt"]);
             expmax = Convert.ToString(dt.Rows[0]["year_max_txt"]);
             ctcfrm = Convert.ToString(dt.Rows[0]["salary_txt"]);
             ctcto = Convert.ToString(dt.Rows[0]["salary_txt_max"]);
             keyskill = Convert.ToString(dt.Rows[0]["keywords_txt"]);
             quli = Convert.ToString(dt.Rows[0]["aqr_txt"]);
             specific = Convert.ToString(dt.Rows[0]["jp_txt"]);
             jobfunc = Convert.ToString(dt.Rows[0]["fun_name"]);
             industry = Convert.ToString(dt.Rows[0]["in_txt"]);
             description = Convert.ToString(dt.Rows[0]["jobr_txt"]);
             jobposition = Convert.ToString(dt.Rows[0]["rep_txt"]);
             location = Convert.ToString(dt.Rows[0]["loc_txt"]);
             
             datepost = Convert.ToDateTime(dt.Rows[0]["post_date"]).ToString("dd-MMM-yyyy");
         }

    }
}
