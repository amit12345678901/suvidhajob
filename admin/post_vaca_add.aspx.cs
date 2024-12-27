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

    General g1 = new General();
    DataTable dt = new DataTable();
    decimal  min_sal1 = 0, max_sal1 = 0;

    string chk1 = "";
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
                bind1();
                funcation();
                ListBox2.SelectedValue = "Select";
                ListBox1.SelectedValue = "Select";
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {
                    if (Convert.ToString(Session["vac_add"]) == "False")
                    {
                        Response.Redirect("Admin_Main.aspx");
                    }
                }

                if (Request.QueryString["cat"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                else if (Request.QueryString["cat"] == "inter")
                {
                  //  jobsin.Visible = false;
                    comp_ind.Visible = false;
                    comp_div.Visible = false;
                    opening.Visible = false;
                    locdiv.Visible = false;
                    JOBTYPE1.Visible = false;
                    divage.Visible = false;
                    jobin.SelectedValue = "1";
                }
                else if (Request.QueryString["cat"] == "exter")
                {
                   JOBTYPE1.Visible = true;
                    comp_ind.Visible = true;
                    divage.Visible = true;
                    comp_div.Visible = true;
                    opening.Visible = true;
                    jobin.SelectedValue = "2";
                   
                }

            }
        }

    }

    public void funcation()
    {
        dt = g1.return_dt("SELECT * FROM [fun]");
        if (dt.Rows.Count > 0)
        {
            DropDownList15.DataSource = dt;
            DropDownList15.DataTextField = "fun_name";
            DropDownList15.DataValueField = "id";
            DropDownList15.DataBind();
        }
    }

    public void bind1()
    {
        cmpname.Items.Clear();
        cmpname.Items.Add("Select Company Name");
        g1.populate_combo("select co_name_txt2 from clogin_detail  where Client_number not like 'SPC%' or Client_number is null and co_name_txt2 is not null  order by co_name_txt2", cmpname);
    }

    public string listfindbr(ListBox lst)
    {
        int i1 = lst.Items.Count;
        //if (i1 > 3)
        //{
        //    chk1 = "you  have  to select  atleast 3";
        //}
        //else
        //{
        chk1 = String.Empty;

        int j = 0;
        for (int i = 0; i < lst.Items.Count; i++)
        {

            if (lst.Items[i].Selected == true)
            {
                j++;
                if (j % 2 == 0)
                {
                    chk1 += lst.Items[i].Value + "<br/>";
                }
                else
                {
                    chk1 += lst.Items[i].Value + ",";


                }
            }
        }
        if (j == 1)
        {
            chk1 = chk1.TrimEnd(',');
        }
        else
        {
            //   chk1 = "";
        }

        if (j == 1)
        {
           
        }
        else
        {
            if (chk1 != "")
            {
                chk1 = chk1.Remove(chk1.Length - 1);
            }
        }

        return chk1;
    }


    public string  listfind( ListBox lst)
    {
        int i1 = lst.Items.Count;
        //if (i1 > 3)
        //{
        //    chk1 = "you  have  to select  atleast 3";
        //}
        //else
        //{
            chk1 = String.Empty;
            for (int i = 0; i < lst.Items.Count; i++)
            {
                if (lst.Items[i].Selected == true)
                {
                    chk1 += lst.Items[i].Value + ", ";
                }

                else
                {
                    //   chk1 = "";
                }

            }
            if (chk1 != "")
            {
                chk1 = chk1.Remove(chk1.Length - 2);
            }
        //}

        return chk1;
    }

    public string listfindloc(ListBox lst)
    {
        int i1 = lst.Items.Count;
        //if (i1 > 3)
        //{
        //    chk1 = "you  have  to select  atleast 3";
        //}
        //else
        //{
        chk1 = String.Empty;
        for (int i = 0; i < lst.Items.Count; i++)
        {
            if (lst.Items[i].Selected == true)
            {
                chk1 += lst.Items[i].Value + ",";
            }

            else
            {
                //   chk1 = "";
            }

        }
        if (chk1 != "")
        {
            chk1 = chk1.Remove(chk1.Length - 1);
        }
        //}

        return chk1;
    }


    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*
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
        */
        dt = g1.return_dt("select subname from subfun where funid=" + DropDownList15.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            ListBox6.DataSource = dt;
            ListBox6.DataTextField = "subname";
            ListBox6.DataValueField = "subname";
            ListBox6.DataBind();
            ListBox6.Items.Insert(0, "Select");
        }
        else
        {
            ListBox6.Items.Clear();
            ListBox6.Items.Insert(0, "Select");
        }
       // g1.populate_combo1("select subname from subfun where funid=" + funid, ListBox6);


    }

    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {

        if (Request.QueryString["cat"] == "inter")
        {
            //if (TextBox20.Text != "" && TextBox21.Text != ""  && DropDownList15.Text != "Select" && TextBox14.Text != "" && ListBox3.Text != "Select" && ListBox4.Text != "Select")
                if (TextBox14.Text != "")

            {

                actual();

            }
            else
            {
                Label1.Text = "fill up is not complete.";
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

            }
        }
        else if (Request.QueryString["cat"] == "exter")
        {
           // if (TextBox20.Text != "" && TextBox21.Text != "" && TextBox5.Text != "" && TextBox4.Text != "" && TextBox9.Text != "" && TextBox11.Text != "" && DropDownList15.Text != "Select" && TextBox14.Text != "" && ListBox3.Text != "Select" && ListBox4.Text != "Select")
            if (TextBox14.Text != "" && DropDownList15.Text != "Select")

            {

                actual();

            }
            else
            {
                Label1.Text = "fill up is not complete.";
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

            }
        }
       
    }
        public  void  actual()
        {
             c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            SqlDataReader dr, dr1;

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

            if (TextBox25.Text != "")
            {
                min_sal1 = Convert.ToDecimal(TextBox25.Text);
            }
            if (sal_max.Text != "")
            {
                max_sal1 = Convert.ToDecimal(sal_max.Text);
            }
            if (TextBox20.Text != "")
            {

            }

            else
            {
                TextBox20.Text = "0";
            }
            if (TextBox21.Text != "")
            {

            }

            else
            {
                TextBox21.Text = "0";
            }
            m.CommandText = "insert into post_vaca values(@pv_id_txt,@cid,@cname_txt,@cprofile_txt,@des_txt,@cp_txt,@add_txt,@city_txt,@country_txt,@phone_txt,@fax_txt,@email_txt,@in_txt,@fa_txt,@sfa_txt,@jp_txt,@keyword_txt,@rep_txt,@conprofile_txt,@jobr_txt,@novacc_txt,@gender_txt,@year_min_txt,@year_max_txt,@jobt_txt,@aqr_txt,@pqr_txt,@ab_txt,@salary_txt,@tat_txt,@loc_txt,@jobcode_txt,@post_date,@dis_ind_txt,@hidden_txt,@category,@jobt,@spec,@benift,@salary_txt_max)";

            string lst1 = listfind(ListBox3);
          //  string lst2 = listfind(ListBox1);
            string lst3 = listfindbr(ListBox2);
            string lst4 = listfind(ListBox4);
            string lst5 = listfindloc(ListBox5);
            string lst6 = listfindloc(ListBox6);


            m.Parameters.AddWithValue("@pv_id_txt", id);

            m.Parameters.AddWithValue("@cid", 0);
            m.Parameters.AddWithValue("@cname_txt", TextBox2.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@cprofile_txt", TextBox3.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@des_txt", TextBox4.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@cp_txt", TextBox5.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@add_txt", TextBox6.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@city_txt", "Select");
            m.Parameters.AddWithValue("@country_txt", TextBox8.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@phone_txt", TextBox9.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@fax_txt", TextBox10.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@email_txt", TextBox11.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@in_txt", lst5);
            m.Parameters.AddWithValue("@fa_txt", DropDownList15.SelectedValue);
            m.Parameters.AddWithValue("@sfa_txt", lst6);
            m.Parameters.AddWithValue("@jp_txt", jobspc.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@keyword_txt", TextBox15.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@rep_txt", TextBox14.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@conprofile_txt", TextBox17.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@jobr_txt", TextBox18.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@novacc_txt", TextBox19.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@gender_txt", DropDownList2.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@year_min_txt", Int32.Parse(TextBox20.Text.ToString().Trim().Replace("'", "''")));
            m.Parameters.AddWithValue("@year_max_txt", Int32.Parse(TextBox21.Text.ToString().Trim().Replace("'", "''")));

            m.Parameters.AddWithValue("@jobt_txt", DropDownList3.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@aqr_txt", lst1);
            m.Parameters.AddWithValue("@pqr_txt", lst4);
            m.Parameters.AddWithValue("@ab_txt", TextBox24.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@salary_txt", min_sal1);
            m.Parameters.AddWithValue("@tat_txt", TextBox26.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@loc_txt", lst3);
            m.Parameters.AddWithValue("@jobcode_txt", TextBox28.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@post_date", DateTime.Now.ToString());
            m.Parameters.AddWithValue("@dis_ind_txt", 1);
            m.Parameters.AddWithValue("@hidden_txt", 0);

            m.Parameters.AddWithValue("@category", jobin.SelectedValue);
            m.Parameters.AddWithValue("@jobt", jobtl.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@spec", jobspc.Text.ToString().Trim().Replace("'", "''"));
            m.Parameters.AddWithValue("@benift", benetits.Text.ToString().Trim().Replace("'", "''"));
           // m.Parameters.AddWithValue("@benift", benetits.Text.ToString().Trim().Replace("'", "''"));

            m.Parameters.AddWithValue("@salary_txt_max", max_sal1);
            m.ExecuteNonQuery();
            c.Close();
            Label1.Text = "SUCCESFULLY  ADD.";
            cmpname.SelectedValue = "Select Company Name";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";


            jobtl.Text = "";
            jobspc.Text = "";
            benetits.Text = "";


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
            sal_max.Text = string.Empty;
            TextBox28.Text = "";
            ListBox6.Items.Clear();
            clear(ListBox1);
            clear(ListBox2);
            clear(ListBox3);
            clear(ListBox4);
            clear(ListBox5);
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Add job successfully.')", true);
        }
        public void clear(ListBox lst1)
        {

            for (int i = 0; i < lst1.Items.Count; i++)
            {
                lst1.Items[i].Selected = false;
            }
        }
}