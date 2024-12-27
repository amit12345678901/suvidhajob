using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployerLogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Client_number"] =null;
        Session["Username_txt"] = null;
        Session["com_id"] = null;
        Response.Redirect("Default.aspx");

    }
}
