using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class view_vacancey : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        try
        {
             c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
              c.Open();
              m.Connection = c;
            
              m.CommandText = "select cname_txt as [Company  Name],cprofile_txt as [Company Profile],jp_txt as [Job Position],jobr_txt as [Job Responsibility],year_min_txt as [Minimun Expperience],year_max_txt as [Maximum Experience],aqr_txt as [Academic Qualification],pqr_txt as [Professional Qualification],loc_txt as Location,in_txt as Industry,fa_txt  as [Functional Area],sfa_txt  as [Sub Functional Area],salary_txt as Salary,keywords_txt as Keyword,novacc_txt as [Number of Vacancy],jobcode_txt as [Job Code] from post_vaca  where pv_id_txt=" + Int32.Parse(Session["pv_id"].ToString());
              SqlDataAdapter dap = new SqlDataAdapter(m);
              DataSet ds = new DataSet();
              dap.Fill(ds, "post_vaca");


              m.CommandText = "select cp_txt as [Contact Person],email_txt as Email,phone_txt as Phone,add_txt as Address,post_date as [Post Date] from post_vaca  where pv_id_txt=" + Int32.Parse(Session["pv_id"].ToString());
            SqlDataAdapter dap1 = new SqlDataAdapter(m);
            DataSet ds1 = new DataSet();
            dap1.Fill(ds1, "post_vaca");
              DetailsView1.DataSource = ds.Tables["post_vaca"];
              DetailsView1.DataBind();
            DetailsView2.DataSource = ds1.Tables["post_vaca"];
            DetailsView2.DataBind();
          

        }
        catch (Exception ex)
        {
           ex.ToString();
        }
        finally
        {
            c.Close();
        }

    }
   
    
}
