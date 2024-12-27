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
using System.Drawing;

public partial class Order_Detail : System.Web.UI.Page
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
       

    }

    public void bind()
    {
        try
        {

            dt = g1.return_dt("select order_master.order_id,order_master.user_id,order_master.order_date,order_master.web_bill as [Bill Number],order_master.name,order_master.email,order_master.bill_tel as Telephone,order_master.Payment,order_master.pay_mode as [Pay Mode],order_master.status as [Delivery Status],order_master.paym_id as [Payment Id],order_master.tran_id as [Transaction Id],order_master.result as [Result],order_master.bill_no as [Track Id],order_master.ref_no as [Reference No],order_master.error_txt as [Error]  from order_master,reg_members where reg_members.reg_id=order_master.user_id and reg_members.ctype='r' order by order_id desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();
          
        }
        catch (Exception ex)
        {
            ex.ToString();
        }

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {

            if (GridView1.Rows[i].Cells[10].Text != null)
            {


                if (GridView1.Rows[i].Cells[10].Text == "Failure")
                {

                    GridView1.Rows[i].Cells[10].ForeColor = Color.Red;
                }
                else
                {
                    if (GridView1.Rows[i].Cells[10].Text == "Not Confirm")
                    {

                        GridView1.Rows[i].Cells[10].ForeColor = Color.Blue;
                    }
                    else
                    {

                        GridView1.Rows[i].Cells[10].ForeColor = Color.Green;
                    }

                }
            }

            Label ldate1 = (Label)GridView1.Rows[i].FindControl("odate");
            ldate1.Text = Convert.ToDateTime(ldate1.Text).ToShortDateString();

        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
       
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[5].Visible = false;
            e.Row.Cells[3].Visible = false;

            e.Row.Cells[14].Visible = false;
            e.Row.Cells[15].Visible = false;
            e.Row.Cells[13].Visible = false;
            e.Row.Cells[17].Visible = false;
            e.Row.Cells[18].Visible = false;
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id7 = Convert.ToInt32(e.CommandArgument);

                rows = g1.ExecDB("delete from order_master where order_id=" + id7);
                rows = g1.ExecDB("delete from order_detail where order_id=" + id7);
                if (rows > 0)
                {
                    lb.Text = "Delete Successfully.....";
                    bind();
                }
                //Response.Redirect("order_detail1.aspx");
                break;
            case "detail":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["id"] = GridView1.DataKeys[r2].Values[0].ToString();
                
                Response.Redirect("order_detail1.aspx");
                break;
            case "inform":
                int r3 = Int32.Parse((e.CommandArgument).ToString());

                Session["oid"] = GridView1.DataKeys[r3].Values[0].ToString();

                Response.Redirect("order_informetion.aspx");
                break;
            case "client":
                int r4 = Int32.Parse((e.CommandArgument).ToString());

                Session["user_no"] = GridView1.DataKeys[r4].Values[1].ToString();

                Response.Redirect("view_detail.aspx");
                break;

            case "delivery":
                int r5 = Int32.Parse((e.CommandArgument).ToString());

                Session["oid"] = GridView1.DataKeys[r5].Values[0].ToString();

                Response.Redirect("delivery_status.aspx");
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
