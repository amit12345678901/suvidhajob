using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Placed_Candidate_update : System.Web.UI.Page
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


            bind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int r1 = Int32.Parse((e.CommandArgument).ToString());
                int id = Int32.Parse(GridView1.DataKeys[r1].Value.ToString());
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;

                    m.CommandText = "select link from    placement where    id=" +id;
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    dr.Read();
                    System.IO.File.Delete("D:\\webserver\\ackgroup.in\\www\\placement\\picture\\" + dr[0].ToString());
                    System.IO.File.Delete("D:\\webserver\\ackgroup.in\\www\\admin\\picture\\" + dr[0].ToString());
                    dr.Close();

                    m.CommandText = "delete from    placement where    id=" + id;
                    m.ExecuteNonQuery();
                    c.Close();
                   
                    bind();
                    Label1.Text = "delete successfully.";
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
            case "mod":
                
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["id2"] = GridView1.DataKeys[r2].Value.ToString();

                

                Response.Redirect("placed_Candidate_Modify.aspx");
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
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "select id,can_name  as [Candidate Name],cname as company  from placement";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "placement");
        GridView1.DataSource = ds.Tables["placement"];
        GridView1.DataBind();
        c.Close();
        //Label1.Text = (Int32.Parse(DateTime.Now.Year.ToString())-1).ToString();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
