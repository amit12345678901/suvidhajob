using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Selected_Resume : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
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
                m.CommandText = "select folder_id,Folder_name as [Folder Name]  from  folder_master  where cus_id=" + Session["Client_number"];
                SqlDataAdapter dap = new SqlDataAdapter(m);
                DataSet ds = new DataSet();
                dap.Fill(ds, "folder_master");
                GridView1.DataSource = ds.Tables["folder_master"];
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
                Session["folder_id"] = r1.ToString();
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master where id_txt in(select can_id_txt  from  selected_resume  where cli_id='" + Session["Client_number"] + "' and folder_id=" + r1 + " )";

                   // m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master where id_txt in()";
                   
                    SqlDataAdapter dap = new SqlDataAdapter(m);
                    DataSet ds = new DataSet();
                    dap.Fill(ds, "pyr_master,selected_resume");
                    GridView2.DataSource = ds.Tables["pyr_master,selected_resume"];
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
                Session["id_txt"] = GridView2.DataKeys[r1].Value.ToString();
                /*c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                m.CommandText = "select user_txt from pyr_master where id_txt=" + Session["id_txt"];
                SqlDataReader dr;
                dr = m.ExecuteReader();
                dr.Read();
                Session["user1"] = dr[0].ToString();
                dr.Close();*/

                Response.Redirect("Profile_Form.aspx");
                break;
            case "del":
                int r2 = Int32.Parse((e.CommandArgument).ToString());
                Session["id_txt"] = GridView2.DataKeys[r2].Value.ToString();
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                m.CommandText = "delete from selected_resume  where folder_id=" + Session["folder_id"] + " and can_id_txt=" + Session["id_txt"];
                m.ExecuteNonQuery();
                
                m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master where id_txt in(select can_id_txt  from  selected_resume  where cli_id='" + Session["Client_number"] + "' and folder_id=" + Session["folder_id"] + " )";

                // m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master where id_txt in()";

                SqlDataAdapter dap = new SqlDataAdapter(m);
                DataSet ds = new DataSet();
                dap.Fill(ds, "pyr_master,selected_resume");
                GridView2.DataSource = ds.Tables["pyr_master,selected_resume"];
                GridView2.DataBind();
                c.Close();
                break;
        }
    }
    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
           e.Row.Cells[2].Visible = false;
        }
    }
}
