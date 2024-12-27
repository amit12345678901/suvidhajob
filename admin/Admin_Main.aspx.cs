using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Main : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int maxid = 0, rows = 0;

    public string admns = "", acnt = "", consult = "", client = "", cand = "", jobs = "", viewweb = "", coordinator = "";
    protected string TotalClients;
    protected string TotalCVs;
    protected string TotalInternalJobs;
    protected string TotalExternalJobs;
    protected string TotalConsultants;
    protected string TotalUsers;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (Convert.ToString(Session["roll"]) != "Administrator")
            {
                admin_pn.Visible = false;
            }
            else
            {
                admin_pn.Visible = true;
                bind();
            }
        }
    }

    public void bind()
    {
        // admns = g1.reterive_val("select count(*) from admin_master where roll='Administrator'");
        // acnt = g1.reterive_val("select count(*) from admin_master where roll='Accountant'");
        // consult = g1.reterive_val("select count(*) from admin_master where roll='Consultant'");
        // coordinator = g1.reterive_val("select count(*) from admin_master where roll='Office Co-ordinator'");

        // client = g1.reterive_val("select count(*) from clogin_detail");
        // jobs = g1.reterive_val("SELECT count(*) FROM post_vaca where hidden_txt=0");
        // cand = g1.reterive_val("select count(*) from pyr_master");

        // Now, let's load additional data from the database
        string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            conn.Open();

            // Execute each query and store the result in the corresponding variable
            TotalClients = ExecuteQuery(conn, "SELECT COUNT(*) FROM clogin_detail");
            TotalCVs = ExecuteQuery(conn, "SELECT COUNT(*) FROM pyr_master");
            TotalInternalJobs = ExecuteQuery(conn, "SELECT COUNT(*) FROM internal_post_vaca");
            TotalExternalJobs = ExecuteQuery(conn, "SELECT COUNT(*) FROM post_vaca");
            // TotalConsultants = ExecuteQuery(conn, "SELECT COUNT(*) FROM consultant_table"); // Update with the correct table name
            TotalUsers = ExecuteQuery(conn, "SELECT COUNT(*) FROM admin_master");
        }
    }


    // Helper method to execute a query and return the count as a string
    private string ExecuteQuery(SqlConnection conn, string query)
    {
        using (SqlCommand cmd = new SqlCommand(query, conn))
        {
            object result = cmd.ExecuteScalar();
            return result.ToString();
        }
    }

protected void btnBind_Click(object sender, EventArgs e)
{
    bind(); // Call the bind method when the button is clicked
}

}
