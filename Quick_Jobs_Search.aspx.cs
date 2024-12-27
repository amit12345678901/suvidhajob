using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Quick_Jobs_Search : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SEARCH_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select pv_id_txt from post_vaca where fa_txt='" + TextBox4.Text + "'";
            SqlDataReader dr1, dr2;
            dr1 = m.ExecuteReader();
            if (dr1.Read())
            {
                int id1 = Int32.Parse(dr1[0].ToString());
                dr1.Close();

                m.CommandText = "select loc_txt,year_min_txt from post_vaca where pv_id_txt=" + id1;
                dr2 = m.ExecuteReader();
                dr2.Read();
                if (dr2[0].ToString() == TextBox3.Text && Int32.Parse(dr2[1].ToString()) <= Int32.Parse(TextBox2.Text))
                {
                    dr2.Close();
                    Session["id2"] = id1.ToString();
                    Response.Redirect("Quick_Jobs_Search_Informetion.aspx");
                }
                else
                {
                    dr2.Close();
                    Label1.Text = "NOT FOUND RESULT.";
                }
            }
            else
            {
                dr1.Close();
                Label1.Text = "NOT FOUND RESULT.";
            }
        }

        if (TextBox2.Text == "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select pv_id_txt from post_vaca where fa_txt='" + TextBox4.Text + "'";
            SqlDataReader dr1, dr2;
            dr1 = m.ExecuteReader();
            if (dr1.Read())
            {
                int id1 = Int32.Parse(dr1[0].ToString());
                dr1.Close();

                m.CommandText = "select loc_txt from post_vaca where pv_id_txt=" + id1;
                dr2 = m.ExecuteReader();
                dr2.Read();
                if (dr2[0].ToString() == TextBox3.Text)
                {
                    dr2.Close();
                    Session["id2"] = id1.ToString();
                    Response.Redirect("Quick_Jobs_Search_Informetion.aspx");
                }
                else
                {
                    dr2.Close();
                    Label1.Text = "NOT FOUND RESULT.";
                }
            }
            else
            {
                dr1.Close();
                Label1.Text = "NOT FOUND RESULT.";
            }
        }

        if (TextBox2.Text == "" && TextBox3.Text == "" && TextBox4.Text != "")
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "select pv_id_txt from post_vaca where fa_txt='" + TextBox4.Text + "'";
            SqlDataReader dr1;
            dr1 = m.ExecuteReader();
            if (dr1.Read())
            {
                Session["id2"] = dr1[0].ToString();
                dr1.Close();
                Response.Redirect("Quick_Jobs_Search_Informetion.aspx");

            }
            else
            {
                dr1.Close();
                Label1.Text = "NOT FOUND RESULT.";
            }
        }
    }
}
