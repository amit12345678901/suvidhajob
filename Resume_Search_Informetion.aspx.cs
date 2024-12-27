using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Resume_Search_Informetion : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string s, m1, a, p, emp, des,key,fn,fa;
    int min_exp, max_exp, min_ctc, max_ctc;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Overview_Form.aspx");
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


            if (Request.Cookies["t1"].Value == "Both")
            {
                key = "";
            }
            else
            {
                key = "(in_txt='" + Request.Cookies["t1"].Value + "' or t_n='" + Request.Cookies["t1"].Value + "' or t_no_txt='" + Request.Cookies["t1"].Value + "' or f_n='" + Request.Cookies["t1"].Value + "' or ks_txt='" + Request.Cookies["t1"].Value + "') and ";
            }
            if (Request.Cookies["d2"].Value == "Both")
            {
                s = "";
            }
            else
            {
                s = "sex_txt='" + Request.Cookies["d2"].Value + "'  and ";
            }
            if (Request.Cookies["d13"].Value == "")
            {
                fn = "";
            }
            else
            {
                fn = "f_n='" + Request.Cookies["d13"].Value + "'  and ";
            }

            if (Request.Cookies["d10"].Value == "Select")
            {
                fa = "";
            }
            else
            {
                fa = "t_n='" + Request.Cookies["d10"].Value + "'  and ";
            }

            if (Request.Cookies["d3"].Value == "Any")
            {
                m1 = "";
            }
            else
            {
                m1 = "ms_txt='" + Request.Cookies["d3"].Value + "'  and ";
            }
            if (Request.Cookies["d4"].Value == "Any" || Request.Cookies["d4"].Value == "Select")
            {
                a = "";
            }
            else
            {
                a = "aq_txt='" + Request.Cookies["d4"].Value + "'  and ";
            }
            if (Request.Cookies["d5"].Value == "Any" || Request.Cookies["d5"].Value == "Select")
            {
                p = "";
            }
            else
            {
                p = "pq_txt='" + Request.Cookies["d3"].Value + "'  and ";
            }

            if (Request.Cookies["d6"].Value == "Select")
            {
                min_exp = 0;
            }
            else
            {

                min_exp = Int32.Parse(Request.Cookies["d6"].Value.ToString());

            }


            if (Request.Cookies["d7"].Value == "Select")
            {
                max_exp = 1000;
            }
            else
            {

                max_exp = Int32.Parse(Request.Cookies["d7"].Value.ToString());

            }

            if (Request.Cookies["d8"].Value == "Select")
            {
                min_ctc = 0;
            }
            else
            {

                min_ctc = Int32.Parse(Request.Cookies["d8"].Value.ToString());

            }

            if (Request.Cookies["d9"].Value == "Select")
            {
                max_ctc = 1000;
            }
            else
            {

                max_ctc = Int32.Parse(Request.Cookies["d9"].Value.ToString());

            }


            if (Request.Cookies["t2"].Value == "")
            {
                emp = "";
                // Label1.Text = "xxxxx";
            }
            else
            {
                //emp = " and curr_emp_txt='" + Request.Cookies["t2"].Value + "' ";
                //Label1.Text = "OUT";
                if (Request.Cookies["d11"].Value == "Current Employee")
                {


                    emp = " and curr_emp_txt='" + Request.Cookies["t2"].Value + "' ";


                }
                if (Request.Cookies["d11"].Value == "Previous Employee")
                {

                    emp = " and pre_emp_txt='" + Request.Cookies["t2"].Value + "' or pre_emp_txt2='" + Request.Cookies["t2"].Value + "' or pre_emp_txt3='" + Request.Cookies["t2"].Value + "' ";

                }
                if (Request.Cookies["d11"].Value == "Both Employee")
                {


                    emp = " and pre_emp_txt='" + Request.Cookies["t2"].Value + "' or pre_emp_txt2='" + Request.Cookies["t2"].Value + "' or pre_emp_txt3='" + Request.Cookies["t2"].Value + "' or curr_emp_txt='" + Request.Cookies["t2"].Value + "' ";
                }
            }
            if (Request.Cookies["t3"].Value == "")
            {
                des = "";
            }
            else
            {
                //des = " and curr_des_txt='" + Request.Cookies["t3"].Value + "' ";
                if (Request.Cookies["d12"].Value == "Current Employee")
                {

                    des = " and curr_des_txt='" + Request.Cookies["t3"].Value + "' ";
                }
                if (Request.Cookies["d12"].Value == "Previous Employee")
                {

                    des = " and pre_des_txt='" + Request.Cookies["t3"].Value + "' or pre_des_txt2='" + Request.Cookies["t3"].Value + "' or pre_des_txt3='" + Request.Cookies["t3"].Value + "' ";
                }
                if (Request.Cookies["d12"].Value == "Both Employee")
                {


                    des = " and pre_des_txt='" + Request.Cookies["t3"].Value + "' or pre_des_txt2='" + Request.Cookies["t3"].Value + "' or pre_des_txt3='" + Request.Cookies["t3"].Value + "' or curr_des_txt='" + Request.Cookies["t3"].Value + "' ";
                }
            }
         
            m.CommandText = "select id_txt,name_txt,in_txt,aq_txt,ks_txt,exp_txt,ctc_txt,cloc_txt,email_txt,mob_txt,resume_view_txt,update_date  from pyr_master  where  Status_txt=0 and " + key + s + fn + fa + m1 + a + p + " exp_txt>=" + min_exp + " and exp_txt<=" + max_exp  + emp + des + " order by id_txt desc";

            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "pyr_master");
            GridView1.DataSource = ds.Tables["pyr_master"];
            GridView1.DataBind();
            c.Close();
            if (GridView1.Rows.Count > 0)
            {
                email_found.Text = GridView1.Rows.Count.ToString();
            }
           
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       // GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Select1":
                int r1 = Int32.Parse((e.CommandArgument).ToString());
                r1 = r1 % 10;
                Label lbid1 = (Label)GridView1.Rows[r1].FindControl("lbid");

                Session["id_txt"] = lbid1.Text;
                
                
                Response.Redirect("Select_Folder.aspx");
                break;

            case "Detail":
                if (Session["Username_txt"] == null)
                {
                    Response.Redirect("Employer_Login.aspx");
                }
                else
                {
                  
                        int r2 = Int32.Parse((e.CommandArgument).ToString());
                        r2 = r2 % 10;
                        Label lbid2 = (Label)GridView1.Rows[r2].FindControl("lbid");

                        Session["id_txt"] = lbid2.Text;

                 
                        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                        c.Open();
                        m.Connection = c;
                       
                    
                    /*m.CommandText = "select remark from clogin_detail  where id_txt=" + Session["Client_number"];
                        SqlDataReader dr;
                        dr = m.ExecuteReader();
                        dr.Read();
                        string viewcv = dr[0].ToString();
                        dr.Close();
                        viewcv = viewcv + "," + Session["id_txt"].ToString();
                      */

                        m.CommandText = "update  pyr_master set resume_view_txt = resume_view_txt + 1  where id_txt=" + Session["id_txt"];
                        m.ExecuteNonQuery();
                      

                        c.Close();

                    
                        Response.Redirect("profile_Form1.aspx");

                    
                   
                }
                break;
        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[1].Visible = false;
           e.Row.Cells[2].Visible = false;
            e.Row.Cells[3].Visible = false;
           e.Row.Cells[4].Visible = false;

           e.Row.Cells[11].Visible = false;
          
            e.Row.Cells[12].Visible = false;

           e.Row.Cells[5].Visible = false;
           e.Row.Cells[6].Visible = false;
           e.Row.Cells[7].Visible = false;
           e.Row.Cells[8].Visible = false;
           e.Row.Cells[9].Visible = false;
           e.Row.Cells[10].Visible = false;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();

    }

    protected void selall_Click(object sender, EventArgs e)
    {
        for (int i2 = 0; i2 < GridView1.Rows.Count; i2++)
        {

            CheckBox cb = (CheckBox)GridView1.Rows[i2].FindControl("ch");

            cb.Checked = true;
        }

    }
    protected void deselall_Click(object sender, EventArgs e)
    {
        for (int i2 = 0; i2 < GridView1.Rows.Count; i2++)
        {

            CheckBox cb = (CheckBox)GridView1.Rows[i2].FindControl("ch");

            cb.Checked = false;
        }
    }


    protected void send_Click(object sender, EventArgs e)
    {
        string value = "", name5 = "";
        int i1 = 0;

        for (int i2 = 0; i2 < GridView1.Rows.Count; i2++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i2].FindControl("ch");
            if (cb.Checked == true)
            {
                i1++;
                if (i1 == 1)
                {
                    value = GridView1.Rows[i2].Cells[9].Text;

                    name5 = GridView1.Rows[i2].Cells[2].Text;
                }
                else
                {
                    value = value + "," + GridView1.Rows[i2].Cells[9].Text;

                    name5 = name5 + "," + GridView1.Rows[i2].Cells[2].Text;

                }

            }

        }

        Session["cb_email"] = value;
        Session["cb_name"] = name5;
        if (i1 > 0)
        {
            if (Int32.Parse(Session["email_num"].ToString()) >= i1)
            {
                Response.Redirect("select_cb_email.aspx");
            }
            else
            {
                Label1.Text = "Your Balance is Not Sufficient. Your Currrnt Bance is=" + Session["email_num"] + " . Your Select Resume Number is=" + i1;

            }
        }
        else
        {
            Label1.Text = "Select atleast one.";
        }


    }
    protected void sms_send_Click(object sender, EventArgs e)
    {
        string value = "", name5 = "";
        int i1 = 0;

        for (int i2 = 0; i2 < GridView1.Rows.Count; i2++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i2].FindControl("ch");
            if (cb.Checked == true)
            {
                i1++;
                if (i1 == 1)
                {
                    value = GridView1.Rows[i2].Cells[10].Text;

                    name5 = GridView1.Rows[i2].Cells[2].Text;
                }
                else
                {
                    value = value + "," + GridView1.Rows[i2].Cells[10].Text;

                    name5 = name5 + "," + GridView1.Rows[i2].Cells[2].Text;

                }

            }

        }

        Session["mb_num"] = value;
        Session["cb_name"] = name5;
         if (i1 > 0)
        {
        if (Int32.Parse(Session["sms_num"].ToString()) >= i1)
        {
            //Label1.Text = Session["mb_num"].ToString();
            Response.Redirect("send_sms.aspx");
        }
        else
        {
            Label1.Text = "Your Balance is Not Sufficien. Your Currrnt Bance is=" + Session["sms_num"] + " . Your Select Resume Number is=" + i1;

        }

        }
         else
         {
             Label1.Text = "Select atleast one.";
         }
    }


}
