using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Job_Catagories_more : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
     //   Session["indname"] = GridView1.SelectedValue.ToString();
       // Response.Redirect("Job_Catagories_Informetion.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
         switch (e.CommandName.Trim())
         {

             case "Apply":

                 int r = Int32.Parse((e.CommandArgument).ToString());
                 Session["indname"] = GridView1.DataKeys[r].Value.ToString();
                 Response.Redirect("Job_Catagories_Informetion.aspx");
                 break;
         }
    }
}
