using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class client_update : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {
     //   TextBox1.Visible = false;
       // Button1.Visible = false;
        bind();
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "select id,cname  as [Client Name]  from client";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "client");
        GridView1.DataSource = ds.Tables["client"];
        GridView1.DataBind();
        c.Close();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[2].Visible = false;
           
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
     
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;

                  

                    m.CommandText = "delete from    client where    id=" + id;
                    m.ExecuteNonQuery();
                    

                   
                    Label1.Text = "delete successfully.";
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

                break;
            case "mod":

                int r2 = Int32.Parse((e.CommandArgument).ToString());

                int id1 = Int32.Parse(GridView1.DataKeys[r2].Value.ToString());
                Session["id3"] = id1.ToString();
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select cname from    client where    id=" + id1;
                SqlDataReader dr;
                dr = m.ExecuteReader();
                dr.Read();
                TextBox1.Text = dr[0].ToString();
                dr.Close();
                c.Close();
                TextBox1.Visible = true;
                Button1.Visible = true;

               // Response.Redirect("placed_Candidate_Modify.aspx");
                break;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "update    client set cname='" + TextBox1.Text + "'  where    id=" + Session["id3"];
        Label1.Text = "successfully  update.";

        m.ExecuteNonQuery();
        c.Close();
        bind();
        TextBox1.Visible = false;
        Button1.Visible = false;
    }
}
