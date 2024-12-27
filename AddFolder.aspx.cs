using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class AddFolder : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Client_number"] == null)
        {
            Response.Redirect("Default.aspx");
        }
      

        /*c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        
        m.CommandText = "select * from folder_master  where cus_id=" + Int32.Parse(Session["client_number"].ToString());
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "folder_master");
        GridView1.DataSource = ds.Tables["folder_master"];
        GridView1.DataBind();
       c.Close();*/
        bind();
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text != "")
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  folder_id  from  folder_master  where folder_name='" + TextBox1.Text + "' and cus_id=" + Int32.Parse(Session["client_number"].ToString());
                SqlDataReader dr1, dr2,dr3;
                dr1 = m.ExecuteReader();
                if (dr1.Read())
                {
                    dr1.Close();
                    Label1.Text = "this name of folder already exisist. ";
                }
                else
                {
                    dr1.Close();

                    m.CommandText = "select  count(folder_id)  from  folder_master";

                    dr2 = m.ExecuteReader();
                    dr2.Read();
                    if (Int32.Parse(dr2[0].ToString()) == 0)
                    {
                        id = 1;
                        dr2.Close();
                    }
                    else
                    {
                        dr2.Close();

                        m.CommandText = "select  max(folder_id)  from  folder_master";

                        dr3 = m.ExecuteReader();
                        dr3.Read();
                        id = Int32.Parse(dr3[0].ToString());
                        id = id + 1;
                        dr3.Close();
                    }



                    m.CommandText = "insert into folder_master values(@folder_id,@Client_number,@foler_name)";
                    m.Parameters.AddWithValue("@folder_id", id);
                 
                    m.Parameters.AddWithValue("@Client_number", Int32.Parse(Session["client_number"].ToString()));
                    m.Parameters.AddWithValue("@foler_name", TextBox1.Text);
                    m.ExecuteNonQuery();
                    Label1.Text = "successfully  add the folder.";
                }
            }
            else
            {
                Label1.Text = "please fillup the folder name.";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        finally
        {
            c.Close();
            bind();
        }
    }
  
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       /* c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        
        
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
       // int row = (int)GridView1.Rows[e.RowIndex];
        //string id = (string)row.FindControl("ex");
        //TextBox id = (TextBox)row.FindControl("folder_id");
        //int id=(int)GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        int id = (int)GridView1.DataKeys[e.RowIndex].Value;
        m.CommandText = "delete from folder_master  where [folder_id]=" + id;
        
        m.ExecuteNonQuery();
       
        c.Close();
        bind();*/
       // GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex].Cells[2].ToString();
        try
        {

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            int id = (int)GridView1.DataKeys[e.RowIndex].Value;
            m.CommandText = "select  can_id_txt  from selected_resume where folder_id=" + (int)GridView1.DataKeys[e.RowIndex].Value; ;
                SqlDataReader dr;
               
                dr = m.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();
                    Label1.Text = "this folder is not empty..";
                }
                else
                {
                    dr.Close();
                   // m.CommandText = "delete from folder_master where Folder_name='" + TextBox2.Text + "' and cus_id=" + Int32.Parse(Session["client_number"].ToString());
                    
                    m.CommandText = "delete from folder_master  where [folder_id]=" + id;
        
                    m.ExecuteNonQuery();
                    Label1.Text = "folder deleted.";
                }

            
           
           
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        finally
        {
            c.Close();
            bind();
        }

        
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "update folder_master set [cus_id]=@cud_id,[Folder_name]=@Folder_name  where [folder_id]=@folder_id";
                m.ExecuteNonQuery();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
     //   GridView r = GridView1.SelectedRow;
        
        //Label1.Text=GridView1.Rows[e.R
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "select * from folder_master  where cus_id=" + Int32.Parse(Session["client_number"].ToString());
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "folder_master");
        GridView1.DataSource = ds.Tables["folder_master"];
        GridView1.DataBind();
        c.Close();
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 1)
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[2].Visible = false;
        }
    }
}

