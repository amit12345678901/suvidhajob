using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Account_Status : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    public int remain, total, totalspend = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cvsearch_id"] == null)
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
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 1)
        {
             e.Row.Cells[5].Visible = false;
             e.Row.Cells[3].Visible = false;
             e.Row.Cells[4].Visible = false;
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
            m.CommandText = "select cv_num,remain,spend from cvsearch_num  where id=" + Session["cvsearch_id"];
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            total = Int32.Parse(dr[0].ToString());
            remain = Int32.Parse(dr[1].ToString());
            totalspend = Int32.Parse(dr[2].ToString());
            dr.Close();
            m.CommandText = "select date1,searh_num,login_time  from  login_det where uid=" + Session["cvsearch_id"] + " order by date1 desc";
            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "login_det");
            GridView1.DataSource = ds.Tables["login_det"];
            GridView1.DataBind();
          
          // Label2.Text =GridView1.Rows.Count.ToString();

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                //Label lcount = (Label)GridView1.Rows[i].FindControl("search_count");
                Label ldate1 = (Label)GridView1.Rows[i].FindControl("odate");

                //totalspend += Int32.Parse(lcount.Text);
                ldate1.Text = (Convert.ToDateTime(ldate1.Text).ToLongDateString()).ToString();

            }

            total = remain + totalspend; 

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
