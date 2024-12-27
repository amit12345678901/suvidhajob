﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data.SqlClient;
using System.IO;

public partial class Profile_Form1 : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0, i = 0;
    public string fileName;
    DataTable dt2 = new DataTable();

    public string impdt = "", name1 = "";

    public string view1;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    public string[] arr = new string[41];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
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

    protected void send_Click(object sender, EventArgs e)
    {
        
        /* string value = "", name5 = "";
         int i1 = 0;

         value = GridView1.Rows[i2].Cells[11].Text;

         name5 = GridView1.Rows[i2].Cells[4].Text;

          for (int i2 = 0; i2 < GridView1.Rows.Count; i2++)
          {
              CheckBox cb = (CheckBox)GridView1.Rows[i2].FindControl("ch");
              if (cb.Checked == true)
              {
                  i1++;
                  if (i1 == 1)
                  {
                      value = GridView1.Rows[i2].Cells[11].Text;

                      name5 = GridView1.Rows[i2].Cells[4].Text;
                  }
                  else
                  {
                      value = value + "," + GridView1.Rows[i2].Cells[11].Text;

                      name5 = name5 + "," + GridView1.Rows[i2].Cells[4].Text;

                  }

              }

          }

          Session["cb_email"] = value;
          Session["cb_name"] = name5;*/

        if (Int32.Parse(Session["email_num"].ToString()) >= 1)
        {
            Response.Redirect("select_cb_email.aspx");
        }
        else
        {
            Label1.Text = "Your Balance is Not Suficient. Your Currrnt Bance is=" + Session["email_num"] + ".";

        }



    }
    protected void sms_send_Click(object sender, EventArgs e)
    {
        if (Int32.Parse(Session["sms_num"].ToString()) >= 1)
        {
            Response.Redirect("send_sms.aspx");
        }
        else
        {
            Label1.Text = "Your Balance is Not Suficient. Your Currrnt Bance is=" + Session["sms_num"] + ".";

        }

    }

    protected void downcv_Click(object sender, EventArgs e)
    {
        dt = g1.return_dt("SELECT name_txt,File_Data FROM pyr_master WHERE id_txt=" + Session["id_txt"]);

        fileName = dt.Rows[0]["name_txt"].ToString() + ".doc";


        Byte[] bytes = (Byte[])dt.Rows[0]["File_Data"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Response.ContentType = dt.Rows[0]["ContentType"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename="
        + fileName.ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select  name_txt,date_txt,month_txt,year_txt,sex_txt,ms_txt,email_txt,add_txt,S_country,cloc_txt,tel_txt,mob_txt,aq_txt,pq_txt,ins_txt,yq_txt,res_tit_txt,ks_txt,exp_txt,in_txt,t_n,curr_emp_txt,curr_des_txt,job_res_txt,curr_emp_from_txt,summery_txt,jt_txt,es_txt,pre_txt,lan1_txt,lan2_txt,lan3_txt,lan1_r_txt,lan1_w_txt,lan1_s_txt,lan2_r_txt,lan2_w_txt,lan2_s_txt,lan3_r_txt,lan3_w_txt,lan3_s_txt,File_Name  from  pyr_master where id_txt=" + Session["id_txt"];

            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            arr[0] = dr[0].ToString();
            Session["cb_name"] = dr[0].ToString();
            arr[1] = dr[1].ToString();
            arr[2] = dr[2].ToString();
            arr[3] = dr[3].ToString();
            arr[4] = dr[4].ToString();
            arr[5] = dr[5].ToString();
            arr[6] = dr[6].ToString();
            Session["cb_email"] = dr[6].ToString();
            arr[7] = dr[7].ToString();
            arr[8] = dr[8].ToString();
            arr[9] = dr[9].ToString();
            arr[10] = dr[10].ToString();
            arr[11] = dr[11].ToString();
            Session["mb_num"] = dr[11].ToString();
            arr[12] = dr[12].ToString();
            arr[13] = dr[13].ToString();
            arr[14] = dr[14].ToString();
            arr[15] = dr[15].ToString();


            arr[16] = dr[16].ToString();
            arr[17] = dr[17].ToString();
            arr[18] = dr[18].ToString();
            arr[19] = dr[19].ToString();
            arr[20] = dr[20].ToString();
            arr[21] = dr[21].ToString();
            arr[22] = dr[22].ToString();
            arr[23] = dr[23].ToString();
            arr[24] = dr[24].ToString();
            arr[25] = dr[25].ToString();
            arr[26] = dr[26].ToString();
            arr[27] = dr[27].ToString();
            arr[28] = dr[28].ToString();
            arr[29] = dr[29].ToString();
            arr[30] = dr[30].ToString();
            arr[31] = dr[31].ToString();
            if (dr[32].ToString() == "Yes")
            {

                arr[32] = "Read";
            }

            if (dr[33].ToString() == "Yes")
            {

                arr[33] = "Write";
            }

            if (dr[34].ToString() == "Yes")
            {

                arr[34] = "Speak";

            }

            if (dr[35].ToString() == "Yes")
            {

                arr[35] = "Read";

            }

            if (dr[36].ToString() == "Yes")
            {

                arr[36] = "Write";
            }

            if (dr[37].ToString() == "Yes")
            {

                arr[37] = "Speak";
            }

            if (dr[38].ToString() == "Yes")
            {
                arr[38] = "Read";
            }

            if (dr[39].ToString() == "Yes")
            {
                arr[39] = "Write";
            }

            if (dr[40].ToString() == "Yes")
            {
                arr[40] = "Speak";
            }
            if (dr[41].ToString() == "no")
            {
                downcv.Visible = false;
                Label1.Text = "Cv is not uploaded by candidate.";
            }
            else
            {
                downcv.Visible = true;
                view1 = "cv\\" + dr[41].ToString();
            }
            dr.Close();
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
