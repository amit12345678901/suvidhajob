using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;


public partial class Admin_update : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
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

    public void bind()
    {
        try
        {
            dt = g1.return_dt("select id,name1 as [Name of User],uname as [User Id],pass as [Password] from admin_login where id!=1050");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
      
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
      
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);

                dt = g1.return_dt("select name1,uname,pass from  admin_login where id=" + Session["admin_id"]);
                if (dt.Rows.Count > 0)
                {

                }
                else
                {
                    int rows = g1.ExecDB("delete  from  admin_login    where id=" + id);
                    if (rows > 0)
                    {
                        Label1.Text = "Delete successfully.";
                        bind();
                    }
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["admin_id"] = GridView1.DataKeys[r2].Value.ToString();
               
                Response.Redirect("Admin_modify.aspx");
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
