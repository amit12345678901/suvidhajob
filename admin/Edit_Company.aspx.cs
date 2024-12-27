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
    General g1 = new General();
    int rows=0;
    
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

                /*
                if (Convert.ToString(Session["cmp_edit"]) == "False")
                {
                    e.Row.Cells[0].Visible = false;
                }
                */
                if (Convert.ToString(Session["cmp_del"]) == "False")
                {
                    e.Row.Cells[5].Visible = false;
                }

            }



            e.Row.Cells[11].Visible = false;
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[13].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[7].Visible = false;
            e.Row.Cells[8].Visible = false;
            e.Row.Cells[9].Visible = false;
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {
        string uid = "", uid1 = "";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ch1 = (CheckBox)GridView1.Rows[i].FindControl("ch3");
            Label lbid4 = (Label)GridView1.Rows[i].FindControl("lbid2");

            if (ch1.Checked == true)
            {
                uid += lbid4.Text + ",";
            }
           
        }

        if (uid != "")
        {
            uid = uid.Remove(uid.Length - 1);
        }
      
        if (uid != "")
        {
            
            rows = g1.ExecDB("delete  from  clogin_detail    where id_txt in(" + uid + ")");
        }

       
        if (rows > 0)
        {
            bind();
            Label1.Text = "Delete Successfully...";
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


        if (Request.QueryString["cat"] == null)
        {
            m.CommandText = "select id_txt,co_name_txt2,Username_txt,password_txt,email_txt,Client_number,auth_txt from clogin_detail order by id_txt desc";

        }

        else if (Request.QueryString["cat"] == "inter")
        {
            m.CommandText = "select id_txt,co_name_txt2,Username_txt,password_txt,email_txt,Client_number,auth_txt from clogin_detail where Client_number like 'SPC%'  order by id_txt desc";

        }
         else if (Request.QueryString["cat"] == "exter")
         {
m.CommandText = @"SELECT id_txt, start_date, Client_number, co_name_txt2, Username_txt, password_txt, email_txt, auth_txt 
                  FROM clogin_detail 
                  WHERE Client_number NOT LIKE 'SPC%' OR Client_number IS NULL 
                  ORDER BY id_txt DESC";


         }

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

