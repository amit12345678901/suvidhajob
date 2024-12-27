using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Urgent_jobs_Search_Informetion : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string exp, loc, fun, key;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

       
        
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;


        m.CommandText = "select pv_id_txt,in_txt as Industry,fa_txt as [Functional Area],des_txt as Designation,year_min_txt as [Minimum Experience],year_max_txt as [Maximum Experience],ab_txt as Age,loc_txt as Location,salary_txt as Salary,jobr_txt as [Job Responsibility] from post_vaca  where job_status='Urgent' and hidden_txt=0";
       


         SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "post_vaca");
        GridView1.DataSource = ds.Tables["post_vaca"];
        GridView1.DataBind();
        c.Close();

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Apply":
                int r = Int32.Parse((e.CommandArgument).ToString());
                Session["pv_id_txt"] = GridView1.DataKeys[r].Value.ToString();
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
                    m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id ;
                    SqlDataReader dr, dr4,dr2,dr3;
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

            case "Detail":

                int r1 = Int32.Parse((e.CommandArgument).ToString());
                Session["pv_id_txt"] = GridView1.DataKeys[r1].Value.ToString();
                Response.Redirect("Job_Detail_Informetion.aspx");
                break;

        }


    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[2].Visible = false;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}

