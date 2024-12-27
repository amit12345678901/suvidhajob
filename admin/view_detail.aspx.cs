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




public partial class view_detail : System.Web.UI.Page
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

            dt = g1.return_dt("select fname,lname,email,password,bill_add,bill_city,bill_state,bill_pin,bill_tel,cname,city,ship_add,ship_city,ship_pin,ship_state,ship_tel,dob,discount,vat,rgdate,ctype from  reg_members where    reg_id=" + Session["user_no"]);
            if (dt.Rows.Count > 0)
            {
                arr[0] = dt.Rows[0]["fname"].ToString() + " " + dt.Rows[0]["lname"].ToString();
                arr[1] = dt.Rows[0]["email"].ToString();
                arr[2] = dt.Rows[0]["password"].ToString();

                arr[3] = dt.Rows[0]["bill_add"].ToString();
                arr[4] = dt.Rows[0]["bill_city"].ToString();
                arr[5] = dt.Rows[0]["bill_state"].ToString();
                arr[6] = dt.Rows[0]["bill_pin"].ToString();
                arr[7] = dt.Rows[0]["bill_tel"].ToString();
                arr[8] = dt.Rows[0]["cname"].ToString();
                arr[9] = dt.Rows[0]["city"].ToString();

                arr[10] = dt.Rows[0]["ship_add"].ToString();
                arr[11] = dt.Rows[0]["ship_city"].ToString();
                arr[12] = dt.Rows[0]["ship_pin"].ToString();
                arr[13] = dt.Rows[0]["ship_state"].ToString();
                arr[14] = dt.Rows[0]["ship_tel"].ToString();

                //,password,discount,vat

                arr[15] = dt.Rows[0]["dob"].ToString();
                arr[16] = dt.Rows[0]["discount"].ToString();
                arr[17] = dt.Rows[0]["vat"].ToString();
                //arr[18] = Convert.ToDateTime(dt.Rows[0]["rgdate"].ToString()).ToLongDateString();
                arr[18] = dt.Rows[0]["rgdate"].ToString();
                if(dt.Rows[0]["ctype"].ToString()=="r")
                {
                arr[19] = "Retailer";
            }
            else
            {
                arr[19] = "Whole Seller";
            }
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        
    }

}
