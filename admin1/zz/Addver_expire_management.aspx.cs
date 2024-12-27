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

public partial class Addver_expire_management : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");

        }
        else
        {
            if (!IsPostBack)
            {
                Session["days"] = "31";
                date1.SelectedValue = "1 Month";
                bind();


            }
        }

    }

    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            if (Session["days"].ToString() != "expire")
            {
                m.CommandText = "select a.id,p.name1,a.page_position,a.st_date,a.en_date from add_sys a,page_name p where a.page_name=p.id  a.en_date  BETWEEN '" + System.DateTime.Now.Date + "' and '" + System.DateTime.Now.AddDays(31) + "' order by a.en_date";
               // m.CommandText = "select t.id,t.name,c.catagorie1,t.st_date,t.en_date,t.amount1 from trns_data t,catagorie c where c.id=t.catagorioe and  en_date  BETWEEN '" + System.DateTime.Now.Date + "' and '" + System.DateTime.Now.AddDays(Int32.Parse(Session["days"].ToString())) + "' order by en_date";

            }
            else
            {
                m.CommandText = "select a.id,p.name1,a.page_position,a.st_date,a.en_date from add_sys a,page_name p where a.page_name=p.id  a.en_date <'" + System.DateTime.Now.Date + "' order by a.en_date";
               // m.CommandText = "select t.id,t.name,c.catagorie1,t.st_date,t.en_date,t.amount1 from trns_data t,catagorie c  where   en_date <'" + System.DateTime.Now.Date + "'  order by en_date";
            }


          //  m.CommandText = "select id,page_name,page_position,st_date,en_date from add_sys where  en_date  BETWEEN '" + System.DateTime.Now.Date + "' and '" + System.DateTime.Now.AddDays(31) + "' order by en_date";

            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "add_sys,page_name");
            GridView1.DataSource = ds.Tables["add_sys,page_name"];
            GridView1.DataBind();
            c.Close();

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                Label sd = (Label)GridView1.Rows[i].FindControl("sdate1");
                Label ed = (Label)GridView1.Rows[i].FindControl("edate1");
                sd.Text = Convert.ToDateTime(sd.Text).ToLongDateString();
                ed.Text = Convert.ToDateTime(ed.Text).ToLongDateString();

                Label rem = (Label)GridView1.Rows[i].FindControl("remain");
                TimeSpan timespan = Convert.ToDateTime(rem.Text).Subtract(System.DateTime.Now.Date);

                rem.Text = timespan.TotalDays.ToString();
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

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[11].Visible = false;
            e.Row.Cells[7].Visible = false;
            e.Row.Cells[8].Visible = false;
            e.Row.Cells[9].Visible = false;
            e.Row.Cells[10].Visible = false;
        }

    }
    protected void date1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (date1.Text == "1 Month")
        {
            Session["days"] = "31";
        }
        if (date1.Text == "2 Month")
        {
            Session["days"] = "61";
        }
        if (date1.Text == "3 Month")
        {
            Session["days"] = "91";
        }
        if (date1.Text == "6 Month")
        {
            Session["days"] = "181";
        }
        if (date1.Text == "9 Month")
        {
            Session["days"] = "271";
        }
        if (date1.Text == "12 Month")
        {
            Session["days"] = "365";
        }
        if (date1.Text == "Expired")
        {
            Session["days"] = "expire";
        }

        bind();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //  GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "delete  from  add_sys    where id=" + id;
                m.ExecuteNonQuery();
                c.Close();
                bind();

                break;
            case "Modifie":

                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["id"] = GridView1.DataKeys[r2].Value.ToString();

                Response.Redirect("Addsys_Edit.aspx");
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
