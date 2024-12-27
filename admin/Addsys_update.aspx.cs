using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;

public partial class Addsys_update : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");

        }
        else
        {
            if (!IsPostBack)
            {
                Session["state"] = null;
                bind();
            }
        }
    }

    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            if (Session["state"] == null)
            {
                m.CommandText = "select id,rank as [Rank Position],page_position as [Page Position],cl_name as [Client Name] from add_sys   order by id desc";

            }
            else
            {
                m.CommandText = "select id,rank as [Rank Position],page_position as [Page Position],cl_name as [Client Name] from add_sys   where page_name=" + Session["state"].ToString();

            }

            SqlDataAdapter dap = new SqlDataAdapter(m);
            DataSet ds = new DataSet();
            dap.Fill(ds, "add_sys");
            GridView1.DataSource = ds.Tables["add_sys"];
            GridView1.DataBind();
            c.Close();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        finally
        {
            c.Close();
        }

    }
    protected void page_name_SelectedIndexChanged1(object sender, EventArgs e)
    {
        /*c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        m.CommandText = "select city_name from city  where state='" + state.SelectedValue + "'  order by city_name";
      
         * SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "city");
        maincity.DataSource = ds.Tables["city"];
        maincity.DataTextField = "city_name";
        maincity.DataValueField = "city_name";
        maincity.DataBind();
        c.Close();
        maincity.Items.Insert(0, new ListItem("Select", "0"));*/

        Session["state"] = page_name.SelectedValue.ToString();

        bind();


    }



    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[2].Visible = false;
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //  GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                 SqlDataReader dr1, dr2;
                 m.CommandText = "select  link  from add_sys    where id=" + id;

                dr1 = m.ExecuteReader();
                dr1.Read();
                string link = dr1[0].ToString();

                if (dr1[0].ToString() != "")
                {
                    if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\add-image\\" + dr1[0].ToString()))
                    {


                        System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\add-image\\" + dr1[0].ToString());


                    }
                }
                dr1.Close();

                m.CommandText = "delete  from  add_sys     where id=" + id;
                m.ExecuteNonQuery();

                c.Close();
                bind();

                break;
            case "Modifie":

                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["id"] = GridView1.DataKeys[r2].Value.ToString();

                Response.Redirect("Addsys_Edit.aspx");
                break;

        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();

    }

}
