using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword_Company : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
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
                    m.CommandText = "select password_txt from clogin_detail where id_txt=" + Int32.Parse(Session["Client_number"].ToString());// +TextBox1.Text + "'";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr[0].ToString() == TextBox1.Text)
                        {
                            dr.Close();
                            m.CommandText = "update clogin_detail set password_txt='" + TextBox2.Text + "' where id_txt=" + Int32.Parse(Session["Client_number"].ToString());
                            m.ExecuteNonQuery();
                            Label1.Text = "Your password is change Successfully.";
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
                Label1.Text = "You have enter both different password";
            }
        }
        else
        {
            Label1.Text = "Please enter all fields";
        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
