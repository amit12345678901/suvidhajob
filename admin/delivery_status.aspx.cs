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

public partial class admin_delivery_status : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

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
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  status  from order_master where order_id=" + Session["oid"];

        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();
        delivery.SelectedValue = dr[0].ToString();
        dr.Close();
        c.Close();

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "update order_master set status='" + delivery.SelectedValue.ToString() + "' where order_id=" + Session["oid"];
        m.ExecuteReader();
        c.Close();
        Response.Write("Succee");
    }
}
