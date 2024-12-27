using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Block_Form : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_txt"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {

            
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select Status_txt from pyr_master  where user_txt='" + Session["user_txt"] + "'";/// +TextBox1.Text + "'";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    dr.Read();
                    if (Convert.ToBoolean(dr[0].ToString()) == true)
                    {


                        Label1.Text = "are  you sure want to unblock your account.";

                        Session["block"] = "yes";
                    }
                    else
                    {
                        Label1.Text = "are  you sure want to block your account.";
                        Session["block"] = "no";

                    }

                }
                catch (Exception ex)
                {
                    Label1.Text=ex.ToString();
                }
                finally
                {
                    c.Close();
                }
            }
        }
    
    protected void YES_Click(object sender, EventArgs e)
    {
        if (Session["block"] == "yes")
        {
            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "update pyr_master set Status_txt=0  where user_txt='" + Session["user_txt"] + "'";/// +TextBox1.Text + "'";
                m.ExecuteNonQuery();
                Label1.Text = "Are you sure want to block your account ? ";
                Label2.Text = "your account is updated.";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                c.Close();
            }
        }
        if (Session["block"] == "no")
        {

            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "update pyr_master set Status_txt=1  where user_txt='" + Session["user_txt"] + "'";/// +TextBox1.Text + "'";
                m.ExecuteNonQuery();
                Label1.Text = "are  you sure want to unblock your account.";
                Label2.Text = "your account is updated.";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                c.Close();
            }

        }
    }
}
