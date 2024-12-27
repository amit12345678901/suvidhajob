using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Masterpage_Back : System.Web.UI.MasterPage
{

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int maxid = 0, rows = 0;

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

                if (Convert.ToString(Session["roll"]) != "Administrator")
                {
                    bind();
                    if (Convert.ToString(Session["roll"]) != "Accountant")
                    {
                        pnjob_order_add.Visible = false;
                        pnjob_order.Visible = true;
                    }
                    else
                    {
                        pnjob_order.Visible = true;

                    }
              
                    
                }
                else
                {
                    pnjob_order.Visible = true;
                    
                }
            }
        }
      


    }


    public void bind()
    {
        admin_pn.Visible = false;
        admin_pn1.Visible = false;

        dt1 = g1.return_dt("select * from user_power where uid=" + Session["user_no2"]);
        if (dt1.Rows.Count > 0)
        {
          
            Session["cand_add"] = Convert.ToString(dt1.Rows[0]["cand_add"]);
            Session["cand_edit"] = Convert.ToString(dt1.Rows[0]["cand_edit"]);
            Session["cand_delt"] = Convert.ToString(dt1.Rows[0]["cand_del"]);
            Session["cmp_add"] = Convert.ToString(dt1.Rows[0]["cmp_add"]);
            Session["cmp_edit"] = Convert.ToString(dt1.Rows[0]["cmp_edit"]);
            Session["cmp_del"] = Convert.ToString(dt1.Rows[0]["cmp_del"]);
            Session["vac_add"] = Convert.ToString(dt1.Rows[0]["vac_add"]);
            Session["vac_edit"] = Convert.ToString(dt1.Rows[0]["vac_edit"]);
            Session["vac_del"] = Convert.ToString(dt1.Rows[0]["vac_del"]);
            Session["cv_search"] = Convert.ToString(dt1.Rows[0]["cv_search"]);


            Session["int_vaca"] = Convert.ToString(dt1.Rows[0]["internal_vac"]);
            Session["post_vaca"] = Convert.ToString(dt1.Rows[0]["external_vac"]);
        
            if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_add"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_del"])) == false)
            {
                cand_main_pn.Visible = false;
            }
            else if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_add"])) == false)
            {
                cand_add_pn.Visible = false;
            }
            else if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cand_del"])) == false)
            {
                cand_edit_pn.Visible = false;
            }





            if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_add"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_del"])) == false)
            {
              emp_main_pn.Visible = false;
            }
            else if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_add"])) == false)
            {
              emp_add_pn.Visible = false;
            }
            else if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cmp_del"])) == false)
            {
              emp_edit_pn.Visible = false;
            }




            if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_add"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_del"])) == false)
            {
            //  vac_main_pn.Visible= false;
            }
            if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["internal_vac"])) == false)
            {
              vac_add_pn.Visible = false;
            }
          /*  else if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_edit"])) == false && Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["vac_del"])) == false)
            {
              vac_edit_pn.Visible = false;
            }
            */
             if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["external_vac"])) == false)
            {
                vac_edit_pn.Visible = false;
            }

            if (Convert.ToBoolean(Convert.ToString(dt1.Rows[0]["cv_search"])) == false)
            {
             resume_main_pn.Visible = false;
            }

        }
    }


}
