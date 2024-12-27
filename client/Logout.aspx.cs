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
        Session["Username_txt"] = null;
        Session["gid"] = null;
        Session["gid1"] = null;
        Session["sub_gid"] = null;
        Session["link"] = null;
        Session["admin_id"] = null;
        Session["id"] = null;
        Session["user_no"] = null;
        Session["previous"] = null;
        Session["col_id"] = null;
        Session["model"] = null;
        Session["pr_id"] = null;
        Session["work"] = null;
        Session["occ"] = null;
        Session.Abandon();
        Response.Redirect("Employer_Login.aspx");
    }
}
