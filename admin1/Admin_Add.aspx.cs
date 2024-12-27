using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Add : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int maxid = 0, rows = 0;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
   
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

               

                user_power.Visible = false;
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {
                    Response.Redirect("Admin_main.aspx");
                }

                user_name.Focus();
            }
            
            
        }

    }

    protected void roll_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["pass1"] = password.Text;
        Session["pass2"] = retype_password.Text;
        if (roll.SelectedValue.ToString() == "Administrator")
        {
            user_power.Visible = false;
            add_c.Checked = true;
            del_c.Checked = true;
            edit_c.Checked = true;

        }
        else
        {
            user_power.Visible = true;
            add_c.Checked = false;
            del_c.Checked = false;
            edit_c.Checked = false;
        
        add_j.Checked = false;
         del_j.Checked = false;
          edit_j.Checked = false;
          resume.Checked = false;
          add_emp.Checked = false;
           del_emp.Checked = false;
           edit_emp.Checked = false;
        }

      

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        if (user_name.Text != "" && password.Text != "" && retype_password.Text != "" && name.Text != "")
        {
            if (password.Text == retype_password.Text)
            {
                try
                {

                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select  ID  from  admin_master  where user_name='" + user_name.Text + "'";
                    SqlDataReader dr, dr1, dr2;
                    dr2 = m.ExecuteReader();
                    if (dr2.Read())
                    {
                        dr2.Close();
                        Label1.Text = "sorry,this user namr id already exisist.";
                    }
                    else
                    {
                        dr2.Close();
                        m.CommandText = "select  count(ID)  from  admin_master";

                        dr = m.ExecuteReader();
                        dr.Read();
                        if (Int32.Parse(dr[0].ToString()) == 0)
                        {
                            id = 1;
                            dr.Close();
                        }
                        else
                        {
                            dr.Close();

                            m.CommandText = "select  max(ID)  from  admin_master";

                            dr1 = m.ExecuteReader();
                            dr1.Read();
                            id = Int32.Parse(dr1[0].ToString());
                            id = id + 1;
                            dr1.Close();
                        }

                        m.CommandText = "insert into admin_master values(@ID,@user_name,@pass,@uname,@roll,@addr,@city,@country,@zip,@tel,@mob,@fax,@field1)";
                        m.Parameters.AddWithValue("@ID", id);

                        m.Parameters.AddWithValue("@user_name", user_name.Text);
                        m.Parameters.AddWithValue("@pass", password.Text);
                        m.Parameters.AddWithValue("@uname", name.Text);
                        m.Parameters.AddWithValue("@roll", roll.SelectedValue);



                        m.Parameters.AddWithValue("@addr", addr.Text);
                        m.Parameters.AddWithValue("@city", city.Text);
                        m.Parameters.AddWithValue("@country", country.Text);

                        m.Parameters.AddWithValue("@zip", zip.Text);
                        m.Parameters.AddWithValue("@tel", tel.Text);

                        m.Parameters.AddWithValue("@mob", mob.Text);
                        m.Parameters.AddWithValue("@fax", fax.Text);
                        m.Parameters.AddWithValue("@field1", "");
                        m.ExecuteNonQuery();
                        Label1.Text = "add  successfully.";
                        user_name.Text = "";
                        password.Text = "";
                        retype_password.Text = "";
                        name.Text = "";
                        c.Close();
                        if (roll.SelectedValue != "Administrator")
                        {
                            rows = g1.ExecDB("insert into user_power values(" + id + "," + Convert.ToByte(add_c.Checked) + "," + Convert.ToByte(edit_c.Checked) + "," + Convert.ToByte(del_c.Checked) + "," + Convert.ToByte(add_emp.Checked) + "," + Convert.ToByte(edit_emp.Checked) + "," + Convert.ToByte(del_emp.Checked) + "," + Convert.ToByte(add_j.Checked) + "," + Convert.ToByte(edit_j.Checked) + "," + Convert.ToByte(del_j.Checked) + "," + Convert.ToByte(resume.Checked) + "," + Convert.ToByte(mis.Checked) + "," + Convert.ToByte(Closure.Checked) + "," + Convert.ToByte(Invoice.Checked) + "," + Convert.ToByte(Receipt.Checked) + ")");
                       
                        
                        
                        
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
                Label1.Text = "Sorry, password  and retype password are not same.";
            }
        }

        else
        {
            Label1.Text = "please fillup the full crieria.";
        }
    }
}