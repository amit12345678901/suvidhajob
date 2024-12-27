using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;


public partial class Admin_modify : System.Web.UI.Page
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
            dt = g1.return_dt("select name1,uname,pass from  admin_login where id=" + Session["admin_id"]);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["name1"].ToString();
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
          
            if (Session["previous"].ToString() == TextBox2.Text)
            {
                rows = g1.ExecDB("update admin_login set name1='" + TextBox1.Text.ToString().Trim().Replace("'", "''") + "',pass='" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "' where  id=" + Session["admin_id"]);
                if (rows > 0)
                {
                    Response.Write("Update Successfully.");
                }

            }
            else
            {

                 dt = g1.return_dt("select * from  admin_login where    uname='" +TextBox2.Text+"'");
            if (dt.Rows.Count > 0)
            {
                    Label1.Text = "this name of user id already exisist.";

            }
             else
                {
                    rows = g1.ExecDB("update admin_login set name1='" + TextBox1.Text.ToString().Trim().Replace("'", "''") + "',uname='" + TextBox2.Text.ToString().Trim().Replace("'", "''") + "',pass='" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "' where    id=" + Session["admin_id"]);
                    if (rows > 0)
                    {
                        Label1.Text = "Update Successfully.";
                        Session["previous"] = TextBox2.Text;
                    }
 
                }
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
