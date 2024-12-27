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

public partial class admin_banner_edit : System.Web.UI.Page
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
            dt = g1.return_dt("select id,name as [Name]  from banner  order by id desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }


    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":

                int id = Convert.ToInt32(e.CommandArgument);
                string name = g1.reterive_val("select link from banner where id=" + id);
                if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\banner_image\\" + name))
                {


                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\banner_image\\" + name);


                }
                if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\banner_image\\" + "big_" + name))
                {


                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\banner_image\\" + "big_" + name);


                }
              //  System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\banner_image\\" + name);
                rows = g1.ExecDB("delete  from  banner  where id=" + id);

                if (rows > 0)
                {
                    Label1.Text = "delete successfully.";

                    bind();
                }


                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());
                Session["id"] = GridView1.Rows[r2].Cells[2].Text;
                name.Text = GridView1.Rows[r2].Cells[3].Text;
                name.Focus();
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
        bind();
    }


    protected void update_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            if (name.Text != "")
            {


                rows = g1.ExecDB("update  banner set name='" + name.Text + "'    where id=" + Session["id"].ToString());
                if (rows > 0)
                {
                    name.Text = "";
                    Session["id"] = null;
                    bind();
                }

                Label1.Text = "update successfully.";

            }
            else
            {
                Label1.Text = "select first  data.";
            }
        }
        else
        {
            Label1.Text = "please select update Image.";
        }
    }

}