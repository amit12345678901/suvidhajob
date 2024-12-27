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
        if (Session["cvsearch_id"] == null)
        {
            Response.Redirect("Employer_Login.aspx");

        }
        else
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

            m.CommandText = "select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL_QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt,email_txt as LOCATION from pyr_master  where  Status_txt=0 and " + key + s + fn + fa + m1 + a + p + " exp_txt>=" + min_exp + " and exp_txt<=" + max_exp + " and ctc_txt>=" + min_ctc + " and ctc_txt<=" + max_ctc + emp + des;

            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "pyr_master");
            GridView1.DataSource = ds.Tables["pyr_master"];
            GridView1.DataBind();
            c.Close();
            email_found.Text = GridView1.Rows.Count.ToString();

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
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
                    value = GridView1.Rows[i2].Cells[11].Text;

                    name5 = GridView1.Rows[i2].Cells[7].Text;
                }
                else
                {
                    value = value + "," + GridView1.Rows[i2].Cells[11].Text;

                    name5 = name5 +"," + GridView1.Rows[i2].Cells[7].Text;

                }

            }
        }

        Session["cb_email"] = value;
        Session["cb_name"] = name5;
        if (Int32.Parse(Session["cv_num"].ToString()) >= i1)
        {
            Response.Redirect("select_cb_email.aspx");
        }
        else
        {
            Label1.Text = "Your Balance is Not Suficient. Your Currrnt Bance is=" + Session["cv_num"] + " . Your Select Resume Number is=" + i1;
            
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Select1":
                int r = Int32.Parse((e.CommandArgument).ToString());
                Session["id_txt"] = GridView1.DataKeys[r].Value.ToString();
                
                
                Response.Redirect("Select_Folder.aspx");
                break;

            case "Detail":

                if (Session["cvsearch_id"] == null)
                {
                    Response.Redirect("Employer_Login.aspx");
                }
                else
                {
                    if (Int32.Parse(Session["cv_num"].ToString()) > 0)
                    {
                        int r1 = Int32.Parse((e.CommandArgument).ToString());

                        Session["id_txt"] = GridView1.DataKeys[r1].Value.ToString();



                        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                        c.Open();
                        m.Connection = c;
                        m.CommandText = "update  cvsearch_num set remain= remain - 1  where id=" + Session["cvsearch_id"];
                        m.ExecuteNonQuery();
                        m.CommandText = "update  cvsearch_num set spend= spend + 1  where id=" + Session["cvsearch_id"];
                        m.ExecuteNonQuery();
                        m.CommandText = "update  login_det set searh_num= searh_num + 1  where id=" + Session["login_det_id"];
                        m.ExecuteNonQuery();

                        c.Close();

                        Session["cv_num"] = Int32.Parse(Session["cv_num"].ToString()) - 1;
                        //GridView1.Attributes.Add("onclick", "window.open(''profile_Form.aspx','View Details','height=500px,width=500px,scrollbars=1' ');");

                       ClientScript.RegisterStartupScript(this.GetType(), "onclick", "<script language=javascript>window.open('profile_Form.aspx','View Details','height=500px,width=500px,scrollbars=1');</script>");
                        
                        //ClientScript.RegisterStartupScript("onclick", "window.open(''profile_Form.aspx','View Details','height=500px,width=500px,scrollbars=1' ');");

                       // Response.Redirect("profile_Form.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Your account is Empty.');", true);

                    }
                }
                break;
        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[3].Visible = false;
            e.Row.Cells[7].Visible = false;
            e.Row.Cells[11].Visible = false;

        }
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

  
}
