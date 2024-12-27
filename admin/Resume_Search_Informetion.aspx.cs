using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Resume_Search_Informetion : System.Web.UI.Page
{


    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int rows = 0;


    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string s, m1, a, p, emp, des, key, fn, fa, dtrng2, indus1, sloc;
    int min_exp, max_exp, min_ctc, max_ctc;

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
                bind1();
            }
        }
    }

    public void bind1()
    {
        try
        {

            if (Request.Cookies["t1"].Value == "")
            {
                key = "";
            }
            else
            {
                if (Request.Cookies["d14"].Value == "1")
                {

                key = "(in_txt like '%" + Request.Cookies["t1"].Value + "%' or t_n like '%" + Request.Cookies["t1"].Value + "%' or t_no_txt like '%" + Request.Cookies["t1"].Value + "%' or f_n like '%" + Request.Cookies["t1"].Value + "%' or ks_txt like '%" + Request.Cookies["t1"].Value + "%' or aq_txt like '%" + Request.Cookies["t1"].Value + "%' or pq_txt like '%" + Request.Cookies["t1"].Value + "%' or job_res_txt like '%" + Request.Cookies["t1"].Value + "%' or pre_emp_txt like '%" + Request.Cookies["t1"].Value + "%') and ";

                }
                else
                {
                    string[] st = Request.Cookies["t1"].Value.Split(' ');
                    int j = 0;
                    for (int i = 0; i < st.Count(); i++)
                    {
                        j++;
                        key += "(in_txt like '%" + st[i].ToString() + "%' or t_n like '%" + st[i].ToString() + "%' or t_no_txt like '%" + st[i].ToString() + "%' or f_n like '%" + st[i].ToString() + "%' or ks_txt like '%" + st[i].ToString() + "%' or aq_txt like '%" + st[i].ToString() + "%' or pq_txt like '%" + st[i].ToString() + "%') or ";

                    }

                    if (j == 1)
                    {

                        key = "(in_txt like '%" + Request.Cookies["t1"].Value + "%' or t_n like '%" + Request.Cookies["t1"].Value + "%' or t_no_txt like '%" + Request.Cookies["t1"].Value + "%' or f_n like '%" + Request.Cookies["t1"].Value + "%' or ks_txt like '%" + Request.Cookies["t1"].Value + "%' or aq_txt like '%" + Request.Cookies["t1"].Value + "%' or pq_txt like '%" + Request.Cookies["t1"].Value + "%') and ";
                    }
                    else
                    {
                        key = key.Remove(key.Length - 3);
                        key = "(" + key + ")";
                        key += "and ";
                    }
                }

            }


            if (Request.Cookies["t4"].Value == "" || Request.Cookies["t5"].Value == "")
            {
                dtrng2 = "";
            }
            else
            {
                if (Request.Cookies["dtrng"].Value == "1")
                {

                    dtrng2 = "crt_date between '" + Request.Cookies["t4"].Value + "'  and '" + Request.Cookies["t5"].Value + "'  and ";
                }
                else if (Request.Cookies["dtrng"].Value == "2")
                {
                    dtrng2 = "update_date between '" + Request.Cookies["t4"].Value + "'  and '" + Request.Cookies["t5"].Value + "'  and ";

                }

                else
                {
                    dtrng2 = "lastlog_date between '" + Request.Cookies["t4"].Value + "'  and '" + Request.Cookies["t5"].Value + "'  and ";
                }
            }


            if (Request.Cookies["d2"].Value == "Both")
            {
                s = "";
            }
            else
            {

                s = " sex_txt='" + Request.Cookies["d2"].Value + "'  and ";

            }

            if (Request.Cookies["loc"].Value == "")
            {

                sloc = "";

            }
            else
            {
                sloc = "cloc_txt like '%" + Request.Cookies["loc"].Value + "%'  and ";
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
                Label1.Text = "OUT";
                if (Request.Cookies["d11"].Value == "Current Employee")
                {


                    emp = " and curr_emp_txt='" + Request.Cookies["t2"].Value + "' ";
                    Label1.Text = "IN";

                }
                if (Request.Cookies["d11"].Value == "Previous Employee")
                {

                    emp = " and pre_emp_txt='" + Request.Cookies["t2"].Value + "' or pre_emp_txt2='" + Request.Cookies["t2"].Value + "' or pre_emp_txt3='" + Request.Cookies["t2"].Value + "' ";
                    Label1.Text = "PRE";
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

            if (Request.Cookies["din"] != null)
            {
                if (Request.Cookies["din"].Value != "Select")
                {
                    indus1 = "in_txt='" + Request.Cookies["din"].Value + "' and  ";
                }
                else
                {

                    indus1 = "";

                }
            }
            else
            {
                indus1 = "";
            }

            //dt = g1.return_dt("select id_txt,name_txt  as NAME,in_txt  as  INDUSTRY,aq_txt as [ACADEMIC QUALIFICATION],pq_txt as [PROFESIONAL_QUALIFICATIN],exp_txt as EXPERIENCE,ctc_txt  as SALARY,cloc_txt as LOCATION from pyr_master  where  Status_txt=0 and  " + key + s + fn + fa + m1 + a + p + dtrng2 + indus1 +" exp_txt>=" + min_exp + " and exp_txt<=" + max_exp  + emp + des);


                     dt = g1.return_dt("select id_txt,name_txt,sex_txt,date_txt,month_txt,year_txt,ctc_txt,in_txt,aq_txt,pq_txt,exp_txt,f_n,t_n,mob_txt,email_txt,ks_txt,curr_emp_txt,curr_des_txt,convert(varchar(10),crt_date,103) as crt_date,update_date,job_res_txt,summery_txt from pyr_master");

            GridView1.DataSource = dt;
            GridView1.DataBind();

            //GridView2.DataSource = dt;
            //GridView2.DataBind();

            if (dt.Rows.Count > 0)
            {
                resume_found.Text = dt.Rows.Count.ToString();
            }
            else
            {
                resume_found.Text = "0";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Select1":
                int r = Int32.Parse((e.CommandArgument).ToString());
                Session["id_txt"] = GridView1.DataKeys[r].Value.ToString();


                Response.Redirect("Select_Folder.aspx");
                break;

            case "Detail":
                int r1 = Int32.Parse((e.CommandArgument).ToString());

                Session["can_id"] = GridView1.DataKeys[r1].Value.ToString();
                Response.Redirect("Viewprofile_Form.aspx");
                break;
        }
    }
    //protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.Cells.Count > 2)
    //    {
    //        e.Row.Cells[1].Visible = false;
    //    }
    //}


    //protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.Cells.Count > 2)
    //    {
    //        e.Row.Cells[1].Visible = false;
    //    }
    //}

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind1();
    }
   
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    private void ExportToExcel(string strFileName, GridView gv)
    {
        Response.ClearContent();
        Response.AddHeader("content-disposition", "attachment; filename=" + strFileName);
        Response.ContentType = "application/excel";
        System.IO.StringWriter sw = new System.IO.StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        gv.RenderControl(htw);
        Response.Write(sw.ToString());
       Response.End();
    }

    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {
       if (e.Row.Cells.Count > 2)
      {
          e.Row.Cells[0].Visible = false;
      }
    }


}
