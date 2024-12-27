using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Modidie_Company : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
   int remcount=0;
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
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "select co_name_txt2,Username_txt,password_txt,id_txt,branch_txt,DrCity1,add_txt2,email_txt,t_n2,t_n_o2,phone2,mobile2,website2,c_point_txt2,desi_txt2,size_txt2,branches_txt2,empl_txt2,auth_txt,rs_auth,jp_auth,dev_by,end_date,mail_auth,mfs_auth  from clogin_detail where id_txt=" + Int32.Parse(Session["com_id"].ToString());
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            cname.Text = dr[0].ToString();
            uname.Text = dr[1].ToString();
            Session["previous"] = dr[1].ToString();
            password.Text = dr[2].ToString();

            c_no.Text = dr[3].ToString();
            branch.Text = dr[4].ToString();
            city.SelectedValue = dr[5].ToString();

            address.Text = dr[6].ToString();
            email.Text = dr[7].ToString();
            t_n2.Text = dr[8].ToString();

            t_no2.Text = dr[9].ToString();
            phone.Text = dr[10].ToString();
            mobile.Text = dr[11].ToString();

            website.Text = dr[12].ToString();
           cp.Text = dr[13].ToString();
            designation.Text = dr[14].ToString();

            size1.Text = dr[15].ToString();
            branches.Text = dr[16].ToString();
            empl.Text = dr[17].ToString();

           // terms.Text = dr[18].ToString();
            //s_date.Text = dr[19].ToString();
            //e_date.Text = dr[20].ToString();

            
                auth_txt.Checked = Convert.ToBoolean(dr[18].ToString());
                rs_auth.Checked = Convert.ToBoolean(dr[19].ToString());
                jp_auth.Checked = Convert.ToBoolean(dr[20].ToString());
               dev.Text = dr[21].ToString();
               if (dr[22].ToString() != "")
               {

                   lbstdate.Text = Convert.ToDateTime(dr[22].ToString()).ToShortDateString();
               }
               else
               {

                   lbstdate.Text = DateTime.Now.ToShortDateString().ToString();

                   //lbstdate.Text = stdate.SelectedDate.ToLongDateString();
               }


           
               mail_auth.Checked = Convert.ToBoolean(dr[23].ToString());
               folder_auth.Checked = Convert.ToBoolean(dr[24].ToString());

              
        }
        catch(Exception ex)
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


        if (cname.Text != "" && uname.Text != "" && password.Text != "" && city.SelectedValue != "Select" && address.Text != "" && mobile.Text != "")
        {

        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            bind1();
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

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);
        
        }
       
    }
   
   
    public void bind1()
    {
        int auth = 0, rs = 0, jp = 0, jobrem = 0, emailrem = 0, smsrem = 0, cvrem = 0, mauth = 0, fauth=0;
        if (auth_txt.Checked == true)
        {
            auth = 1;
        }
        if (rs_auth.Checked == true)
        {
            rs = 1;
        }
        if (jp_auth.Checked == true)
        {
            jp = 1;
        }
        if (mail_auth.Checked == true)
        {
            mauth = 1;
        }
        if (folder_auth.Checked == true)
        {
            fauth = 1;
        }
     
        if (Session["previous"].ToString() == uname.Text)
        {
            m.CommandText = "update clogin_detail set co_name_txt2='" + cname.Text + "',username_txt='" + uname.Text + "',password_txt='" + password.Text + "',Client_number='" + c_no.Text + "',c_point_txt2='" + cp.Text + "',DrCity1='" + city.SelectedValue + "',add_txt2='" + address.Text + "',email_txt='" + email.Text + "',t_n2='" + t_n2.SelectedValue + "',t_n_o2='" + t_no2.Text + "',phone2='" + phone.Text + "',mobile2='" + mobile.Text + "',website2='" + website.Text + "',branch_txt='" + branch.Text + "',desi_txt2='" + designation.Text + "',size_txt2='" + size1.Text + "',branches_txt2='" + branches.Text + "',empl_txt2='" + empl.Text + "',auth_txt=" + auth + ",rs_auth=" + rs + ",jp_auth=" + jp + ",dev_by='" + dev.Text + "',end_date='" + Convert.ToDateTime(lbstdate.Text).ToShortDateString() + "',mfs_auth=" + fauth + ",mail_auth=" + mauth + "  where id_txt=" + Session["com_id"];
            m.ExecuteNonQuery();

            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Account  update successfully')", true);
        

          //  Label1.Text = "update successfully.";
        }
        else
        {

            m.CommandText = "select  id_txt  from  clogin_detail where username_txt='" + uname.Text + "'";
            SqlDataReader dr1;
            dr1 = m.ExecuteReader();
            if (dr1.Read())
            {
                dr1.Close();
                //TextBox8.Text = "";
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('User Id is already exissist.')", true);

            }
            else
            {
                dr1.Close();


                m.CommandText = "update clogin_detail set co_name_txt2='" + cname.Text + "',username_txt='" + uname.Text + "',password_txt='" + password.Text + "',Client_number='" + c_no.Text + "',branch_txt='" + branch.Text + "',DrCity1='" + city.Text + "',add_txt2='" + address.Text + "',email_txt='" + email.Text + "',t_n2='" + t_n2.Text + "',t_n_o2='" + t_no2.Text + "',phone2='" + phone.Text + "',mobile2='" + mobile.Text + "',website2='" + website.Text + "',branch_txt='" + branch.Text + "',desi_txt2='" + designation.Text + "',size_txt2='" + size1.Text + "',branches_txt2='" + branches.Text + "',empl_txt2='" + email.Text + "',auth_txt=" + auth + ",rs_auth=" + rs + ",jp_auth=" + jp + ",dev_by='" + dev.Text + "',end_date='" + Convert.ToDateTime(lbstdate.Text).ToShortDateString() + "',mfs_auth=" + fauth + ",mail_auth=" + mauth + "  where id_txt=" + Session["com_id"];
                m.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Account  update successfully')", true);
                Session["previous"] = uname.Text;
            }
        }
    }

   
    }


