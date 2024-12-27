using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Company_Update_Vacancy : System.Web.UI.Page
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
            bind();
        }
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "select pv_id_txt,cname_txt  as [Company Name],in_txt as [Industry],fa_txt as [Functional Area],loc_txt as Location from post_vaca  where hidden_txt=0 and cid=" + Int32.Parse(Session["client_number"].ToString());
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "post_vaca");
        GridView1.DataSource = ds.Tables["post_vaca"];
        GridView1.DataBind();
        c.Close();
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[2].Visible = false;
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
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "update    post_vaca set hidden_txt=1    where pv_id_txt=" + id;
                m.ExecuteNonQuery();
                c.Close();
                bind();
                Label1.Text = "updated successfully.";
                break;
            case "mod":
                Label1.Text = "mmm";
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["com_id"] = GridView1.DataKeys[r2].Value.ToString();
                Response.Redirect("Modifie_Vacancy.aspx");
                break;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();
    }
}
