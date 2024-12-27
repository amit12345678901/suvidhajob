using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class EditProfile_Form : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string ch1 = "NO", ch2 = "NO", ch3 = "NO", ch4 = "NO", ch5 = "NO", ch6 = "NO", ch7 = "NO", ch8 = "NO", ch9 = "NO";

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_txt"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                Qualificaton();
                bind();
                bind1();
            }

        }
    }
    public void bind1()
    {

        rsposted_by.Items.Clear();
        rsposted_by.Items.Add("--Select Consultant Name--");
        g1.populate_combo("select user_name from admin_master where roll='Consultant'  order by user_name", rsposted_by);
    }

    public void Check(string st, ListBox chk)
    {
        //  string[] star = st.Split(',');
        string[] star = st.Split(',', ' ');
        for (int i = 0; i < star.Count(); i += 1)
        {
            for (int i1 = 0; i1 < chk.Items.Count; i1++)
            {

                if (star[i] == chk.Items[i1].Value)
                {
                    chk.Items[i1].Selected = true;
                    //   chk1.Items[i1].Attributes.Add("style", "background-color: red;");

                }
                else
                {

                }
            }
        }
    }

    public void Qualificaton()
    {
        dt = g1.return_dt("SELECT [A_Qualification] FROM [Academic_Qualification_master]");
        if (dt.Rows.Count > 0)
        {
            ListBox3.DataSource = dt;
            ListBox3.DataTextField = "A_Qualification";
            ListBox3.DataValueField = "A_Qualification";
            ListBox3.DataBind();

        }
        dt = g1.return_dt("SELECT [Professional_Qualification] FROM [Professional_Qua_master]");
        if (dt.Rows.Count > 0)
        {
            ListBox4.DataSource = dt;
            ListBox4.DataTextField = "Professional_Qualification";
            ListBox4.DataValueField = "Professional_Qualification";
            ListBox4.DataBind();
        }

        dt = g1.return_dt("SELECT [city_name] FROM [city_master]");
        if (dt.Rows.Count > 0)
        {

            lstprefer.DataSource = dt;
            lstprefer.DataTextField = "city_name";
            lstprefer.DataValueField = "city_name";
            lstprefer.DataBind();
        }
    }
    void bind()
    {

        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  id_txt,user_txt,name_txt,sex_txt,date_txt,month_txt,year_txt,email_txt,ms_txt,add_txt,cloc_txt,S_country,tel_txt,mob_txt,aq_txt,pq_txt,ins_txt,yq_txt,aqo_txt,pqo_txt,res_tit_txt,ks_txt,exp_txt,in_txt,t_n,curr_emp_txt,curr_emp_from_txt,curr_emp_to_txt,curr_des_txt,job_res_txt,pre_emp_txt,pre_emp_from_txt,pre_emp_to_txt,pre_des_txt,ljob_res_txt,pre_emp_txt2,pre_emp_from_txt2,pre_emp_to_txt2,pre_des_txt2,ljob_res_txt2,pre_emp_txt3,pre_emp_from_txt3,pre_emp_to_txt3,pre_des_txt3,ljob_res_txt3,ctc_txt,summery_txt,lan1_txt,lan2_txt,lan3_txt,lan1_r_txt,lan1_w_txt,lan1_s_txt,lan2_r_txt,lan2_w_txt,lan2_s_txt,lan3_r_txt,lan3_w_txt,lan3_s_txt,ref_n_txt,ref_co_txt,ref_d_txt,ref_rr_txt,ref_phone_txt,ref_email_txt,jt_txt,es_txt,pre_txt,f_n,pass_txt,communic,presentation,relevent,remarks,rsposted,source  from  pyr_master where  user_txt='" + Session["user_txt"] + "'";
            // Label1.Text = Session["user_txt"].ToString();
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            if (dr[3].ToString() != "")
            {
                DropDownList1.SelectedValue = dr[3].ToString();
            }
            if (dr[4].ToString() != "")
            {
                DropDownList2.SelectedValue = dr[4].ToString();
            }
            if (dr[5].ToString() != "")
            {
                DropDownList3.SelectedValue = dr[5].ToString();
            }
            if (dr[6].ToString() != "")
            {
                DropDownList4.SelectedValue = dr[6].ToString();
            }
            TextBox4.Text = dr[7].ToString();
            if (dr[8].ToString() != "")
            {
                DropDownList12.SelectedValue = dr[8].ToString();
            }
            TextBox5.Text = dr[68].ToString();
            ListBox2.SelectedValue = dr[10].ToString();
            TextBox7.Text = dr[9].ToString();
            if (dr[11].ToString() != "")
            {
                country.SelectedValue = dr[11].ToString();
            }
            else
            {
                country.SelectedValue = "India";
            }
            if (dr[12].ToString() != "")
            {
                string[] star = dr[12].ToString().Split('-');

                if (star.Count() > 1)
                {
                    land_std.Text = star[0].ToString();
                    TextBox9.Text = star[1].ToString();
                }
                else
                {
                    TextBox9.Text = dr[12].ToString();
                }

            }


            if (dr[13].ToString() != "")
            {
                string[] star = dr[13].ToString().Split('-');

                if (star.Count() > 1)
                {
                    mob_std.Text = star[0].ToString();
                    TextBox10.Text = star[1].ToString();
                }
                else
                {
                    TextBox10.Text = dr[13].ToString();
                }

            }




            // TextBox10.Text = dr[13].ToString();
            if (dr[14].ToString() != "")
            {
                string st = dr[14].ToString();
                Check(st, ListBox3);
            }
            if (dr[15].ToString() != "")
            {
                string st = dr[15].ToString();
                Check(st, ListBox4);
            }
            TextBox11.Text = dr[16].ToString();
            if (dr[17].ToString() != "")
            {
                DropDownList7.SelectedValue = dr[17].ToString();
            }
            TextBox12.Text = dr[18].ToString();
            TextBox13.Text = dr[19].ToString();
            TextBox14.Text = dr[20].ToString();
            TextBox15.Text = dr[21].ToString();
            TextBox16.Text = dr[22].ToString();
            if (dr[23].ToString() != "")
            {
                //ListBox1.SelectedValue = dr[23].ToString();
            }
            if (dr[24].ToString() != "")
            {
                DropDownList8.SelectedValue = dr[24].ToString();
            }
            TextBox17.Text = dr[25].ToString();
            TextBox40.Text = dr[26].ToString();
            TextBox41.Text = dr[27].ToString();
            TextBox18.Text = dr[28].ToString();
            TextBox19.Text = dr[29].ToString();
            TextBox39.Text = dr[30].ToString();
            TextBox37.Text = dr[31].ToString();
            TextBox38.Text = dr[32].ToString();
            TextBox21.Text = dr[33].ToString();
            TextBox43.Text = dr[34].ToString();
            TextBox36.Text = dr[35].ToString();
            TextBox34.Text = dr[36].ToString();
            TextBox35.Text = dr[37].ToString();
            TextBox23.Text = dr[38].ToString();

            TextBox44.Text = dr[39].ToString();
            TextBox24.Text = dr[40].ToString();
            TextBox32.Text = dr[41].ToString();
            TextBox33.Text = dr[42].ToString();
            TextBox25.Text = dr[43].ToString();
            TextBox26.Text = dr[44].ToString();
            ddlcurrentctc.SelectedValue = dr[45].ToString();
            TextBox28.Text = dr[46].ToString();
            TextBox29.Text = dr[47].ToString();
            TextBox30.Text = dr[48].ToString();
            TextBox31.Text = dr[49].ToString();
            if (dr[50].ToString() == "Yes")
            {
                CheckBox1.Checked = true;
            }
            else
            {
                CheckBox1.Checked = false;
            }
            if (dr[51].ToString() == "Yes")
            {
                CheckBox2.Checked = true;
            }
            else
            {
                CheckBox2.Checked = false;
            }
            if (dr[52].ToString() == "Yes")
            {
                CheckBox3.Checked = true;
            }
            else
            {
                CheckBox3.Checked = false;
            }
            if (dr[53].ToString() == "Yes")
            {
                CheckBox4.Checked = true;
            }
            else
            {
                CheckBox4.Checked = false;
            }
            if (dr[54].ToString() == "Yes")
            {
                CheckBox5.Checked = true;
            }
            else
            {
                CheckBox5.Checked = false;
            }
            if (dr[55].ToString() == "Yes")
            {
                CheckBox6.Checked = true;
            }
            else
            {
                CheckBox6.Checked = false;
            }
            if (dr[56].ToString() == "Yes")
            {
                CheckBox7.Checked = true;
            }
            else
            {
                CheckBox7.Checked = false;
            }
            if (dr[57].ToString() == "Yes")
            {
                CheckBox8.Checked = true;
            }
            else
            {
                CheckBox8.Checked = false;
            }
            if (dr[58].ToString() == "Yes")
            {
                CheckBox9.Checked = true;
            }
            else
            {
                CheckBox9.Checked = false;
            }
            TextBox45.Text = dr[59].ToString();
            TextBox48.Text = dr[60].ToString();
            TextBox46.Text = dr[61].ToString();
            TextBox49.Text = dr[62].ToString();
            TextBox47.Text = dr[63].ToString();
            TextBox50.Text = dr[64].ToString();
            if (dr[65].ToString() != "")
            {
                DropDownList9.SelectedValue = dr[65].ToString();
            }
            if (dr[66].ToString() != "")
            {
                DropDownList10.SelectedValue = dr[66].ToString();
            }
            //if (dr[67].ToString() != "")
            //{
            //    DropDownList11.SelectedValue = dr[67].ToString();
            //}
            if (dr[67].ToString() != "")
            {
                string st = dr[67].ToString();
                Check(st, lstprefer);
            }

            DropDownList13.Text = dr[68].ToString();
            TextBox5.Text = dr[69].ToString();
            //communic,presentation,relevent,remarks,rsposted,source,crt_date
            communication.SelectedValue = dr[70].ToString();
            presentation.SelectedValue = dr[71].ToString();
            relivent_exp.SelectedValue = dr[72].ToString();
            remarks.Text = dr[73].ToString();
            rsposted_by.SelectedValue = dr[74].ToString();
            source.SelectedValue = dr[75].ToString();

        }
        catch (Exception ex1)
        {
            throw ex1;

        }
        finally
        {

            c.Close();
        }





    }





    protected void Submit_Click(object sender, EventArgs e)
    {

        if (TextBox3.Text != "" && ListBox2.SelectedValue != "Select" && TextBox7.Text != "" && country.SelectedValue != "---Choose One---")
        {


            if (CheckBox1.Checked == true)
            {
                ch1 = "Yes";
            }


            if (CheckBox2.Checked == true)
            {
                ch2 = "Yes";
            }

            if (CheckBox3.Checked == true)
            {
                ch3 = "Yes";
            }

            if (CheckBox4.Checked == true)
            {
                ch4 = "Yes";
            }

            if (CheckBox5.Checked == true)
            {
                ch5 = "Yes";
            }

            if (CheckBox6.Checked == true)
            {
                ch6 = "Yes";
            }

            if (CheckBox7.Checked == true)
            {
                ch7 = "Yes";
            }

            if (CheckBox8.Checked == true)
            {
                ch8 = "Yes";
            }

            if (CheckBox9.Checked == true)
            {
                ch9 = "Yes";
            }


            string tel31 = "", mob31 = "";

            if (land_std.Text != "")
            {
                tel31 = land_std.Text + "-" + TextBox9.Text.ToString().Trim().Replace("'", "''");
            }
            else
            {
                tel31 = TextBox9.Text.ToString().Trim().Replace("'", "''");
            }
            if (mob_std.Text != "")
            {
                mob31 = mob_std.Text + "-" + TextBox10.Text.ToString().Trim().Replace("'", "''");
            }
            else
            {
                mob31 = TextBox10.Text.ToString().Trim().Replace("'", "''");
            }


            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            string lst1 = listfind(ListBox3);
            string lst4 = listfind(ListBox4);
            string lst5 = listfind(lstprefer);
            m.CommandText = "update pyr_master set name_txt='" + TextBox3.Text + "',sex_txt='" + DropDownList1.SelectedValue + "',date_txt='" + DropDownList2.SelectedValue + "',month_txt='" + DropDownList3.SelectedValue + "',year_txt='" + DropDownList4.SelectedValue + "',email_txt='" + TextBox4.Text + "',add_txt='" + TextBox7.Text + "',cloc_txt='" + ListBox2.SelectedValue + "',S_country='" + country.SelectedValue + "',ms_txt='" + DropDownList12.SelectedItem + "',tel_txt='" + tel31 + "',mob_txt='" + mob31 + "',aq_txt='" + lst1 + "',pq_txt='" + lst4 + "',aqo_txt='" + TextBox12.Text + "',pqo_txt='" + TextBox13.Text + "',ins_txt='" + TextBox11.Text + "',yq_txt='" + TextBox7.Text + "',res_tit_txt='" + TextBox14.Text + "',ks_txt='" + TextBox15.Text + "',exp_txt=" + Int32.Parse(TextBox16.Text) + ",in_txt='" + ListBox1.SelectedValue + "',t_n='" + DropDownList8.SelectedValue + "',f_n='" + DropDownList13.SelectedValue + "',curr_emp_txt='" + TextBox17.Text + "',curr_emp_from_txt='" + TextBox40.Text + "',curr_emp_to_txt='" + TextBox41.Text + "',curr_des_txt='" + TextBox18.Text + "',job_res_txt='" + TextBox19.Text + "',pre_emp_txt='" + TextBox39.Text + "',pre_emp_from_txt='" + TextBox37.Text + "',pre_emp_to_txt='" + TextBox38.Text + "',pre_des_txt='" + TextBox21.Text + "',ljob_res_txt='" + TextBox43.Text + "',pre_emp_txt2='" + TextBox36.Text + "',pre_emp_from_txt2='" + TextBox34.Text + "',pre_emp_to_txt2='" + TextBox35.Text + "',pre_des_txt2='" + TextBox23.Text + "',ljob_res_txt2='" + TextBox44.Text + "',pre_emp_txt3='" + TextBox24.Text + "',pre_emp_from_txt3='" + TextBox32.Text + "',pre_emp_to_txt3='" + TextBox33.Text + "',pre_des_txt3='" + TextBox25.Text + "',ljob_res_txt3='" + TextBox26.Text + "',ctc_txt=" + ddlcurrentctc.SelectedValue + ",summery_txt='" + TextBox28.Text + "',lan1_txt='" + TextBox29.Text + "',lan2_txt='" + TextBox30.Text + "',lan3_txt='" + TextBox31.Text + "',lan1_r_txt='" + ch1 + "',lan1_w_txt='" + ch2 + "',lan1_s_txt='" + ch3 + "', lan2_r_txt='" + ch4 + "',lan2_w_txt='" + ch5 + "',lan2_s_txt='" + ch6 + "', lan3_r_txt='" + ch7 + "',lan3_w_txt='" + ch8 + "',lan3_s_txt='" + ch9 + "',jt_txt='" + DropDownList9.SelectedValue + "',es_txt='" + DropDownList10.SelectedValue + "',pre_txt='" + lst5  + "',ref_n_txt='" + TextBox45.Text + "',ref_d_txt='" + TextBox46.Text + "',ref_phone_txt='" + TextBox47.Text + "',ref_co_txt='" + TextBox48.Text + "',ref_rr_txt='" + TextBox49.Text + "',ref_email_txt='" + TextBox50.Text + "',communic='" + communication.SelectedValue + "',presentation='" + presentation.SelectedValue + "',relevent='" + relivent_exp.SelectedValue + "',remarks='" + remarks.Text + "',rsposted='" + rsposted_by.SelectedValue + "',source='" + source.SelectedValue + "' where user_txt='" + Session["user_txt"] + "'";

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Update Successfully.')", true);

            m.ExecuteNonQuery();
            c.Close();


        }
        else
        {

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

        }

    }
    string chk1 = "";
    public string listfind(ListBox lst)
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
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select id  from  fun    where fun_name='" + DropDownList8.SelectedItem.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();

        m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");
        DropDownList13.DataSource = ds.Tables["subfun"];
        DropDownList13.DataTextField = "subname";
        DropDownList13.DataValueField = "subname";
        DropDownList13.DataBind();

        c.Close();
    }

}
