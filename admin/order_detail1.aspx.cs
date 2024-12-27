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

public partial class order_detail1 : System.Web.UI.Page
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

            dt = g1.return_dt("select p.SlNo,ProdPicName,ProdCode,ProdDesc as Description,MRP as Price,o.quan as Quantity from ProdMast p,order_detail o where p.SlNo=o.pid and o.order_id=" + Session["id"] + "  and   p.SlNo in(select pid from order_detail where order_id=" + Session["id"] + ")");
            GridView1.DataSource = dt;
            GridView1.DataBind();
          
        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {

        e.Row.Cells[1].Visible = false;
        e.Row.Cells[2].Visible = false;
        //e.Row.Cells[4].Visible = false;


    }

}
