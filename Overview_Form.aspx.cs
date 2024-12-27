using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Mail;
using System.Data;

public partial class Overview_Form : System.Web.UI.Page
{
    public string sta, newobject, newobject1;
	public string[] arr = new string[15];
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    General g1 = new General();

    TimeSpan ts = new TimeSpan(+5, +30, 0);

    int rows = 0, maxid = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ( Session["user_txt"]  == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
		
            try
        
		    { 
			
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  id_txt,name_txt,email_txt,cloc_txt,tel_txt,mob_txt,in_txt,t_n,exp_txt,aq_txt,resume_view_txt,update_date,Status_txt,f_n,res_tit_txt  from  pyr_master where user_txt='" + Session["user_txt"] + "'";
                SqlDataReader dr;
                dr = m.ExecuteReader();
                dr.Read();
               
                arr[0] = dr[0].ToString();
                arr[1] = dr[1].ToString();
                arr[2] = dr[2].ToString();
                
                arr[3] = dr[3].ToString();
                
                arr[4] = dr[4].ToString();
               
                arr[5] = dr[5].ToString();
                if (dr[6].ToString() != "Select")
                {
                    arr[6] = dr[6].ToString();
                }
                else
                {
                    arr[6] = "";
                }
                if (dr[7].ToString() != "Select")
                {

                    arr[7] = dr[7].ToString();
                }
                else
                {
                    arr[7] = "";
                }
                arr[8] = dr[8].ToString();
                arr[9] = dr[9].ToString();
                arr[10] = dr[10].ToString();
                arr[11] = dr[11].ToString();
                if (Convert.ToBoolean(dr[12].ToString()) == false)
                {
                    sta = "Unblock";
                }
                else
                {
                    sta = "Block";
                }
                arr[12] = sta.ToString(); 
                arr[13] = dr[13].ToString();
                arr[14] = dr[14].ToString();
                dr.Close();
                c.Close();

                rows = g1.ExecDB("update pyr_master set lastlog_date='" + DateTime.Now.Date.Add(ts).ToShortDateString() +"' where user_txt='" + Session["user_txt"] + "'");

            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            {
                c.Close();
            }
        }
    }
  
  
}
