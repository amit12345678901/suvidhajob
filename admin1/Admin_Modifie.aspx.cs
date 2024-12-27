using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Modifie : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int maxid = 0, rows = 0;

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
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {
                    Response.Redirect("Admin_main.aspx");
                }
                else
                {
                    bind();
                }
            }
        }
    }
    protected void update_Click(object sender, EventArgs e)
    {
       
      
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            if (Session["previous"].ToString() == user_name.Text)
            {
                m.CommandText = "update admin_master set  pass='" + password.Text + "',uname='" + name.Text + "' where id=" + Session["admin_id"];
               
                m.ExecuteNonQuery();
                Label1.Text = "successfully update.";
            }
            else
            {
                m.CommandText = "select uname from admin_master where user_name='" + user_name.Text + "'";
                SqlDataReader dr;
                dr = m.ExecuteReader();
                if (dr.Read())
                {
                    dr.Close();
                    Label1.Text = "this name of user id already exisist.";
                }
                else
                {
                    dr.Close();
                    m.CommandText = "update admin_master set user_name='" + user_name.Text + "',pass='" + password.Text + "',uname='" + name.Text + "' where id=" + Session["admin_id"];
                    m.ExecuteNonQuery();
                    Session["previous"] = user_name.Text;
                    Label1.Text = "successfully update.";

                }
            }

            c.Close();
            if (roll.SelectedValue != "Administrator")
            {

                rows = g1.ExecDB("update user_power set cand_add=" + Convert.ToByte(add_c.Checked) + ",cand_edit=" + Convert.ToByte(edit_c.Checked) + ",cand_del=" + Convert.ToByte(del_c.Checked) + ",cmp_add=" + Convert.ToByte(add_emp.Checked) + ",cmp_edit=" + Convert.ToByte(edit_emp.Checked) + ",cmp_del=" + Convert.ToByte(del_emp.Checked) + ",vac_add=" + Convert.ToByte(add_j.Checked) + ",vac_edit=" + Convert.ToByte(edit_j.Checked) + ",vac_del=" + Convert.ToByte(del_j.Checked) + ",cv_search=" + Convert.ToByte(resume.Checked) + " where uid=" + Session["admin_id"]);
                        

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

    protected void roll_SelectedIndexChanged(object sender, EventArgs e)
    {
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

    public void bind()
    {
        
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        dt = g1.return_dt("select * from admin_master where id=" + Session["admin_id"]);
        if (dt.Rows.Count > 0)
        {
          
            user_name.Text = Convert.ToString(dt.Rows[0]["user_name"]);
            Session["previous"] = Convert.ToString(dt.Rows[0]["user_name"]);
            password.Text = Convert.ToString(dt.Rows[0]["pass"]);
            name.Text = Convert.ToString(dt.Rows[0]["uname"]);
            if (Convert.ToString(dt.Rows[0]["roll"]) == "Administrator")
            {
                roll.SelectedValue = "Administrator";

                user_power.Visible = false;
            }
            else
            {

                roll.SelectedValue = "User";
                user_power.Visible = true;
                dt1 = g1.return_dt("select * from user_power where uid=" + Session["admin_id"]);
                if(dt1.Rows.Count > 0)
                {
                add_c.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_add"]));
                edit_c.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_edit"]));
                del_c.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_del"]));
                add_emp.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_add"]));
                edit_emp.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_edit"]));
                del_emp.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_del"]));
                add_j.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_add"]));
                edit_j.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_edit"]));
                del_j.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_del"]));
                resume.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cv_search"]));

                //Response.Write(Convert.ToString(dt1.Rows[0]["cmp_add"]));

                    }
               
            }
        }
       
    }

}
