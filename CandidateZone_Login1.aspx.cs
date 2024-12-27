using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CandidateZone1 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    int id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_txt"] != null)
        {
            Response.Redirect("Overview_Form.aspx");
        }
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                
          
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select  pass_txt,id_txt  from  pyr_master where user_txt='" + TextBox1.Text + "'";
                    SqlDataReader dr;
                    dr = m.ExecuteReader();
                    if (dr.Read())
                    {
                        if (dr[0].ToString() == TextBox2.Text)
                        {

                            Session["user_txt"] = TextBox1.Text;
                            Session["id_txt"] = dr[1].ToString();
                            dr.Close();
                            Response.Redirect("Overview_Form.aspx");
                            
                             
                        }
                        else
                        {
                            dr.Close();
                            Label1.Text = "Your user id or password is incorrect";
                        }
                    }
                    else
                    {
                        dr.Close();
                        Label1.Text = "Your user id or password is incorrect";
                        TextBox1.Text = "";
                        
                        
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
            //// Button1.Attributes.Add(
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Please fill all fields');", true);
            Label1.Text = "Please enter your User id and Password";

        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
