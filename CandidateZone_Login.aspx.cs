using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CandidateZone : System.Web.UI.Page
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
                m.CommandText = "select  pass_txt,id_txt,name_txt  from  pyr_master where user_txt='" + TextBox1.Text + "'";
                SqlDataReader dr;
                dr = m.ExecuteReader();
                if (dr.Read())
                {
                    if (dr[0].ToString() == TextBox2.Text)
                    {

                        Session["user_txt"] = TextBox1.Text;
                        Session["id_txt"] = dr[1].ToString();
                        Session["name_txt"] = dr[2].ToString();
                        dr.Close();

                        if (Session["pv_id_txt"] == null)
                        {
                            Response.Cookies["canlogin"].Value = "yes";
                            Response.Redirect("Overview_Form.aspx");
                        }
                        else
                        {
                            int can_id = Int32.Parse(Session["id_txt"].ToString());
                            int pv_id = Int32.Parse(Session["pv_id_txt"].ToString());

                            m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id;
                            SqlDataReader dr2, dr3, dr4;
                            dr4 = m.ExecuteReader();
                            if (dr4.Read())
                            {
                                Label1.Text = "Already is apply.";
                                dr4.Close();
                            }
                            else
                            {
                                dr4.Close();


                                m.CommandText = "select  count(a_id)  from  apply_master";

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

                                    m.CommandText = "select  max(a_id)  from  apply_master";

                                    dr3 = m.ExecuteReader();
                                    dr3.Read();
                                    id = Int32.Parse(dr3[0].ToString());
                                    id = id + 1;
                                    dr3.Close();
                                }





                                m.CommandText = "insert into   apply_master values(@a_id,@can_id,@pv_id,@Apply_date);";
                                m.Parameters.AddWithValue("@a_id", id);

                                m.Parameters.AddWithValue("@can_id", can_id);
                                m.Parameters.AddWithValue("@pv_id", pv_id);
                                m.Parameters.AddWithValue("@Apply_date", Convert.ToDateTime(DateTime.Now.ToShortDateString()));
                                m.ExecuteNonQuery();
                                c.Close();
                                Response.Redirect("SentJob_Informetion.aspx");

                            }
                        }
                    }
                    else
                    {
                        dr.Close();
                        Label1.Text = "Your password id wrong.";
                    }
                }
                else
                {
                    dr.Close();
                    Label1.Text = "Your user id is  wrong.";
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
            // Button1.Attributes.Add(
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Please fill all fields');", true);
            Label1.Text = "Please fill all fields.";

        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
