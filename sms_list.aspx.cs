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


public partial class placement_sms_list : System.Web.UI.Page
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

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();

    }
    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "select name as [Name],mb as [Mobile No.],mes as [Message],date1 as [Date]  from  sent_sms where clid=" + Session["Client_number"] + " order by date1 desc";
            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "sent_sms");
            GridView1.DataSource = ds.Tables["sent_sms"];
            GridView1.DataBind();

            for (int i1 = 0; i1 < GridView1.Rows.Count; i1++)
            {
                if (GridView1.Rows[i1].Cells[3].Text != "")
                {
                    GridView1.Rows[i1].Cells[3].Text = Convert.ToDateTime(GridView1.Rows[i1].Cells[3].Text).ToLongDateString().ToString();
                }
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        finally
        {
            c.Close();
        }

    }


}
