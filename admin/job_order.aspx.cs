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

public partial class admin_job_order : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    int rows = 0, id = 0;
    public string link;


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
                postdt.Text = DateTime.Now.Date.ToShortDateString().ToString();
                bindgroup();
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
            acnt.Items.Clear();
            acnt.Items.Add("--Select Accountant Name--");
            g1.populate_combo("select uname from admin_master where roll in('Accountant','Administrator')", acnt);
        }
        else
        {
            pn_admin.Visible = false;
        }
    }


    protected void SEARCH_Click(object sender, ImageClickEventArgs e)
    {

         if (cmp_name.SelectedValue != "--Select Company Name--" && conslt.SelectedValue != "--Select Consultant Name--" && loc.Text != "" && pos.Text != "" && postdt.Text != "")
        {
            id = g1.generate_max_id_reg("select  max(id)  from  job_orders");
            string cmpid = g1.reterive_val("select id_txt  from clogin_detail where co_name_txt2='" + cmp_name.SelectedValue + "'");
            string cnsltid = g1.reterive_val("select id  from admin_master where uname='" + conslt.SelectedValue + "'");

            if (Convert.ToString(Session["roll"]) != "Administrator")
            {
                rows = g1.ExecDB("insert into job_orders values(" + id + "," + Int32.Parse(cmpid.ToString()) + "," + Int32.Parse(cnsltid.ToString()) + "," + Int32.Parse(Convert.ToString(Session["user_no2"])) + ",'" + pos.Text + "','" + loc.Text + "','" + status.SelectedValue + "','" + Convert.ToDateTime(postdt.Text) + "','" + Convert.ToDateTime(postdt.Text).ToShortDateString() + "','')");
            }
            else
            {
                string acntid = g1.reterive_val("select id  from admin_master where uname='" + acnt.SelectedValue + "'");
                if (acntid == "")
                {
                    acntid = "0";
                }
                rows = g1.ExecDB("insert into job_orders values(" + id + "," + Int32.Parse(cmpid.ToString()) + "," + Int32.Parse(cnsltid.ToString()) + "," + acntid + ",'" + pos.Text + "','" + loc.Text + "','" + status.SelectedValue + "','" + Convert.ToDateTime(postdt.Text) + "','" + Convert.ToDateTime(postdt.Text).ToShortDateString() + "','')");
            }
            if (rows > 0)
            {
                Label1.Text = "Add Successfully.......";
                cmp_name.SelectedValue = "--Select Company Name--";
                conslt.SelectedValue = "--Select Consultant Name--";
                loc.Text = string.Empty;
                pos.Text = string.Empty;
                postdt.Text = string.Empty;
            }
        }

    }
}
