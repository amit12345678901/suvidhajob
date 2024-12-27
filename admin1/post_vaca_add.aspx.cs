using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class post_vaca_add : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {

                ListBox2.SelectedValue = "Select";
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {


                    if (Convert.ToString(Session["vac_add"]) == "False")
                    {
                        Response.Redirect("Admin_Main.aspx");
                    }
                }

            }
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox20.Text != "" && TextBox21.Text != "" && TextBox5.Text != "" && TextBox4.Text != "" && TextBox9.Text != "" && TextBox11.Text != "" && TextBox25.Text != "" && ListBox2.SelectedValue != "Select" && DropDownList15.Text != "Select" && DropDownList1.Text != "Select" && TextBox14.Text != "" && DropDownList6.Text != "Select" && DropDownList7.Text != "Select")
        {
        
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            SqlDataReader dr,dr1;

            m.CommandText = "select  count(pv_id_txt)  from  post_vaca";

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

                m.CommandText = "select  max(pv_id_txt)  from  post_vaca";

                dr1 = m.ExecuteReader();
                dr1.Read();
                id = Int32.Parse(dr1[0].ToString());
                id = id + 1;
                dr1.Close();

            }




            m.CommandText = "insert into post_vaca values(@pv_id_txt,@cid,@cname_txt,@cprofile_txt,@des_txt,@cp_txt,@add_txt,@city_txt,@country_txt,@phone_txt,@fax_txt,@email_txt,@in_txt,@fa_txt,@sfa_txt,@jp_txt,@keyword_txt,@rep_txt,@conprofile_txt,@jobr_txt,@novacc_txt,@gender_txt,@year_min_txt,@year_max_txt,@jobt_txt,@aqr_txt,@pqr_txt,@ab_txt,@salary_txt,@tat_txt,@loc_txt,@jobcode_txt,@post_date,@dis_ind_txt,@hidden_txt,@category)";

            m.Parameters.AddWithValue("@pv_id_txt", id);
         
            m.Parameters.AddWithValue("@cid", Int32.Parse(TextBox1.Text));
            m.Parameters.AddWithValue("@cname_txt", TextBox2.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@cprofile_txt", TextBox3.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@des_txt", TextBox4.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@cp_txt", TextBox5.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@add_txt", TextBox6.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@city_txt", ListBox1.SelectedValue);
            m.Parameters.AddWithValue("@country_txt", TextBox8.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@phone_txt", TextBox9.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@fax_txt", TextBox10.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@email_txt", TextBox11.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@in_txt", DropDownList1.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@fa_txt", DropDownList15.SelectedValue);
            m.Parameters.AddWithValue("@sfa_txt", DropDownList9.SelectedValue);
            m.Parameters.AddWithValue("@jp_txt", TextBox14.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@keyword_txt", TextBox15.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@rep_txt", TextBox16.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@conprofile_txt", TextBox17.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@jobr_txt", TextBox18.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@novacc_txt", TextBox19.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@gender_txt", DropDownList2.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@year_min_txt", Int32.Parse(TextBox20.Text.ToString().Trim().Replace("'", "''")));
            m.Parameters.AddWithValue("@year_max_txt", Int32.Parse(TextBox21.Text.ToString().Trim().Replace("'", "''")));

            m.Parameters.AddWithValue("@jobt_txt", DropDownList3.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@aqr_txt", DropDownList6.SelectedValue);
            m.Parameters.AddWithValue("@pqr_txt", DropDownList7.SelectedValue);
            m.Parameters.AddWithValue("@ab_txt", TextBox24.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@salary_txt", Int32.Parse(TextBox25.Text.ToString().Trim().Replace("'", "''")));
            m.Parameters.AddWithValue("@tat_txt", TextBox26.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@loc_txt", ListBox2.SelectedValue);
            m.Parameters.AddWithValue("@jobcode_txt", TextBox28.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@post_date", DateTime.Now.ToString());
            m.Parameters.AddWithValue("@dis_ind_txt", 1);
            m.Parameters.AddWithValue("@hidden_txt",0);

            m.Parameters.AddWithValue("@category", jobin.SelectedValue);
            m.ExecuteNonQuery();
            c.Close();
            Label1.Text = "SUCCESFULLY  ADD.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
           // TextBox12.Text = "";
            //TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            //TextBox22.Text = "";
            //TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
            
            TextBox28.Text = "";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Add job successfully.')", true);
        
        }
        else
        {
            Label1.Text = "fill up is not complete.";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
        
        }
    }
    


    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();

        m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");
        DropDownList9.DataSource = ds.Tables["subfun"];
        DropDownList9.DataTextField = "subname";
        DropDownList9.DataValueField = "subname";
        DropDownList9.DataBind();
        
        c.Close();
    }

}