using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Job_Detail_Informetion : System.Web.UI.Page
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
              int id = Int32.Parse(Session["pv_id_txt"].ToString());
               m.CommandText = "select cname_txt as [Company  Name],cprofile_txt as [Company Profile],jp_txt as [Job Position],jobr_txt as [Job Responsibility],year_min_txt as [Minimun Expperience  (Year)],year_max_txt as [Maximum Experience  (Year)],aqr_txt as [Academic Qualification],pqr_txt as [Prrofisional Qualification],loc_txt as Location,in_txt as Industry,fa_txt  as [Functional Area],sfa_txt  as [Sub Functional Area],salary_txt as [Salary  (Lakh per  annum)],novacc_txt as [Number of Vacancy] from post_vaca  where pv_id_txt=" + id;
              SqlDataAdapter dap = new SqlDataAdapter(m);
              DataSet ds = new DataSet();
              dap.Fill(ds, "post_vaca");
             

            m.CommandText = "select cp_txt as [Contact Person],email_txt as Email,phone_txt as Phone,add_txt as Address,post_date as [Post Date] from post_vaca  where pv_id_txt=" + id;
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
   /* protected void Apply_now_Click(object sender, EventArgs e)
    {
        if (Session["id_txt"] == null)
        {
            Response.Redirect("CandidateZone_Login.aspx");
        }
        else
        {
            int can_id = Int32.Parse(Session["id_txt"].ToString());
            int pv_id = Int32.Parse(Session["pv_id_txt"].ToString());
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

              m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id ;
            SqlDataReader dr, dr4,dr2,dr3;
            dr4 = m.ExecuteReader();
            if (dr4.Read())
            {
                Label1.Text = "Already applied for this job.";
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


              

             

                m.CommandText = "insert into   apply_master values(a_id,can_id,pv_id,Apply_date);";
                m.Parameters.AddWithValue("@a_id",id );
               
                m.Parameters.AddWithValue("can_id", can_id);
                m.Parameters.AddWithValue("pv_id", pv_id);
                m.Parameters.AddWithValue("Apply_date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
                m.ExecuteNonQuery();
                c.Close();
                Response.Redirect("SentJob_Informetion.aspx");

                //Label1.Text = "sent your job request.";
            }
        }
    }*/
    protected void Close_Click(object sender, EventArgs e)
    {
        Response.Redirect("Current_Opening.aspx");
    }
    
}
