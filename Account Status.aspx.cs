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
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

        }
        else
        {
            if (!IsPostBack)
            {
                if (Session["cv_tot"].ToString() != "0")
                {
                    cv.Visible = true;
                }
                if (Session["email_tot"].ToString() != "0")
                {
                    email.Visible = true;
                }
                if (Session["sms_tot"].ToString() != "0")
                {
                    sms.Visible = true;
                }
                if (Session["job_tot"].ToString() != "0")
                {
                    job.Visible = true;
                }

                Session["date_time"] = null;
                TimeSpan ts = new TimeSpan(+5, +30, 0);
                stdate.SelectedDate = DateTime.Now.Date.Add(ts).Date;
                lbstdate.Text = stdate.SelectedDate.ToLongDateString();
                bind();
                
            }
        }

    }

    protected void stdate_SelectionChanged(object sender, EventArgs e)
    {
        lbstdate.Text = stdate.SelectedDate.ToLongDateString();
        stdate.Visible = false;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        stdate.Visible = true;

    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 1)
        {
            
             e.Row.Cells[6].Visible = false;
             e.Row.Cells[7].Visible = false;
             e.Row.Cells[8].Visible = false;

             e.Row.Cells[9].Visible = false;
             e.Row.Cells[10].Visible = false;
             e.Row.Cells[11].Visible = false;

             if (Session["cv_tot"].ToString() == "0")
             {
                 e.Row.Cells[1].Visible = false;
             }
             if (Session["email_tot"].ToString() == "0")
             {
                 e.Row.Cells[3].Visible = false;
             }
             if (Session["sms_tot"].ToString() == "0")
             {
                 e.Row.Cells[4].Visible = false;
             }
             if (Session["job_tot"].ToString() == "0")
             {
                 e.Row.Cells[2].Visible = false;
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
           /* m.CommandText = "select cv_num,remain,spend from clogin_detail  where id_txt=" + Session["Client_number"];
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            total = Int32.Parse(dr[0].ToString());
            remain = Int32.Parse(dr[1].ToString());
            totalspend = Int32.Parse(dr[2].ToString());
            dr.Close();*/
            m.CommandText = "select date1,searh_num,login_time,sms_num,job_num,email_num  from  login_det where uid=" + Session["Client_number"] + Session["date_time"] + " order by date1 desc";
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

    protected void search_Click(object sender, EventArgs e)
    {

        Session["date_time"] = "  and date1 ='" + stdate.SelectedDate + "'";
        bind();
    }
    protected void email_list_Click(object sender, EventArgs e)
    {
        Response.Redirect("email_list.aspx");
    }
    protected void sms_list_Click(object sender, EventArgs e)
    {
        Response.Redirect("sms_list.aspx");
    }
}
