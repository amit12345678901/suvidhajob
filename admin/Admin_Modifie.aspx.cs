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
       
        if (user_name.Text != "" && password.Text != ""  && name.Text != "" && mob.Text != "" && city.SelectedValue != "Select" && mob.Text != "" && country.SelectedValue != "---Choose One---")
        {

        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            if (Session["previous"].ToString() == user_name.Text)
            {
                m.CommandText = "update admin_master set  pass='" + password.Text + "',uname='" + name.Text + "',addr='" + addr.Text + "',city='" + city.Text + "',country='" + country.Text + "',zip='" + zip.Text + "',tel='" + tel.Text + "',mob='" + mob.Text + "',fax='" + fax.Text + "',email='" + email.Text + "',auth=" + Convert.ToByte(acct_auth.Checked) + " where id=" + Session["admin_id"];
               
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
                    m.CommandText = "update admin_master set user_name='" + user_name.Text + "',pass='" + password.Text + "',uname='" + name.Text + "',addr='" + addr.Text + "',city='" + city.SelectedValue + "',country='" + country.SelectedValue + "',zip='" + zip.Text + "',tel='" + tel.Text + "',mob='" + mob.Text + "',fax='" + fax.Text + "',email='" + email.Text + "',auth=" + Convert.ToByte(acct_auth.Checked) + " where id=" + Session["admin_id"];
                    m.ExecuteNonQuery();
                    Session["previous"] = user_name.Text;
                    Label1.Text = "successfully update.";

                }
            }

            c.Close();
            if (roll.SelectedValue != "Administrator")
            {
                if (roll.SelectedValue.ToString() != "Consultant")
                {
                    rows = g1.ExecDB("update user_power set cand_add=" + Convert.ToByte(add_c.Checked) + ",cand_edit=" + Convert.ToByte(edit_c.Checked) + ",cand_del=" + Convert.ToByte(del_c.Checked) + ",cmp_add=" + Convert.ToByte(add_emp.Checked) + ",cmp_edit=" + Convert.ToByte(edit_emp.Checked) + ",cmp_del=" + Convert.ToByte(del_emp.Checked) + ",vac_add=" + Convert.ToByte(add_j.Checked) + ",vac_edit=" + Convert.ToByte(edit_j.Checked) + ",vac_del=" + Convert.ToByte(del_j.Checked) + ",cv_search=" + Convert.ToByte(resume.Checked) + " where uid=" + Session["admin_id"]);
                }
                else
                {

                    rows = g1.ExecDB("update user_power set cand_add=" + Convert.ToByte(add_c.Checked) + ",cand_edit=" + Convert.ToByte(edit_c.Checked) + ",cand_del=" + Convert.ToByte(del_c.Checked) + ",cmp_add=" + Convert.ToByte(add_emp.Checked) + ",cmp_edit=" + Convert.ToByte(edit_emp.Checked) + ",cmp_del=" + Convert.ToByte(del_emp.Checked) + ",vac_add=" + Convert.ToByte(add_j.Checked) + ",vac_edit=" + Convert.ToByte(edit_j.Checked) + ",vac_del=" + Convert.ToByte(del_j.Checked) + ",cv_search=" + Convert.ToByte(resume.Checked) + ",sal=" + Int32.Parse(salary.Text) + ",target=" + Int32.Parse(target.Text) + ",eft1='" + Convert.ToDateTime(effect1.Text).ToShortDateString() + "',eft2=" + Convert.ToDateTime(effect2.Text).ToShortDateString() + ",internal_vac=" + Convert.ToByte(int_vaca.Checked) + ",external_vac=" + Convert.ToByte(ext_vacas.Checked) + " where uid=" + Session["admin_id"]);
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
            Label1.Text = "please fillup the full crieria.";
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
            addr.Text = Convert.ToString(dt.Rows[0]["addr"]);
           city.SelectedValue = Convert.ToString(dt.Rows[0]["city"]);
           // Response.Write(Convert.ToString(dt.Rows[0]["city"]));
            country.SelectedValue = Convert.ToString(dt.Rows[0]["country"]);
            zip.Text = Convert.ToString(dt.Rows[0]["zip"]);
            tel.Text = Convert.ToString(dt.Rows[0]["tel"]);
            mob.Text = Convert.ToString(dt.Rows[0]["mob"]);
            email.Text = Convert.ToString(dt.Rows[0]["email"]);
            if (Convert.ToString(dt.Rows[0]["roll"]) == "Administrator")
            {
                roll.SelectedValue = "Administrator";

                user_power.Visible = false;
            }
            else
            {
                acct_auth.Checked = Convert.ToBoolean(Convert.ToString(dt.Rows[0]["auth"]));
                roll.SelectedValue = Convert.ToString(dt.Rows[0]["roll"]);
                if (roll.SelectedValue.ToString() == "Consultant")
                {
                    roll_pn.Visible = true;
                }
                else
                {
                    roll_pn.Visible = false;
                }
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

                int_vaca.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["internal_vac"]));
                ext_vacas.Checked = Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["external_vac"]));

                if (roll.SelectedValue.ToString() == "Consultant")
                {
                    salary.Text = Convert.ToString(dt1.Rows[0]["sal"]);
                    target.Text = Convert.ToString(dt1.Rows[0]["target"]);
                    effect1.Text = Convert.ToDateTime(Convert.ToString(dt1.Rows[0]["eft1"])).ToShortDateString();
                    effect2.Text = Convert.ToDateTime(Convert.ToString(dt1.Rows[0]["eft2"])).ToShortDateString();
                }

                    }
               
            }
        }
       
    }

}
