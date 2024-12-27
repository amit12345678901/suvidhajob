using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Select_Folder : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id, id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Client_number"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                m.CommandText = "select Folder_name from folder_master  where cus_id=" + Int32.Parse(Session["client_number"].ToString());
                SqlDataAdapter dap = new SqlDataAdapter(m);
                DataSet ds = new DataSet();
                dap.Fill(ds, "folder_master");

                DropDownList1.DataSource = ds.Tables["folder_master"];
                DropDownList1.DataBind();
                c.Close();
            }
        }
    }
    protected void Save_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "")
        {
            try
            {
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;

                //m.CommandText = "select Folder_name from folder_master  where cus_id=" + Int32.Parse(Session["client_number"].ToString());

                m.CommandText = "select  folder_id  from  selected_resume  where  cli_id='" + Int32.Parse(Session["client_number"].ToString()) + "' and can_id_txt=" + Int32.Parse(Session["id_txt"].ToString());
                SqlDataReader dr1, dr2, dr3, dr4;
                dr1 = m.ExecuteReader();
                if (dr1.Read())
                {
                    dr1.Close();
                    Label1.Text = "Selected Resume is already selectted. ";
                }
                else
                {
                    dr1.Close();

                    m.CommandText = "select  count(sr_id_txt)  from  selected_resume";

                    dr2 = m.ExecuteReader();
                    dr2.Read();
                    if (Int32.Parse(dr2[0].ToString()) == 0)
                    {
                        id = 1;
                        dr2.Close();
                    }
                    else
                    {
                        dr2.Close();

                        m.CommandText = "select  max(sr_id_txt)  from  selected_resume";

                        dr3 = m.ExecuteReader();
                        dr3.Read();
                        id = Int32.Parse(dr3[0].ToString());
                        id = id + 1;
                        dr3.Close();
                    }
                    m.CommandText = "select  folder_id  from  folder_master  where Folder_name='" + DropDownList1.SelectedValue + "' and  cus_id=" + Int32.Parse(Session["client_number"].ToString());
                    dr4 = m.ExecuteReader();
                    dr4.Read();
                    id1 = Int32.Parse(dr4[0].ToString());
                    dr4.Close();

                    m.CommandText = "insert into selected_resume values(@sr_id_txt,@folder_id,@can_id,@cli_id)";

                    m.Parameters.AddWithValue("@sr_id_txt", id);
                    m.Parameters.AddWithValue("@folder_id", id1);
                    m.Parameters.AddWithValue("@can_id", Int32.Parse(Session["id_txt"].ToString()));
                    m.Parameters.AddWithValue("@cli_id", Session["client_number"].ToString());

                    m.ExecuteNonQuery();
                    Label1.Text = "Selected resume is successfully add.";
                }

            }

            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
            finally
            {
                c.Close();
            }

        }
        else
        {
            Label1.Text = "No folder exist, Please create a folder.";
        }
    }
}
