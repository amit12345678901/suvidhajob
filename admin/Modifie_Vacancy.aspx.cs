using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

public partial class Modifie_Vacancy : System.Web.UI.Page
{
                                          
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0;
    string st = "";
    string chk1 = "";
    decimal min_sal1 = 0, max_sal1 = 0;
 
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
                industry();
                Qualificaton();
                funcation();
                Location();
                if (Request.QueryString["cat"] == "inter")
                {
                  //  jobsin.Visible = false;
                    comp_ind.Visible = false;
                    comp_div.Visible = false;
                    opening.Visible = false;
                    locdiv.Visible = false;
                    JOBTYPE1.Visible = false;
                    divage.Visible = false;
                   /// jobin.SelectedValue = "1";
                }

                else if (Request.QueryString["cat"] == "exter")
                {
                    divage.Visible = true;
                    JOBTYPE1.Visible = true;
                    opening.Visible = true;
                    locdiv.Visible = true;
                    comp_ind.Visible = true;
                    comp_div.Visible = true;
                  ///  jobin.SelectedValue = "2";
                }

                bind1();
                bind();
               
            }
        }
    } 
                                      
    public void industry()
    {
        dt = g1.return_dt("SELECT [ind_name] FROM [industry_master]");
        if (dt.Rows.Count > 0)
        {
            ListBox5.DataSource = dt;
            ListBox5.DataTextField = "ind_name";
            ListBox5.DataValueField = "ind_name";
            ListBox5.DataBind();
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
    }
    public void Location()
    {
        dt = g1.return_dt("SELECT [city_name] FROM [city_master]");
        if (dt.Rows.Count > 0)
        {
            ListBox2.DataSource = dt;
            ListBox2.DataTextField = "city_name";
            ListBox2.DataValueField = "city_name";
            ListBox2.DataBind();

        }

    }
    public void bind1()
    {
        cmpname.Items.Clear();
        cmpname.Items.Add("Select Company Name");
        g1.populate_combo("select co_name_txt2 from clogin_detail  where Client_number not like 'SPC%' or Client_number is null and co_name_txt2 is not null  order by co_name_txt2", cmpname);

    }

    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        //c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        //c.Open();
        //m.Connection = c;
        //m.CommandText = "select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.ToString() + "'";
        //SqlDataReader dr;
        //dr = m.ExecuteReader();
        //dr.Read();

        //m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        //dr.Close();
        //SqlDataAdapter dap = new SqlDataAdapter(m);
        //DataSet ds = new DataSet();
        //dap.Fill(ds, "subfun");

        dt = g1.return_dt("select subname from subfun where funid="+DropDownList15.SelectedValue);
        ListBox6.DataSource = dt;
        ListBox6.DataTextField = "subname";
        ListBox6.DataValueField = "subname";
        ListBox6.DataBind();

        c.Close();
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  cid,cname_txt,cprofile_txt,des_txt,cp_txt,add_txt,loc_txt,country_txt,phone_txt,fax_txt,email_txt,in_txt,fa_txt,sfa_txt,jp_txt,Keywords_txt,conprofile_txt,jobr_txt,rep_txt,novacc_txt,gender_txt,year_min_txt,year_max_txt,jobt_txt,aqr_txt,pqr_txt,ab_txt,salary_txt,tat_txt,loc_txt,jobcode_txt,CONVERT(VARCHAR(10), post_date, 103),dis_ind_txt,hidden_txt,jobt,spec,benift,salary_txt_max from post_vaca  where pv_id_txt=" + Session["com_id"];
        
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();
     
      
        cname.Text = dr[1].ToString();
        cprofile.Text = dr[2].ToString();
        des.Text = dr[3].ToString();
        cp.Text = dr[4].ToString();
        add.Text = dr[5].ToString();
        phone.Text = dr[8].ToString();
        fax.Text = dr[9].ToString();

        email.Text = dr[10].ToString();

        st = dr[11].ToString();
        Checkloc(st, ListBox5);

       // DropDownList1.SelectedValue = dr[11].ToString();

        DropDownList15.SelectedValue = dr[12].ToString();
        Session["fun_area"] = dr[12].ToString();
        Session["sfun_area"] = dr[13].ToString();
        jp.Text = dr[14].ToString();
        keyword.Text = dr[15].ToString();
        cprofile1.Text = dr[16].ToString();
        jobr.Text = dr[17].ToString();
        rep.Text = dr[18].ToString();
        
        vacancy.Text = dr[19].ToString();

        DropDownList2.SelectedValue = dr[20].ToString();

        minexp.Text = dr[21].ToString();

        maxexp.Text = dr[22].ToString();
        DropDownList3.SelectedValue = dr[23].ToString();

       // Qualificaton();
        st = dr[24].ToString();
        Check(st, ListBox3);
        st = dr[25].ToString();
        Check(st, ListBox4);

        //aqr.SelectedValue = dr[24].ToString();
       // pqr.SelectedValue = dr[25].ToString();

        ab.Text = dr[26].ToString();

        TextBox25.Text = dr[27].ToString();
        tat.Text = dr[28].ToString();

        int sde = ListBox2.Items.Count;
        st = dr[29].ToString();
        //Checkloc(st, ListBox2);

        Checklocbr(st, ListBox2);
        jobcode.Text = dr[30].ToString();
        tat.Text = dr["jobt"].ToString();
        post_date.Text = dr[31].ToString().ToString();
        CheckBox1.Checked = Convert.ToBoolean(dr[32].ToString());
        CheckBox2.Checked = Convert.ToBoolean(dr[33].ToString());
    //,jobt,spec,benift
       // jobtl.Text = dr[34].ToString();
       // jobspc.Text = dr[35].ToString();
        //benetits.Text = dr[36].ToString();
       sal_max.Text = dr[37].ToString();
        dr.Close();

        //m.CommandText = "select id  from  fun    where fun_name='" + Convert.ToString(Session["fun_area"]) + "'";
        //SqlDataReader dr3;
        //dr3 = m.ExecuteReader();
        //dr3.Read();
        //m.CommandText = "select subname from subfun where funid=" + dr3[0].ToString();
        //dr3.Close();
        //SqlDataAdapter dap = new SqlDataAdapter(m);
        //DataSet ds = new DataSet();
        //dap.Fill(ds, "subfun");
        //ListBox6.DataSource = ds.Tables["subfun"];
        //ListBox6.DataTextField = "subname";
        //ListBox6.DataValueField = "subname";
        //ListBox6.DataBind(); ;

        dt = g1.return_dt("select subname from subfun where funid=" + DropDownList15.SelectedValue);
        ListBox6.DataSource = dt;
        ListBox6.DataTextField = "subname";
        ListBox6.DataValueField = "subname";
        ListBox6.DataBind();
        //if (ListBox6.Text != "")
        //{
            //ListBox6.SelectedValue = Convert.ToString(Session["sfun_area"]);
            st = Convert.ToString(Session["sfun_area"]);
            Checkloc(st, ListBox6);

        //}

        c.Close();

    }

    public void Checkloc(string st, ListBox chk)
    {
        //  string[] star = st.Split(',');
        string[] star = st.Split(',');
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
    public void Checklocbr(string st, ListBox chk)
    {
        //  string[] star = st.Split(',');
        st=st.Replace("<br/>",",");
        string[] star = st.Split(',');
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

    public void Check(string st, ListBox chk)
    {
        //  string[] star = st.Split(',');
       string[] star = st.Split(',',' ');
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

    protected void bindsubcat()
    {
        string fun_id1 = g1.reterive_val("select id  from  fun where fun_name='" + DropDownList15.SelectedItem.Text + "'");
       /* m.CommandText = "select id  from  fun    where fun_name='" + DropDownList15.SelectedItem.Text.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();
        * */
        m.CommandText = "select subname from subfun where funid=" + fun_id1;
        //dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");

        ListBox6.DataSource = ds.Tables["subfun"];
        ListBox6.DataTextField = "subname";
        ListBox6.DataValueField = "subname";
        ListBox6.DataBind();
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

    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {
       
        if (Request.QueryString["cat"] == "inter")
        {
            //if (jp.Text != "" && minexp.Text != "" && maxexp.Text != "" && ListBox3.SelectedValue != "Select" && ListBox4.SelectedValue != "Select"  && ListBox5.Text != "Select" && DropDownList15.Text != "Select")
            //{
                actual();
            //}
            //else
            //{
            //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
            //}

        }
        else if (Request.QueryString["cat"] == "exter")
        {
            //if (cname.Text != "" && cp.Text != "" && jp.Text != "" && cprofile.Text != "" && des.Text != "" && phone.Text != "" && email.Text != "" && minexp.Text != "" && maxexp.Text != "" && ListBox3.SelectedValue != "Select" && ListBox4.SelectedValue != "Select"  && ListBox5.Text != "Select" && DropDownList15.Text != "Select")
            //{
                actual();
            //}
            //else
            //{
            //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
            //}
        }
    }

    public void actual()
    {
        int dis = 0, hidden = 0;
        if (CheckBox1.Checked == true)
        {
            dis = 1;
        }
        if (CheckBox2.Checked == true)
        {
            hidden = 1;
        }
        string lst1 = listfind(ListBox3);
        string lst2 = listfind(ListBox1);
        string lst3 = listfindbr(ListBox2);
        string lst4 = listfind(ListBox4);
        string lst5 = listfindloc(ListBox5);
        string lst6 = listfindloc(ListBox6);

        string sfa1 = "";
        if (ListBox6.Text != "")
        {
            sfa1 = ListBox6.SelectedItem.Text;
        }
        if (TextBox25.Text != "")
        {
            min_sal1 = Convert.ToDecimal(TextBox25.Text);
        }
        if (sal_max.Text != "")
        {
            max_sal1 = Convert.ToDecimal(sal_max.Text);
        }
        DateTime date = DateTime.ParseExact(post_date.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
        rows = g1.ExecDB("update post_vaca set  cname_txt='" + cname.Text.Replace("'", "''") + "',cprofile_txt='" + cprofile.Text.Replace("'", "''") + "',des_txt='" + des.Text.Replace("'", "''") + "',cp_txt='" + cp.Text.Replace("'", "''") + "',add_txt='" + add.Text.Replace("'", "''") + "',city_txt='" + ListBox1.SelectedValue + "',country_txt='" + country.Text.Replace("'", "''") + "',phone_txt='" + phone.Text.Replace("'", "''") + "',fax_txt='" + fax.Text.Replace("'", "''") + "',email_txt='" + email.Text.Replace("'", "''") + "',in_txt='" + lst5 + "',fa_txt='" + DropDownList15.SelectedValue + "',sfa_txt='" + sfa1 + "',Keywords_txt='" + keyword.Text.Replace("'", "''") + "',conprofile_txt='" + cprofile1.Text.Replace("'", "''") + "',jobr_txt='" + jobr.Text.Replace("'", "''") + "',rep_txt='" + rep.Text.Replace("'", "''") + "',novacc_txt='" + vacancy.Text.Replace("'", "''") + "',gender_txt='" + DropDownList2.SelectedValue + "',year_min_txt=" + Int32.Parse(minexp.Text.Replace("'", "''")) + ",year_max_txt=" + Int32.Parse(maxexp.Text.Replace("'", "''")) + ",jobt_txt='" + DropDownList3.SelectedValue + "',aqr_txt='" + lst1 + "',jp_txt='" + jp.Text.Replace("'", "''") + "',pqr_txt='" + lst4 + "',ab_txt='" + ab.Text.Replace("'", "''") + "',salary_txt=" + min_sal1 + ",jobt='" + tat.Text.Replace("'", "''") + "',loc_txt='" + lst3 + "',jobcode_txt='" + jobcode.Text.Replace("'", "''") + "',dis_ind_txt=" + dis + ",hidden_txt=" + hidden + ",salary_txt_max=" + max_sal1 + ",post_date='"+ date.ToShortDateString()+"' where pv_id_txt=" + Session["com_id"]); 
        if (rows > 0)
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('update Successfully.')", true);
            Response.Redirect("Edit_Vacancy.aspx?cat=" + Request.QueryString["cat"]);
        }

    }


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
}