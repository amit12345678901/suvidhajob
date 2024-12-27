using System;
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

public partial class admin_job_order_edit : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dtacnt = new DataTable();
    DataTable dtconslt = new DataTable();
    int rows = 0;
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["login"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
               // postdt.Text = DateTime.Now.Date.ToShortDateString().ToString();
                Session["pr_id"] = null;
                bindgroup();
                bind();
            }

        }
    }
    public void bindgroup()
    {



        cmp_name.Items.Clear();
        cmp_name.Items.Add("--Select Company Name--");
        g1.populate_combo("select co_name_txt2 from clogin_detail where Client_number like 'SPC%'  order by id_txt", cmp_name);
        conslt.Items.Clear();
        conslt.Items.Add("--Select Consultant Name--");
        g1.populate_combo("select uname from admin_master where roll='Consultant'", conslt);

        if (Convert.ToString(Session["roll"]) == "Administrator")
        {
            pn_admin.Visible = true;
            pn_acnt.Visible = true;
            acnt.Items.Clear();
            acnt.Items.Add("--Select Accountant Name--");
            //g1.populate_combo("select uname from admin_master where roll='Accountant'", acnt);
            g1.populate_combo("select uname from admin_master where roll in('Accountant','Administrator')", acnt);

        }
        else
        {

            if (Convert.ToString(Session["roll"]) == "Accountant")
            {

                pn_admin.Visible = true;
                pn_acnt.Visible = false;
            }
            else
            {
                pn_admin.Visible = false;
            }
        }

    }
    public void bind()
    {
        try
        {
            Response.Write("1");
           
            if (Convert.ToString(Session["roll"]) != "Administrator")
            {

                if (Convert.ToString(Session["roll"]) != "Accountant")
                {

                //    dtconslt = g1.return_dt("select j.id,j.pos,j.loc,j.status,j.post_date,c.co_name_txt2,a.uname,j.edit_date from job_orders j,clogin_detail c,admin_master a where j.cmpid=c.id_txt and j.acntid=a.id and conslid=" + Session["user_no2"]);
                    dtconslt = g1.return_dt("select j.id,j.pos,j.loc,j.status,j.post_date,c.co_name_txt2,a.uname,j.edit_date from job_orders j,clogin_detail c,admin_master a where j.cmpid=c.id_txt  and conslid=" + Session["user_no2"]);


                    GridView3.DataSource = dtconslt;
                    GridView3.DataBind();

                }
                else
                {

                    Response.Write(Convert.ToString(Session["user_no2"]));

                    dtacnt = g1.return_dt("select j.id,j.pos,j.loc,j.status,j.post_date,c.co_name_txt2,a1.uname,j.edit_date from job_orders j,clogin_detail c,admin_master a1 where j.cmpid=c.id_txt and j.acntid=" + Session["user_no2"] + " and j.conslid=a1.id");


                    GridView2.DataSource = dtacnt;
                   GridView2.DataBind();
                }


            }
            else
            {
               // dt = g1.return_dt("select j.id,j.pos,j.loc,j.status,j.post_date,c.co_name_txt2,a.uname,a1.uname,j.edit_date from job_orders j,clogin_detail c,admin_master a,admin_master a1 where j.cmpid=c.id_txt and j.acntid=a.id and j.conslid=a1.id");
                dt = g1.return_dt("select j.id,j.pos,j.loc,j.status,j.post_date,c.co_name_txt2,a.uname,a1.uname,j.edit_date from job_orders j,clogin_detail c,admin_master a,admin_master a1 where j.cmpid=c.id_txt  and j.conslid=a1.id");

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            
          
          

            for (int i = 0; i < GridView2.Rows.Count; i += 1)
            {
                Label lbdt3 = (Label)GridView2.Rows[i].FindControl("lbdt");
                lbdt3.Text = Convert.ToDateTime(lbdt3.Text).ToShortDateString();


                Label lbdt5 = (Label)GridView2.Rows[i].FindControl("lbdt1");
                lbdt5.Text = Convert.ToDateTime(lbdt5.Text).ToShortDateString();
            }

            for (int i = 0; i < GridView1.Rows.Count; i += 1)
            {
                Label lbdt3 = (Label)GridView1.Rows[i].FindControl("lbdt");
                lbdt3.Text = Convert.ToDateTime(lbdt3.Text).ToShortDateString();
                Label lbdt5 = (Label)GridView1.Rows[i].FindControl("lbdt1");
                lbdt5.Text = Convert.ToDateTime(lbdt5.Text).ToShortDateString();
            }


            for (int i = 0; i < GridView3.Rows.Count; i += 1)
            {
                Label lbdt3 = (Label)GridView3.Rows[i].FindControl("lbdt");
                lbdt3.Text = Convert.ToDateTime(lbdt3.Text).ToShortDateString();
                Label lbdt5 = (Label)GridView3.Rows[i].FindControl("lbdt1");
                lbdt5.Text = Convert.ToDateTime(lbdt5.Text).ToShortDateString();
            }

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
   
    protected void save_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["roll"]) == "Administrator")
        {
            if (cmp_name.SelectedValue != "--Select Company Name--" && conslt.SelectedValue != "--Select Consultant Name--" && loc.Text != "" && pos.Text != "")
            {

                if (Session["pr_id"] == null)
                {
                    Label1.Text = "Please Select Edit id...";
                }
                else
                {
                    string cmpid = g1.reterive_val("select id_txt  from clogin_detail where co_name_txt2='" + cmp_name.SelectedValue + "'");
                    string cnsltid = g1.reterive_val("select id  from admin_master where uname='" + conslt.SelectedValue + "'");
                    string acntid = g1.reterive_val("select id  from admin_master where uname='" + acnt.SelectedValue + "'");
                    rows = g1.ExecDB("update job_orders set pos='" + pos.Text + "',loc='" + loc.Text + "',status='" + status.SelectedValue.ToString() + "',cmpid=" + Int32.Parse(cmpid) + ",conslid=" + Int32.Parse(cnsltid) + ",acntid=" + Int32.Parse(acntid) + " where id=" + Session["pr_id"]);

                     Session["pr_id"] = null;
                     bind();
                    
                    
                }
                cmp_name.SelectedValue = "--Select Company Name--";
                conslt.SelectedValue = "--Select Consultant Name--";
                acnt.SelectedValue = "--Select Accountant Name--";
                loc.Text = string.Empty;
                pos.Text = string.Empty;
               
                Label1.Text = "Successfully update.";

            }
            else
            {
                Label1.Text = "Please insert all fields...";
            }

        }
        else if (Convert.ToString(Session["roll"]) == "Accountant")
        {
            if (Session["pr_id"] == null)
            {
                Label1.Text = "Please Select Edit id...";
            }
            else
            {
                string cmpid = g1.reterive_val("select id_txt  from clogin_detail where co_name_txt2='" + cmp_name.SelectedValue + "'");
                string cnsltid = g1.reterive_val("select id  from admin_master where uname='" + conslt.SelectedValue + "'");
                //string acntid = g1.reterive_val("select id  from admin_master where uname='" + acnt.SelectedValue + "'");
                rows = g1.ExecDB("update job_orders set pos='" + pos.Text + "',loc='" + loc.Text + "',status='" + status.SelectedValue.ToString() + "',cmpid=" + Int32.Parse(cmpid) + ",conslid=" + Int32.Parse(cnsltid) + " where id=" + Session["pr_id"]);

                Session["pr_id"] = null;
                bind();
            }

        }
        else if (Convert.ToString(Session["roll"]) == "Consultant")
        {
            if (Session["pr_id"] == null)
            {
                Label1.Text = "Please Select Edit id...";
            }
            else
            {
                rows = g1.ExecDB("update job_orders set status='" + status.SelectedValue.ToString() + "',edit_date='" + DateTime.Now.Date.ToShortDateString() + "' where id=" + Session["pr_id"]);
                Session["pr_id"] = null;
                bind();
            }

        }
        else
        {


        }

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);

                rows = g1.ExecDB("delete  from  job_orders    where id=" + id);
                if (rows > 0)
                {
                    bind();
                    Label1.Text = "delete successfully.";
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["pr_id"] = GridView1.DataKeys[r2].Value.ToString();
                dt1 = g1.return_dt("select *  from  job_orders    where id=" + Session["pr_id"]);
                if (dt1.Rows.Count > 0)
                {
                    string cmpname2 = g1.reterive_val("select  co_name_txt2 from clogin_detail where id_txt=" + Convert.ToString(dt1.Rows[0]["cmpid"]));
                    string consltid2 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["conslid"]));
                    string acntname3 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["acntid"]));
                    status.SelectedValue = Convert.ToString(dt1.Rows[0]["status"]);
                    cmp_name.SelectedValue = cmpname2;
                    conslt.SelectedValue = consltid2;
                    acnt.SelectedValue = acntname3;
                    loc.Text = Convert.ToString(dt1.Rows[0]["loc"]);
                    pos.Text = Convert.ToString(dt1.Rows[0]["pos"]);
                   // postdt.Text = Convert.ToDateTime(Convert.ToString(dt1.Rows[0]["post_date"])).ToShortDateString();

                }

                break;

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {

            e.Row.Cells[18].Visible = false;

            e.Row.Cells[16].Visible = false;
            e.Row.Cells[17].Visible = false;
            e.Row.Cells[15].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[11].Visible = false;
            e.Row.Cells[16].Visible = false;//  Consultant
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[13].Visible = false;
            e.Row.Cells[14].Visible = false;

        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);

                rows = g1.ExecDB("delete  from  job_orders    where id=" + id);
                if (rows > 0)
                {
                    bind();
                    Label1.Text = "delete successfully.";
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["pr_id"] = GridView2.DataKeys[r2].Value.ToString();
                dt1 = g1.return_dt("select *  from  job_orders    where id=" + Session["pr_id"]);
                if (dt1.Rows.Count > 0)
                {
                    string cmpname2 = g1.reterive_val("select  co_name_txt2 from clogin_detail where id_txt=" + Convert.ToString(dt1.Rows[0]["cmpid"]));
                    string consltid2 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["conslid"]));
                   // string acntname3 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["acntid"]));

                    cmp_name.SelectedValue = cmpname2;
                    conslt.SelectedValue = consltid2;
                   // acnt.SelectedValue = acntname3;
                    status.SelectedValue = Convert.ToString(dt1.Rows[0]["status"]);
                    loc.Text = Convert.ToString(dt1.Rows[0]["loc"]);
                    pos.Text = Convert.ToString(dt1.Rows[0]["pos"]);
                    //postdt.Text = Convert.ToDateTime(Convert.ToString(dt1.Rows[0]["post_date"])).ToShortDateString();

                }

                break;

        }
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataBind();
        bind();
    }

    protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[16].Visible = false;
          e.Row.Cells[15].Visible = false;
            e.Row.Cells[9].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[11].Visible = false;
           // e.Row.Cells[8].Visible = false;//  Consultant
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[13].Visible = false;
            e.Row.Cells[14].Visible = false;

        }
    }







    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);

                rows = g1.ExecDB("delete  from  job_orders    where id=" + id);
                if (rows > 0)
                {
                    bind();
                    Label1.Text = "delete successfully.";
                }
                break;
            case "Modifie":
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["pr_id"] = GridView3.DataKeys[r2].Value.ToString();
                dt1 = g1.return_dt("select *  from  job_orders    where id=" + Session["pr_id"]);
                if (dt1.Rows.Count > 0)
                {
                   /* string cmpname2 = g1.reterive_val("select  co_name_txt2 from clogin_detail where id_txt=" + Convert.ToString(dt1.Rows[0]["cmpid"]));
                    string consltid2 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["conslid"]));
                    string acntname3 = g1.reterive_val("select  uname  from admin_master where id=" + Convert.ToString(dt1.Rows[0]["acntid"]));

                    cmp_name.SelectedValue = cmpname2;
                    conslt.SelectedValue = consltid2;
                    acnt.SelectedValue = acntname3;
                    loc.Text = Convert.ToString(dt1.Rows[0]["loc"]);
                    pos.Text = Convert.ToString(dt1.Rows[0]["pos"]);
                    postdt.Text = Convert.ToDateTime(Convert.ToString(dt1.Rows[0]["post_date"])).ToShortDateString();
                    */

                    status.SelectedValue = Convert.ToString(dt1.Rows[0]["status"]);



                }

                break;

        }
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        GridView3.DataBind();
        bind();
    }




    protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[16].Visible = false;
            e.Row.Cells[15].Visible = false;
             //e.Row.Cells[7].Visible = false;
            e.Row.Cells[9].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[11].Visible = false;
            e.Row.Cells[8].Visible = false;//  Consultant
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[13].Visible = false;
            e.Row.Cells[14].Visible = false;

        }
    }

}

