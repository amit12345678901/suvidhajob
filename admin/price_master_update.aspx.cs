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

public partial class price_master_update : System.Web.UI.Page
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
                Session["cat_group"] = null;
                bind();
            }
            
        }
    }
  
    protected void cat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cat.SelectedValue.ToString() != "0")
        {
            Session["cat_group"] = cat.SelectedValue;
            bind();
        }
    }
    
    public void bind()
    {
        try
        {
           
            dt = g1.return_dt("select id,min1,max1 from price_master");
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
                
                rows= g1.ExecDB("delete  from  price_master    where id=" + id);
                if (rows > 0)
                {
                    bind();
                    Label1.Text = "delete successfully.";
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["pr_id"] = GridView1.DataKeys[r2].Value.ToString();
                dt1 =g1.return_dt("select min1,max1  from  price_master    where id=" + Session["pr_id"]);
                if (dt1.Rows.Count > 0)
                {
                    rform.Text = dt1.Rows[0]["min1"].ToString();
                    rto.Text = dt1.Rows[0]["max1"].ToString();
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
    protected void update_Click(object sender, EventArgs e)
    {
        if (Session["pr_id"] != null)
        {
            if (rform.Text != "" && rto.Text != "")
            {
                if (Int32.Parse(rform.Text) >= Int32.Parse(rto.Text))
                {
                    Label2.Text = "Price range is incorrect.";
                }
                else
                {

                   dt1 = g1.return_dt("select *  from  price_master where min1=" + rform.Text + " and max1=" + rto.Text);
                   
                    if (dt1.Rows.Count>0)
                    {

                        Label2.Text = "This range is already exist.";
                      
                    }
                    else
                    {
                     
                        rows =g1.ExecDB("update  price_master set min1=" + Int32.Parse(rform.Text) + ",max1=" + Int32.Parse(rto.Text) + "    where id=" + Session["pr_id"]);
                        if (rows > 0)
                        {
                            Label2.Text = "update successfully.";
                            rform.Text = "";
                            rto.Text = "";
                            Session["pr_id"] = null;
                            bind();
                        }
                    }
                }
            }
            else
            {
                Label2.Text = "all crieteria are not fillup.";
            }
        }
        else
        {
            Label2.Text = "please select update range.";
        }
    }
}
