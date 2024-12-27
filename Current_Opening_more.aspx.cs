using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;


public partial class Current_Opening_more : System.Web.UI.Page
{
    public string Text_message;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;

    DataTable dt = new DataTable();
    General g1 = new General();

    public static string id1 = "";
    public string opening = "", exper = "", indus = "", loc = "", spc = "", key = "", pid1 = "";

    public StringBuilder jobdtl = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
           

                show();
            }
    }

    public void show()
    {
        dt = g1.return_dt("SELECT top 5 cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,cast(salary_txt  as varchar) + '-'  +  cast(salary_txt_max  as varchar) as ctc,pv_id_txt,in_txt,post_date,loc_txt,jobr_txt,jp_txt,year_min_txt,year_max_txt,fa_txt,novacc_txt,rep_txt,keywords_txt,jp_txt  FROM   [post_vaca] where hidden_txt=0  order by pv_id_txt desc");
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

            jobdtl.Append("<div class='jRes'><a class='l_j aK' href='External-career.aspx?pin=" + pid1 + "' title='View &amp; Apply'  id=''><strong>" + opening + "<span> (" + exper + " yrs.)</span></strong><dfn>" + indus + "</dfn><i>" + loc + "</i><em> " + spc + "</em><em><span class='f12'>Keyskills:</span> " + key + "</em></a></div>");
        }


    }
}
