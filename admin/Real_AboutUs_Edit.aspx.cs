using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Real_AboutUs_Edit : System.Web.UI.Page
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
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  Subject  from  Real_About_Us where ID=1";
                SqlDataReader dr, dr1;
                dr = m.ExecuteReader();
                dr.Read();

                TextBox1.Text = dr[0].ToString();
                dr.Close();

                m.CommandText = "select  Subject  from  Real_About_Us where ID=2";
                dr1 = m.ExecuteReader();
                dr1.Read();

                Editor1.Content = dr1[0].ToString();
                dr1.Close();
                c.Close();

            }
        }
    }
    protected void First_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        //TextBox1.Text = Replace(TextBox1.te, "'", "''");
        TextBox1.Text=TextBox1.Text.Replace("'", "&rsquo;");
        m.CommandText = "update Real_About_Us set Subject='" + TextBox1.Text + "'  where ID=1";
        m.ExecuteNonQuery();
        c.Close();
        Label1.Text = "update successfully.";

    }
    protected void Second_Click(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        Editor1.Content=Editor1.Content.Replace("'", "&rsquo;");
       // Editor1.Content = Replace(Editor1.Content, "'", "''");
        m.CommandText = "update Real_About_Us set Subject='" + Editor1.Content + "'  where ID=2";
        m.ExecuteNonQuery();
        c.Close();
        Label1.Text = "update successfully.";
    }
}

