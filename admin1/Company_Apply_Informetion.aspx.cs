using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Company_Apply_Informetion : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {


            
            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                //m.CommandText = "select pv_id_txt,in_txt as Industry,fa_txt as [Functional Area],loc_txt as Location,post_date as [Post Daate]  from  post_vaca  where cid=" + Session["Client_number"]+"  and hidden_txt=false";
                m.CommandText = "select pv_id_txt,in_txt as Industry,fa_txt as [Functional Area],loc_txt as Location,post_date as [Posting Date]  from  post_vaca  where  hidden_txt=0";
                
                
                SqlDataAdapter dap = new SqlDataAdapter(m);
                DataSet ds = new DataSet();
                dap.Fill(ds, "post_vaca");
                GridView1.DataSource = ds.Tables["post_vaca"];
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
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[1].Visible = false;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            
            case "Detail":
                int r1 = Int32.Parse((e.CommandArgument).ToString());
                r1=Int32.Parse(GridView1.DataKeys[r1].Value.ToString());
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION,mob_txt as Mobile from pyr_master where id_txt in(select can_id  from  apply_master  where pv_id=" + r1+" )";

                   // m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master where id_txt in()";
                   
                    SqlDataAdapter dap = new SqlDataAdapter(m);
                    DataSet ds = new DataSet();
                    dap.Fill(ds, "pyr_master,apply_master");
                    GridView2.DataSource = ds.Tables["pyr_master,apply_master"];
                    GridView2.DataBind();

                }
                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }
                finally
                {
                    c.Close();
                }
                break;
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView2.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {
            case "view":
                int r1 = Int32.Parse((e.CommandArgument).ToString());
                Session["can_id"] = GridView2.DataKeys[r1].Value.ToString();
                /*c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                m.CommandText = "select user_txt from pyr_master where id_txt=" + Session["id_txt"];
                SqlDataReader dr;
                dr = m.ExecuteReader();
                dr.Read();
                Session["user1"] = dr[0].ToString();
                dr.Close();*/

                Response.Redirect("Modifie_Candidate.aspx");
                break;
        }
    }
    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
           e.Row.Cells[1].Visible = false;
        }
    }
}
