using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         Session["user_txt"] = null;
         Session["id_txt"] = null;
         Session["pv_id_txt"] = null;
        Response.Cookies["canlogin"].Value = "no";
        Response.Redirect("Default.aspx");
        

                            
    }
}
