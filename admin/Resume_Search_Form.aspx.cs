using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Resume_Search_Form : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {

              
                if (Convert.ToString(Session["roll"]) != "Administrator")
                {


                    if (Convert.ToString(Session["cv_search"]) == "False")
                    {
                        Response.Redirect("Admin_Main.aspx");
                    }
                }

            }
        }
    }

    protected void Search_Click(object sender, EventArgs e)
    {

        lbresult.Text = string.Empty;
        if (TextBox1.Text == "" && DropDownList6.SelectedValue.ToString() == "Select" && DropDownList7.SelectedValue.ToString() == "Select" && DropDownList10.SelectedValue.ToString() == "Select" && TextBox2.Text == "" && TextBox3.Text == "" && frmdt.Text == "" && todt.Text == "")
        {
            lbresult.Text = "Please select atleast one parameter between - Keyword, Experience, Functional   Area, Employers, Designation.";
        }
        else
        {
            Response.Cookies["d2"].Value = DropDownList2.SelectedValue;
            Response.Cookies["d3"].Value = DropDownList3.SelectedValue;
            Response.Cookies["d4"].Value = DropDownList4.SelectedValue;
            Response.Cookies["d5"].Value = DropDownList5.SelectedValue;
            Response.Cookies["d6"].Value = DropDownList6.SelectedValue;
            Response.Cookies["d7"].Value = DropDownList7.SelectedValue;
            Response.Cookies["d8"].Value = DropDownList8.SelectedValue;
            Response.Cookies["d9"].Value = DropDownList9.SelectedValue;
            Response.Cookies["d10"].Value = DropDownList10.SelectedValue;
            Response.Cookies["d11"].Value = DropDownList11.SelectedValue;
            Response.Cookies["d12"].Value = DropDownList12.SelectedValue;
            Response.Cookies["d13"].Value = DropDownList13.SelectedValue;
            Response.Cookies["d14"].Value = DropDownList1.SelectedValue;
            Response.Cookies["dtrng"].Value = daterange.SelectedValue;


            Response.Cookies["din"].Value = ddlindustry.SelectedValue;


            Response.Cookies["t1"].Value = TextBox1.Text;
            Response.Cookies["t2"].Value = TextBox2.Text;
            Response.Cookies["t3"].Value = TextBox3.Text;
            Response.Cookies["t4"].Value = frmdt.Text;
            Response.Cookies["t5"].Value = todt.Text;

            Response.Cookies["loc"].Value = TextBox4.Text;

            Response.Redirect("Resume_Search_Informetion.aspx");
        }
    }

    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select id  from  fun    where fun_name='" + DropDownList10.SelectedItem.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();

        m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");
        DropDownList13.DataSource = ds.Tables["subfun"];
        DropDownList13.DataTextField = "subname";
        DropDownList13.DataValueField = "subname";
        DropDownList13.DataBind();
        
        c.Close();
    }

}
