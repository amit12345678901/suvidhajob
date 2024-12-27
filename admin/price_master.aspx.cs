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
using System.Data.SqlClient;

public partial class price_master : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int rows = 0;
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

        }
    }
    protected void save_Click(object sender, EventArgs e)
    {
        if (rform.Text != "" && rto.Text != "")
        {
            if (Int32.Parse(rform.Text) >= Int32.Parse(rto.Text))
            {
                Label1.Text = "Price range is incorrect.";
            }
            else
            {

              
              dt1 = g1.return_dt("select *  from  price_master where min1=" + rform.Text + " and max1=" + rto.Text);
              
                if (dt1.Rows.Count>0)
                {

                    Label1.Text = "This range is already exist.";
                 
                }
                else
                {
                  
                    id = g1.generate_max_id_reg("select  max(id)  from  price_master");
                    rows =g1.ExecDB("insert into price_master values(" + id + "," + Int32.Parse(rform.Text) + "," + Int32.Parse(rto.Text) + ",0)");
                    rform.Text = string.Empty;
                    rto.Text = string.Empty;

                    Label1.Text = "Add Successfully.";
                }
            }
        }
         else
         {
             Label1.Text = "all crieteria are not fillup.";
         }


    }
}
