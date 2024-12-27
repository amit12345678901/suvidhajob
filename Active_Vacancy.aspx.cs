using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Active_Vacancy : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Client_number"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Active":
                int r = Int32.Parse((e.CommandArgument).ToString());
                int id1 = Int32.Parse(GridView1.DataKeys[r].Value.ToString());
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "update post_vaca set hidden_txt=0 where pv_id_txt=" + id1;
                m.ExecuteNonQuery();
                c.Close();
                GridView1.EditIndex = -1;
                bind();
                Label1.Text = "Active this job successfully.";
                break;
        }
    }
    public void bind()
    {

        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select pv_id_txt,fa_txt as [Functional Area],loc_txt as Location,post_date as [Post Date] from post_vaca  where cid=" + Int32.Parse(Session["Client_number"].ToString()) + " and hidden_txt=1";

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
            e.Row.Cells[1].Visible = false;
        }
    }
}

