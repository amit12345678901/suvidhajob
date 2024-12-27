using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Addmin_Edit : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int maxid = 0, rows = 0;


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
            if (!IsPostBack)
            {
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {
                    Response.Redirect("Admin_main.aspx");
                }
                else
                {
                    bind();
                }
            }
        }
                    
    }
   

public void bind()
{
    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
    c.Open();
    m.Connection = c;

    m.CommandText = "select ID,user_name as [User Id],pass as [Password],uname as [Name],roll as [Roll] from admin_master";
    SqlDataAdapter dap = new SqlDataAdapter(m);
    DataSet ds = new DataSet();
    dap.Fill(ds, "admin_master");
    GridView1.DataSource = ds.Tables["admin_master"];
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

   // GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
    switch (e.CommandName.Trim())
    {

        case "Delete1":
            int id = Convert.ToInt32(e.CommandArgument);
            rows = g1.ExecDB("delete  from  user_power    where uid=" + id);
            rows = g1.ExecDB("delete  from  admin_master    where ID=" + id);
            if (rows > 0)
            {
                bind();
                Label1.Text = "delete successfully.";
            }
            break;
        case "Modifie":
            int r2 = Int32.Parse((e.CommandArgument).ToString());

            Session["admin_id"] = GridView1.DataKeys[r2].Value.ToString();
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select user_name  from  admin_master    where ID=" + Int32.Parse(GridView1.DataKeys[r2].Value.ToString());
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            Session["user"] = dr[0].ToString();
            dr.Close();
           
            c.Close();
            Response.Redirect("Admin_Modifie.aspx");
            break;

    }
}
protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
    GridView1.PageIndex = e.NewPageIndex;
    GridView1.DataBind();
}
}
