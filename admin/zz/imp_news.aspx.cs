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
using System.Data;
using System.Data.SqlClient;

public partial class admin_imp_news : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["login"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
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

        m.CommandText = "select id,news from imp_news order by id desc";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "imp_news");
        GridView1.DataSource = ds.Tables["imp_news"];
        GridView1.DataBind();
        c.Close();

      
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        if (news.Text != "")
        {
          

                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                if (Session["imp_id"] == null)
                {
                m.CommandText = "select  count(id)  from  imp_news";
                SqlDataReader dr, dr2;
                dr = m.ExecuteReader();
                dr.Read();
                if (Int32.Parse(dr[0].ToString()) == 0)
                {
                    id = 1;
                    dr.Close();
                }
                else
                {
                    dr.Close();

                    m.CommandText = "select  max(id)  from  imp_news";

                    dr2 = m.ExecuteReader();
                    dr2.Read();
                    id = Int32.Parse(dr2[0].ToString());
                    id = id + 1;
                    dr2.Close();
                }


                m.CommandText = "insert into imp_news values(@id,@news)";
                m.Parameters.AddWithValue("@id", id);

                m.Parameters.AddWithValue("@news", news.Text.ToString().Trim().Replace("'", "''"));
                news.Text = "";
                Label1.Text = "Add sucessfully.";

                m.ExecuteNonQuery();

            }
            else
            {
                m.CommandText = "update imp_news set news='" + news.Text.ToString().Trim().Replace("'", "''") + "' where id=" + Session["imp_id"];
                m.ExecuteNonQuery();
                news.Text = "";
                Label1.Text = "Update sucessfully.";
                Session["imp_id"] = null;
            }
                c.Close();
                bind();

        }
        else
        {
            Label1.Text = "please insert News.";
        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[4].Visible = false;
            e.Row.Cells[3].Visible = false;
            
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        switch (e.CommandName.Trim())
        {

            case "Delete1":

                int id = Convert.ToInt32(e.CommandArgument);
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
              m.CommandText  ="delete  from  imp_news    where id=" + id;
              m.ExecuteNonQuery();
              c.Close();
                    Label1.Text = "Delete successfully.";
                    bind();
               
                break;
            case "Modifie":

                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["imp_id"] = GridView1.Rows[r2].Cells[3].Text;
              
                news.Text = GridView1.Rows[r2].Cells[4].Text;
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
