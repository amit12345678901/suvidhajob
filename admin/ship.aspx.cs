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

public partial class admin_ship : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0;

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
            dt = g1.return_dt("select charge from  ship_chg where id=1");
            if (dt.Rows.Count > 0)
            {
                chg.Text = dt.Rows[0]["charge"].ToString();
               

            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
       
    }
    protected void update_Click(object sender, EventArgs e)
    {
        int rows = 0;
        try
        {

            if (chg.Text != "")
            {
                rows = g1.ExecDB("update ship_chg set charge=" + Int32.Parse(chg.Text) + " where  id=1");
                if (rows > 0)
                {
                    Label1.Text ="Update Successfully.";
                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

}
