using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class JobSearch : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Ctc.SelectedValue = "0";
    }
    protected void Search_Click(object sender, EventArgs e)
    {
        if (Keyword.Text == "" && Location.SelectedValue == "Select" && Experience.SelectedValue == "Select" && Industry.SelectedValue == "Select" && Functional.SelectedValue == "Select" && SubFunctional.Text == "" && JobPosition.Text == "" && Ctc.SelectedValue == "Select")
        {
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('please fillup  minimum 1 critearia.')", true);

        }
        else
        {
            Response.Cookies["t1"].Value = Keyword.Text;
            Response.Cookies["loc"].Value = Location.SelectedValue;
            Response.Cookies["exp"].Value = Experience.SelectedValue;
            Response.Cookies["in"].Value = Industry.SelectedValue;

            Response.Cookies["t2"].Value = JobPosition.Text;
            Response.Cookies["fn"].Value = Functional.SelectedValue;
            if (SubFunctional.Text == "" || SubFunctional.Text == "Not Applicable.")
            {
                Response.Cookies["sfn"].Value = "Any";
            }
            else
            {
                Response.Cookies["sfn"].Value = SubFunctional.SelectedValue;
            }
            Response.Cookies["ctc"].Value = Ctc.SelectedValue;


            Response.Redirect("JobSearch_Informetion.aspx");

        }
    }


    protected void Functional_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        m.CommandText = "select id  from  fun    where fun_name='" + Functional.SelectedItem.ToString() + "'";
        SqlDataReader dr;
        dr = m.ExecuteReader();
        dr.Read();

        m.CommandText = "select subname from subfun where funid=" + dr[0].ToString();
        dr.Close();
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "subfun");
        SubFunctional.DataSource = ds.Tables["subfun"];
        SubFunctional.DataTextField = "subname";
        SubFunctional.DataValueField = "subname";
        SubFunctional.DataBind();
        if (SubFunctional.Items.Count == 0)
        {
           // DropDownList.Text = "Not Applicable.";
           // SubFunctional.Items.Add("Not Applicable.");
        }
        c.Close();
    }

}
