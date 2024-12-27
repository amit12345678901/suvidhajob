using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class add_client : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        if (cname.Text != "")
        {

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "select  count(id)  from  client";
            SqlDataReader dr, dr2;
            dr = m.ExecuteReader();
            dr.Read();
            if (Int32.Parse(dr[0].ToString()) == 0)
            {
                id = 1;
                dr.Close();
            }
            else
            {
                dr.Close();

                m.CommandText = "select  max(id)  from  client";

                dr2 = m.ExecuteReader();
                dr2.Read();
                id = Int32.Parse(dr2[0].ToString());
                id = id + 1;
                dr2.Close();
            }


            m.CommandText = "insert into client values(@id,@cname)";
            m.Parameters.AddWithValue("@id", id);

            m.Parameters.AddWithValue("@cname", cname.Text);
            cname.Text = "";
            Label1.Text = "Add sucessfully.";

            m.ExecuteNonQuery();
        }
        else
        {
            Label1.Text = "please insert client name.";
        }
    }
}
