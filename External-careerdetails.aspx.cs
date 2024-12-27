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
using System.Text;


public partial class External_careerdetails : System.Web.UI.Page
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
        show();
    }

    public void show()
    {
        dt = g1.return_dt("SELECT  cast(year_min_txt as varchar) + '-'  +  cast(year_max_txt as varchar)as Experience,cast(salary_txt  as varchar) + '-'  +  cast(salary_txt_max  as varchar) as ctc,pv_id_txt,in_txt,post_date,loc_txt,jobr_txt,jp_txt,year_min_txt,year_max_txt,fa_txt,novacc_txt,rep_txt,keywords_txt,jp_txt  FROM   [post_vaca] where hidden_txt=0 and category in('2','3') order by pv_id_txt desc");
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

            jobdtl.Append("<div class='c-item''><a class='l_j aK' href='External-career.aspx?pin=" + pid1 + "' title='View &amp; Apply'  id=''><strong>" + opening + "<span> (" + exper + " yrs.)</span></strong><br><dfn>" + indus + "</dfn><br>" + loc + "<br> " + spc + "<br><span class='f12'>Keyskills:</span> " + key + "</a></div><br>");
        }


    }
}
