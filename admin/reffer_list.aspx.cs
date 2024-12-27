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

public partial class admin_reffer_list : System.Web.UI.Page
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
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridView1.Rows[i].Cells[5].Text = Convert.ToDateTime(GridView1.Rows[i].Cells[5].Text).ToShortDateString();
                }

            }
        }
    }

    public void bind()
    {
        try
        {
            dt = g1.return_dt("select id,from_email as [Reffer From],reffer_email as [Reffer To],date1 as [Date(mm/dd/yy)],message as [Message] from reffer_emails");
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

              
                    int rows = g1.ExecDB("delete  from  reffer_emails    where id=" + id);
                    if (rows > 0)
                    {
                        Label1.Text = "Delete successfully.";
                        bind();
                    }
               
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
