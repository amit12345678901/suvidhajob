using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Modifie_Vacancy : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
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
                bind();
            }
        }
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select  cid,cname_txt,cprofile_txt,des_txt,cp_txt,add_txt,loc_txt,country_txt,phone_txt,fax_txt,email_txt,in_txt,fa_txt,sfa_txt,jp_txt,Keywords_txt,conprofile_txt,jobr_txt,rep_txt,novacc_txt,gender_txt,year_min_txt,year_max_txt,jobt_txt,aqr_txt,pqr_txt,ab_txt,salary_txt,tat_txt,loc_txt,jobcode_txt,post_date,dis_ind_txt,hidden_txt from post_vaca  where pv_id_txt=" + Int32.Parse(Session["com_id"].ToString());
        
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();
        cid.Text = dr[0].ToString();
        cname.Text = dr[1].ToString();
        cprofile.Text = dr[2].ToString();

        des.Text = dr[3].ToString();
        cp.Text = dr[4].ToString();
        add.Text = dr[5].ToString();
       // ListBox1.SelectedValue = dr[6].ToString();
        TextBox1.Text = dr[6].ToString();
        
        country.Text = dr[7].ToString();
        phone.Text = dr[8].ToString();
        fax.Text = dr[9].ToString();

        email.Text = dr[10].ToString();
        DropDownList1.SelectedValue = dr[11].ToString();

        fa.Text = dr[12].ToString();
        sfa.Text = dr[13].ToString();
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

        aqr.Text = dr[24].ToString();
        pqr.Text = dr[25].ToString();
        ab.Text = dr[26].ToString();

        salary.Text = dr[27].ToString();
        tat.Text = dr[28].ToString();
        location.Text = dr[29].ToString();
        jobcode.Text = dr[30].ToString();
        post_date.Text = Convert.ToDateTime(dr[31].ToString()).ToLongDateString();
        CheckBox1.Checked = Convert.ToBoolean(dr[32].ToString());
        CheckBox2.Checked = Convert.ToBoolean(dr[33].ToString());
    
        c.Close();


    }


    protected void Button1_Click(object sender, EventArgs e)
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
        if (cname.Text != "" && cp.Text != "" && jp.Text != "" && cprofile.Text != "" && des.Text != "" && phone.Text != "" && email.Text != "" && minexp.Text != "" && maxexp.Text != "" && aqr.Text != "" && pqr.Text != "" && salary.Text != "" && location.Text != ""  && fa.Text != "" && DropDownList1.Text != "Select")
        {

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "update post_vaca set  cid='" + cid.Text + "',cname_txt='" + cname.Text + "',cprofile_txt='" + cprofile.Text + "',des_txt='" + des.Text + "',cp_txt='" + cp.Text + "',add_txt='" + add.Text + "',city_txt='" + TextBox1.Text + "',country_txt='" + country.Text + "',phone_txt='" + phone.Text + "',fax_txt='" + fax.Text + "',email_txt='" + email.Text + "',in_txt='" + DropDownList1.SelectedValue + "',fa_txt='" + fa.Text + "',sfa_txt='" + sfa.Text + "',jp_txt='" + jp.Text + "',Keywords_txt='" + keyword.Text + "',conprofile_txt='" + cprofile1.Text + "',jobr_txt='" + jobr.Text + "',rep_txt='" + rep.Text + "',novacc_txt='" + vacancy.Text + "',gender_txt='" + DropDownList2.SelectedValue + "',year_min_txt=" + Int32.Parse(minexp.Text) + ",year_max_txt=" + Int32.Parse(maxexp.Text) + ",jobt_txt='" + DropDownList3.SelectedValue + "',aqr_txt='" + aqr.Text + "',pqr_txt='" + pqr.Text + "',ab_txt='" + ab.Text + "',salary_txt=" + Int32.Parse(salary.Text) + ",tat_txt='" + tat.Text + "',loc_txt='" + location.Text + "',jobcode_txt='" + jobcode.Text + "',dis_ind_txt=" + dis + ",hidden_txt=" + hidden + " where pv_id_txt=" + Int32.Parse(Session["com_id"].ToString());

            m.ExecuteNonQuery();
        
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('update Successfully.')", true);

            c.Close();
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

            // Label1.Text = "fill up is not complete.";
        }

    }
}
