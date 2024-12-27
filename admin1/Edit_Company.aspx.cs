using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Edit_Comppany : System.Web.UI.Page
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
                bind();
            }
        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {

            if (Convert.ToString(Session["roll"]) != "Administrator")
            {


                if (Convert.ToString(Session["cmp_edit"]) == "False")
                {
                    e.Row.Cells[0].Visible = false;
                }
                if (Convert.ToString(Session["cmp_del"]) == "False")
                {
                    e.Row.Cells[1].Visible = false;
                }

            }



            e.Row.Cells[2].Visible = false;
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
                SqlDataReader dr,dr1,dr2;
                m.CommandText = "select  *  from  post_vaca where cid=" + id;
               
                dr = m.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();
                    Label1.Text = "Posted Job already exist. You can't delete.";
                }
                else
                {
                    dr.Close();

                    m.CommandText = "select  *  from  folder_master where cus_id=" + id;

                    dr1 = m.ExecuteReader();
                    if (dr1.Read())
                    {
                        dr1.Close();
                        m.CommandText = "delete  from  folder_master    where cus_id=" + id;
                        m.ExecuteNonQuery();
                    }
                    dr1.Close();

                    m.CommandText = "select  *  from  selected_resume where cli_id='" + id.ToString() + "'";

                    dr2 = m.ExecuteReader();
                    if (dr2.Read())
                    {
                        dr2.Close();
                        m.CommandText = "delete  from  selected_resume    where cli_id='" + id.ToString() + "'";
                        m.ExecuteNonQuery();
                    }
                    dr2.Close();

                    m.CommandText = "delete  from  clogin_detail    where id_txt=" + id;
                    m.ExecuteNonQuery();
                }
                c.Close();
                bind();
                Label1.Text = "delete successfully.";
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());
               
                Session["com_id"]=GridView1.DataKeys[r2].Value.ToString();
                Response.Redirect("Modidie_Company.aspx");
                break;
        }
    }

    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        //,cv_num as [Total Search],remain,spend

        m.CommandText = "select id_txt,co_name_txt2 as [Company Name] from clogin_detail order by id_txt";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "clogin_detail");
        GridView1.DataSource = ds.Tables["clogin_detail"];
        GridView1.DataBind();
        c.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();

    }
}

