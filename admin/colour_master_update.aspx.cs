using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class colour_master_update : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int rows = 0;
    int id;


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
            dt =g1.return_dt("select id,colour_name from colour_master");
          
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



                string name = g1.reterive_val("select  link  from  colour_master where id=" + id);
                
                rows = g1.ExecDB("delete  from  colour_master     where id=" + id);
                if (rows > 0)
                {
                    bind();
                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\colour_picture\\" + name);

                    Label1.Text = "delete successfully.";
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["col_id"] = GridView1.DataKeys[r2].Value.ToString();
               
                Response.Redirect("colour_master_modify.aspx");
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
