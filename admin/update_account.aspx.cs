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

public partial class admin_update_account : System.Web.UI.Page
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
            dt = g1.return_dt("select name1,uname,pass from  admin_login where id=1050");
            if (dt.Rows.Count > 0)
            {
               // TextBox1.Text = dt.Rows[0]["name1"].ToString();
                TextBox2.Text = dt.Rows[0]["uname"].ToString();
                Session["previous"] = dt.Rows[0]["uname"].ToString();
                TextBox3.Text = dt.Rows[0]["pass"].ToString();

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

         
                    rows = g1.ExecDB("update admin_login set uname='" + TextBox2.Text.ToString().Trim().Replace("'", "''") + "',pass='" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "' where    id=1050");
                    if (rows > 0)
                    {
                        TextBox2.Text = string.Empty;
                        TextBox3.Text = string.Empty;
                        Label1.Text = "Update Successfully.";
                        
                    }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
        finally
        {

            //  Response.Redirect("Admin_update.aspx");

        }
    }
}
