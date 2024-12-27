using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class view_user : System.Web.UI.Page
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

            dt = g1.return_dt("select reg_id,fname as [First Name],lname  as [Last Name],email as Email,telphone as Telephone from reg_members order by reg_id desc");
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
            e.Row.Cells[4].Visible = false;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                

                int id12 = Convert.ToInt32(e.CommandArgument);


                rows = g1.ExecDB("delete  from  reg_members    where reg_id=" + id12);
                if (rows > 0)
                {
                    Label1.Text = "delete successfully.";
                    bind();
                }
                break;

            case "Block":
               /* int r1 = Int32.Parse((e.CommandArgument).ToString());
                int id = Int32.Parse(GridView1.DataKeys[r1].Value.ToString());
            
                m.CommandText = "update  reg_members set Active1='no'    where user_no=" + id;
                m.ExecuteNonQuery();
                c.Close();
                bind();
                Label1.Text = "Block successfully.";
                 */
                break;
            case "unBlock":
                int r7 = Int32.Parse((e.CommandArgument).ToString());
                Session["user_no"] = GridView1.DataKeys[r7].Value.ToString();
                Response.Redirect("User_Modify.aspx");
                break;
            case "Detail":
                int r2 = Int32.Parse((e.CommandArgument).ToString());
                Session["user_no"] = GridView1.DataKeys[r2].Value.ToString();

               /* m.CommandText = "select user_name  from  reg_members    where reg_id=" + Int32.Parse(GridView1.DataKeys[r2].Value.ToString());
                 OleDbDataReader dr;
                 dr = m.ExecuteReader();
                 dr.Read();
                 Session["user"] = dr[0].ToString();
                 dr.Close();
                 c.Close();
                 */

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
