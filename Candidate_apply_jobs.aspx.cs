using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Candidate_apply_jobs : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user_txt"] == null)
        {
            Response.Redirect("Overview_Form.aspx");
        }
        else
        {



            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select p.cname_txt as [company name],p.in_txt as Indudtry,a.apply_date as [Apply Date]  from  post_vaca p,apply_master a where p.pv_id_txt=a.pv_id and p.hidden_txt=0 and a.can_id=" + Session["id_txt"]; 
                SqlDataAdapter dap = new SqlDataAdapter(m);
                DataSet ds = new DataSet();
                dap.Fill(ds, "post_vaca,apply_master");
                GridView1.DataSource=ds.Tables["post_vaca,apply_master"];
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                c.Close();
            }

        }
    }
}
