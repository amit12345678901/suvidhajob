using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["com_id"] = null;
        Session["can_id"] = null;
        Session["user_txt"] = null;
        Session["login"] = null;

        Response.Redirect("Default.aspx");
      
    }
}
