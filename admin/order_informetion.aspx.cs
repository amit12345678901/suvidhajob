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

public partial class order_informetion : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0;
    public string[] arr = new string[20];

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

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
            
           dt = g1.return_dt("select order_date,name,email,address1,bill_add,bill_city,bill_state,bill_pin,bill_tel,ship_name,address2,ship_add,ship_city,ship_state,ship_pin,ship_tel,full_payment,pay_mode,bank_name,acc_no,bank_pay,check_date from order_master  where order_id=" + Session["oid"]);

            arr[0] = Convert.ToDateTime(dt.Rows[0]["order_date"].ToString()).ToLongDateString();
            arr[1] = dt.Rows[0]["name"].ToString();
            arr[2] = dt.Rows[0]["email"].ToString();
            arr[3] = dt.Rows[0]["address1"].ToString();
            arr[4] = dt.Rows[0]["bill_add"].ToString();
            arr[5] = dt.Rows[0]["bill_city"].ToString();
            arr[6] = dt.Rows[0]["bill_state"].ToString();
            arr[7] = dt.Rows[0]["bill_pin"].ToString();
            arr[8] = dt.Rows[0]["bill_tel"].ToString();
            arr[9] = dt.Rows[0]["ship_name"].ToString();
            arr[10] = dt.Rows[0]["address2"].ToString();
            arr[11] = dt.Rows[0]["ship_add"].ToString();
            arr[12] = dt.Rows[0]["ship_city"].ToString();
            arr[13] = dt.Rows[0]["ship_state"].ToString();
            arr[14] = dt.Rows[0]["ship_pin"].ToString();
            arr[15] = dt.Rows[0]["ship_tel"].ToString();
            arr[16] = dt.Rows[0]["full_payment"].ToString();
            arr[17] = dt.Rows[0]["pay_mode"].ToString();
            arr[18] = dt.Rows[0]["bank_name"].ToString();
            arr[19] = dt.Rows[0]["acc_no"].ToString();
            arr[20] = dt.Rows[0]["bank_pay"].ToString();


            arr[21] = Convert.ToDateTime(dt.Rows[0]["check_date"].ToString()).ToLongDateString();
            if (dt.Rows[0]["pay_mode"].ToString() != "Credit Card.")
            {
                bank.Visible = true;
            }

         
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
      
    }

}
