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
                city.SelectedValue = "Select";

                country.SelectedValue = "india";

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
           acct_auth.Checked = false;
           int_vaca.Checked = false;
           ext_vacas.Checked = false;
           if (roll.SelectedValue.ToString() == "Consultant")
           {
               roll_pn.Visible = true; 
           }
           else
           {
               roll_pn.Visible = false;
           }
        }

    }

    protected void Add_Click(object sender, EventArgs e)
    {
        if (user_name.Text != "" && password.Text != "" && retype_password.Text != "" && name.Text != "" && mob.Text != "" && city.SelectedValue != "Select" && mob.Text != "" && country.SelectedValue != "---Choose One---")
        {


            if (password.Text == retype_password.Text)
            {
                try
                {

                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select  *  from  admin_master  where user_name='" + user_name.Text + "'";
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
                      
                        id = g1.generate_max_id_reg("select  max(ID)  from  admin_master");
                        string consno = "";
                        int sal1 = 0, tag2 = 0;
                        string  dt1="", dt2="";
                        effect1.Text= DateTime.Now.Date.ToShortDateString();
                        effect2.Text = DateTime.Now.Date.ToShortDateString();
                        if (roll.SelectedValue.ToString() == "Consultant")
                        {
                          consno = g1.reterive_val("select  count(*)  from  admin_master where roll='Consultant'");
                            consno = "SPS" + Convert.ToString(Int32.Parse(consno)+1);
                            sal1 = Int32.Parse(salary.Text);
                            tag2 = Int32.Parse(target.Text);
                            dt1 = Convert.ToDateTime(effect1.Text).ToShortDateString();
                            dt2 = Convert.ToDateTime(effect2.Text).ToShortDateString();

                        }
                            rows = g1.ExecDB("insert into admin_master values(" + id + ",'" + user_name.Text + "','" + password.Text + "','" + name.Text + "','" + roll.SelectedValue + "','" + addr.Text + "','" + city.SelectedValue + "','" + country.Text + "','" + zip.Text + "','" + tel.Text + "','" + mob.Text + "','" + fax.Text + "','" + email.Text + "','" + DateTime.Now.Date.ToShortDateString() + "',0,'" + consno + "'," + Convert.ToByte(acct_auth.Checked) + ")");
                      
                        
                   
                        Label1.Text = "add  successfully.";
                        user_name.Text = "";
                        password.Text = "";
                        retype_password.Text = "";
                        name.Text = "";
                        email.Text = string.Empty;
                        zip.Text = string.Empty;
                        fax.Text = string.Empty;
                        c.Close();
                        if (roll.SelectedValue != "Administrator")
                        {
                         rows = g1.ExecDB("insert into user_power values(" + id + "," + Convert.ToByte(add_c.Checked) + "," + Convert.ToByte(edit_c.Checked) + "," + Convert.ToByte(del_c.Checked) + "," + Convert.ToByte(add_emp.Checked) + "," + Convert.ToByte(edit_emp.Checked) + "," + Convert.ToByte(del_emp.Checked) + "," + Convert.ToByte(add_j.Checked) + "," + Convert.ToByte(edit_j.Checked) + "," + Convert.ToByte(del_j.Checked) + "," + Convert.ToByte(resume.Checked) + "," + Convert.ToByte(mis.Checked) + "," + Convert.ToByte(Closure.Checked) + "," + Convert.ToByte(Invoice.Checked) + "," + Convert.ToByte(Receipt.Checked) + "," + Convert.ToByte(int_vaca.Checked) + "," + Convert.ToByte(ext_vacas.Checked) + ","+ sal1 + ",'"+dt1+"'," + tag2 + ",'"+ dt2 +"')");
                       
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