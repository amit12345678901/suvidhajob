using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        uname.Focus();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uname.Text != "" && password.Text != "")
        {
            try
            {

                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  pass,roll,ID  from  admin_master where user_name='" + uname.Text + "'";
                SqlDataReader dr;
                dr = m.ExecuteReader();
                if (dr.Read())
                {
                    if (dr[0].ToString() == password.Text)
                    {
                        Session["login"] = "yes";
                        Session["roll"] = dr[1].ToString();
                        Session["user_no2"] = dr[2].ToString();
                        Response.Redirect("Admin_Main.aspx");
                    }
                    else
                    {
                        Label1.Text = "password is wrong.";
                    }
                }
                else
                {
                    Label1.Text = "user name is wrong.";
                }
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
        else
        {
            Label1.Text = "please fillup the full crieria.";
        }
    }
}
