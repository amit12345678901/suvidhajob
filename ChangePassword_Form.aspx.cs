using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword_Form : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Change_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select pass_txt from pyr_master where user_txt='"+Session["user_txt"]+"'";// +TextBox1.Text + "'";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr[0].ToString() == TextBox1.Text)
                        {
                            dr.Close();
                            m.CommandText = "update pyr_master set pass_txt='" + TextBox2.Text.ToString().Trim().Replace("'", "''") + "' where user_txt='" + Session["user_txt"] + "'";
                            m.ExecuteNonQuery();
                            Label1.Text = "Your password is changed Successfully.";
                        }
                        else
                        {
                            dr.Close();
                            Label1.Text = "Your password is wrong.";
                        }
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
                Label1.Text = "Your current password is wrong, Please enter correct password.";
            }
        }
        else
        {
            Label1.Text = "Please enter all fields correctly";
        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
