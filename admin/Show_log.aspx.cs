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

public partial class admin_Show_log : System.Web.UI.Page
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
            bind();
        }
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            Label ldate1 = (Label)GridView1.Rows[i].FindControl("odate");
            ldate1.Text = Convert.ToDateTime(ldate1.Text).ToShortDateString();

        }

    }

    public void bind()
    {
        try
        {

           // dt = g1.return_dt("select id,clid,date1,fname as [First Name],clip as [Ip Address]  from log_drtail,reg_members where reg_members.reg_id=log_drtail.clid order by id desc");
            dt = g1.return_dt("select *  from log_drtail order by id desc");
          
           // id,clid,date1,clip as [Ip Address]
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
       
       // e.Row.Cells[2].Visible = false;
       // e.Row.Cells[3].Visible = false;
        //e.Row.Cells[4].Visible = false;

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {


          
            case "client":
                int r4 = Int32.Parse((e.CommandArgument).ToString());

                Session["user_no"] = GridView1.DataKeys[r4].Values[0].ToString();

                Response.Redirect("view_detail.aspx");
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
