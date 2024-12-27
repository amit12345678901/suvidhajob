using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Edit : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected string pageno = "";
    General g1 = new General();
    DataTable dt4 = new DataTable();

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
                bind();
               
            }
            pageno = (Int32.Parse(GridView1.PageIndex.ToString()) + 1).ToString() ;
        }
        
    }
    public void bind()
    {


        /*c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        if (Request.QueryString["date1"] != null && Request.QueryString["date1"] != null)
        {

            m.CommandText = "select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n from pyr_master where update_date between '" + Convert.ToDateTime(Request.QueryString["date1"]).ToShortDateString() + "' and '" + Convert.ToDateTime(Request.QueryString["date2"]).ToShortDateString() + "' order by id_txt desc";

            dt4 = g1.return_dt("select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n from pyr_master where update_date between '" + Convert.ToDateTime(Request.QueryString["date1"]).ToShortDateString() + "' and '" + Convert.ToDateTime(Request.QueryString["date2"]).ToShortDateString() + "' order by id_txt desc");
        }
        else
        {

            m.CommandText = "select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n from pyr_master  order by id_txt desc";


            dt4 = g1.return_dt("select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n from pyr_master  order by id_txt desc");

        }
            SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "pyr_master");
        GridView1.DataSource = ds.Tables["pyr_master"];
        GridView1.DataBind();
        c.Close();
        lbtot.Text = dt4.Rows.Count.ToString();
         * */
        if (frmdt.Text != "" && todt.Text != "")
        {

          
            dt4 = g1.return_dt("select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n from pyr_master where update_date between '" + Convert.ToDateTime(frmdt.Text).ToShortDateString() + "' and '" + Convert.ToDateTime(todt.Text).ToShortDateString() + "' order by id_txt desc");
        }
        else
        {

        

            dt4 = g1.return_dt("select id_txt,name_txt,mob_txt,in_txt,user_txt,pass_txt,email_txt,t_n,f_n,Convert(varchar(10),update_date,103) as update_date from pyr_master  order by id_txt desc");

        }
        GridView1.DataSource = dt4;
        GridView1.DataBind();
        lbtot.Text = dt4.Rows.Count.ToString();
    }

  
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 4)
        {
            if (Convert.ToString(Session["roll"]) != "Administrator")
            {
               
        
            if (Convert.ToString(Session["cand_edit"]) == "False")
            {
                e.Row.Cells[5].Visible = false;
                e.Row.Cells[7].Visible = false;
            }
            if (Convert.ToString(Session["cand_delt"]) == "False")
            {
                e.Row.Cells[6].Visible = false;
            }

            }
            e.Row.Cells[16].Visible = false;
            e.Row.Cells[8].Visible = false;
            e.Row.Cells[9].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[11].Visible = false;
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[13].Visible = false;

            e.Row.Cells[14].Visible = false;
            e.Row.Cells[15].Visible = false;
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
                SqlDataReader  dr1, dr2;

                m.CommandText = "select  *  from  selected_resume where can_id_txt=" + id;
                dr2 = m.ExecuteReader();
                if (dr2.Read())
                {
                    dr2.Close();
                    m.CommandText = "delete  from  selected_resume    where can_id_txt=" + id;
                    m.ExecuteNonQuery();
                }
                dr2.Close();

                m.CommandText = "select  *  from  apply_master where can_id=" + id;
                dr1 = m.ExecuteReader();
                if (dr1.Read())
                {
                    dr1.Close();
                    m.CommandText = "delete  from  apply_master    where can_id=" + id;
                    m.ExecuteNonQuery();
                }
                dr1.Close();

                m.CommandText = "delete  from  pyr_master    where id_txt=" + id;
                m.ExecuteNonQuery();
                c.Close();
                bind();
                Label1.Text = "delete successfully.";
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["can_id"] = GridView1.DataKeys[r2].Value.ToString();
                Response.Redirect("Modifie_Candidate.aspx?canid=" + Session["can_id"]);
                break;

            case "views":
                int r9 = Int32.Parse((e.CommandArgument).ToString());
                Session["can_id"] = GridView1.DataKeys[r9].Value.ToString();
                Response.Redirect("Viewprofile_Form.aspx?canid=" + Session["can_id"]);
                break;
            case "upload":
                try
                {
                    int r3 = Int32.Parse((e.CommandArgument).ToString());
                     r3 = Int32.Parse(GridView1.DataKeys[r3].Value.ToString());
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select user_txt  from  pyr_master    where id_txt=" + r3;
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    dr.Read();
                    Session["user_txt"] = dr[0].ToString();
                    dr.Close();
                }
                catch(Exception ex)
                {
                    Label1.Text = ex.ToString();
                }
                finally
                {
                    c.Close();
                }
           
                Response.Redirect("cv_upload.aspx");
                break;
            case "update":

                try
                {
                    int r4 = Int32.Parse((e.CommandArgument).ToString());
                     r4 = Int32.Parse(GridView1.DataKeys[r4].Value.ToString());
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select user_txt  from  pyr_master    where id_txt=" + r4;
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    dr.Read();
                    Session["user_txt"] = dr[0].ToString();
                    dr.Close();
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }
                finally
                {
                    c.Close();
                }
                
                Response.Redirect("update_cv.aspx");
                break;


        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        pageno = (Int32.Parse(GridView1.PageIndex.ToString()) + 1).ToString();
        bind();
        
    }
    protected void srch_Click(object sender, EventArgs e)
    {
        bind();
    }
}
