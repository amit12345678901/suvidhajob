using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Company_UpdateProfile : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "select co_name_txt2,DrCity1,add_txt2,email_txt,t_n2,t_n_o2,phone2,mobile2,website2,c_point_txt2,desi_txt2,size_txt2,branches_txt2,empl_txt2 from clogin_detail  where id_txt=" + Int32.Parse(Session["client_number"].ToString());
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            cname.Text = dr[0].ToString();
            /*uname.Text = dr[1].ToString();
            password.Text = dr[2].ToString();

            c_no.Text = dr[3].ToString();
            branch.Text = dr[4].ToString();*/
            city.Text = dr[1].ToString();

            address.Text = dr[2].ToString();
            email.Text = dr[3].ToString();
            t_n2.Text = dr[4].ToString();

            t_no2.Text = dr[5].ToString();
            phone.Text = dr[6].ToString();
            mobile.Text = dr[7].ToString();

            website.Text = dr[8].ToString();
            c_profile.Text = dr[9].ToString();
            designation.Text = dr[10].ToString();

            size1.Text = dr[11].ToString();
            branches.Text = dr[12].ToString();
            empl.Text = dr[13].ToString();

            /*terms.Text = dr[18].ToString();
            s_date.Text = dr[19].ToString();
            e_date.Text = dr[20].ToString();


            auth_txt.Checked = Convert.ToBoolean(dr[21].ToString());



            mail_auth.Checked = Convert.ToBoolean(dr[22].ToString());


            rs_auth.Checked = Convert.ToBoolean(dr[23].ToString());
            mfs_auth.Checked = Convert.ToBoolean(dr[24].ToString());

            jp_auth.Checked = Convert.ToBoolean(dr[25].ToString());

            dev.Text = dr[26].ToString();*/
            //dev.Attributes.Add(on);
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


    protected void update_Click(object sender, EventArgs e)
    {
        try
        {


            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "update clogin_detail set co_name_txt2='" + cname.Text + "',DrCity1='" + city.Text + "',add_txt2='" + address.Text + "',email_txt='" + email.Text + "',t_n2='" + t_n2.Text + "',t_n_o2='" + t_no2.Text + "',phone2='" + phone.Text + "',mobile2='" + mobile.Text + "',website2='" + website.Text + "',c_point_txt2='" + c_profile.Text + "',desi_txt2='" + designation.Text + "',size_txt2='" + size1.Text + "',branches_txt2='" + branches.Text + "',empl_txt2='" + empl.Text  + "'  where id_txt=" + Int32.Parse(Session["client_number"].ToString());
            //,auth_txt='" + ch1 + "',mail_auth='" + ch2 + "',rs_auth='" + ch3 + "',mfs_auth='" + ch4 + "',jp_auth='" + ch5 + "'
            m.ExecuteNonQuery();
            Label1.Text = "Successfully Update.";
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
}
