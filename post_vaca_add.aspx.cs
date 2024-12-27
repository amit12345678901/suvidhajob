using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class post_vaca_add : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    General g1 = new General();
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    float min_sal1 = 0, max_sal1 = 0;
    string chk1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            funcation();
            if (Session["job_posting"] == "yes")
            {
                ListBox2.SelectedValue = "Select";

                ListBox1.SelectedValue = "Select";
            }
            else
            {
                //Response.Redirect("Company_main.aspx");
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('You are not authorised for job posting. please contact us.')", true);
            }
        }
    }
    public void funcation()
    {
        dt = g1.return_dt("SELECT * FROM [fun]");
        if (dt.Rows.Count > 0)
        {
            DropDownList15.DataSource = dt;
            DropDownList15.DataTextField = "fun_name";
            DropDownList15.DataValueField = "id";
            DropDownList15.DataBind();
        }
    }

    public string listfind(ListBox lst)
    {
        int i1 = lst.Items.Count;
     
        chk1 = String.Empty;
        for (int i = 0; i < lst.Items.Count; i++)
        {
            if (lst.Items[i].Selected == true)
            {
                chk1 += lst.Items[i].Value + ", ";
            }

            else
            {
                //   chk1 = "";
            }

        }
        if (chk1 != "")
        {
            chk1 = chk1.Remove(chk1.Length - 2);
        }
        //}

        return chk1;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["job_posting"] == "yes")
        {
            if (TextBox2.Text.ToString().Trim().Replace("'", "''") != "" && TextBox3.Text.ToString().Trim().Replace("'", "''") != "" && TextBox14.Text.ToString().Trim().Replace("'", "''") != "" && TextBox20.Text.ToString().Trim().Replace("'", "''") != "" && TextBox21.Text.ToString().Trim().Replace("'", "''") != "" && TextBox4.Text.ToString().Trim().Replace("'", "''") != "" && TextBox9.Text.ToString().Trim().Replace("'", "''") != "" && TextBox11.Text.ToString().Trim().Replace("'", "''") != "" && TextBox25.Text.ToString().Trim().Replace("'", "''") != "" && ListBox3.Text.ToString().Trim().Replace("'", "''") != "Select" && ListBox4.Text.ToString().Trim().Replace("'", "''") != "Select" && ListBox5.Text.ToString().Trim().Replace("'", "''") != "Select" && ListBox2.SelectedValue != "Select" && DropDownList15.Text.ToString().Trim().Replace("'", "''") != "Select")
            {
                try
                {
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    SqlDataReader dr2, dr3;
                    m.CommandText = "select  count(pv_id_txt)  from  post_vaca";

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

                        m.CommandText = "select  max(pv_id_txt)  from  post_vaca";

                        dr3 = m.ExecuteReader();
                        dr3.Read();
                        id = Int32.Parse(dr3[0].ToString());
                        id = id + 1;
                        dr3.Close();
                    }
                    if (TextBox25.Text != "")
                    {
                        min_sal1 = Convert.ToSingle(TextBox25.Text);
                    }
                    if (sal_max.Text != "")
                    {
                        max_sal1 = Convert.ToSingle(sal_max.Text);
                    }
                    //  m.CommandText = "insert into post_vaca values(@pv_id_txt,@cid,@cname_txt,@cprofile_txt,@des_txt,@cp_txt,@add_txt,@city_txt,@country_txt,@phone_txt,@fax_txt,@email_txt,@in_txt,@fa_txt,@sfa_txt,@jp_txt,@keyword_txt,@rep_txt,@conprofile_txt,@jobr_txt,@novacc_txt,@gender_txt,@year_min_txt,@year_max_txt,@jobt_txt,@aqr_txt,@pqr_txt,@ab_txt,@salary_txt,@tat_txt,@loc_txt,@jobcode_txt,@post_date,@dis_ind_txt,@hidden_txt,@job_status,@category,@jobt,@spec,@benift,@salary_txt_max)";
                   m.CommandText = "insert into post_vaca values(@pv_id_txt,@cid,@cname_txt,@cprofile_txt,@des_txt,@cp_txt,@add_txt,@city_txt,@country_txt,@phone_txt,@fax_txt,@email_txt,@in_txt,@fa_txt,@sfa_txt,@jp_txt,@keyword_txt,@rep_txt,@conprofile_txt,@jobr_txt,@novacc_txt,@gender_txt,@year_min_txt,@year_max_txt,@jobt_txt,@aqr_txt,@pqr_txt,@ab_txt,@salary_txt,@tat_txt,@loc_txt,@jobcode_txt,@post_date,@dis_ind_txt,@hidden_txt,@category,@jobt,@spec,@benift,@salary_txt_max)";

                    string lst1 = listfind(ListBox3);
                    string lst2 = listfind(ListBox1);
                    string lst3 = listfind(ListBox2);
                    string lst4 = listfind(ListBox4);
                    string lst5 = listfind(ListBox5);
                    string lst6 = listfind(ListBox6);

                    m.Parameters.AddWithValue("@pv_id_txt", id);

                    m.Parameters.AddWithValue("@cid", 0);
                    m.Parameters.AddWithValue("@cname_txt", TextBox2.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@cprofile_txt", TextBox3.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@des_txt", TextBox4.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@cp_txt", TextBox5.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@add_txt", TextBox6.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@city_txt", "Select");
                    m.Parameters.AddWithValue("@country_txt", TextBox8.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@phone_txt", TextBox9.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@fax_txt", TextBox10.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@email_txt", TextBox11.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@in_txt", lst5);
                    m.Parameters.AddWithValue("@fa_txt", DropDownList15.SelectedValue);
                    m.Parameters.AddWithValue("@sfa_txt", lst6);
                    m.Parameters.AddWithValue("@jp_txt", TextBox14.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@keyword_txt", TextBox15.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@rep_txt", TextBox16.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@conprofile_txt", TextBox17.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@jobr_txt", TextBox18.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@novacc_txt", TextBox19.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@gender_txt", DropDownList2.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@year_min_txt", Int32.Parse(TextBox20.Text.ToString().Trim().Replace("'", "''")));
                    m.Parameters.AddWithValue("@year_max_txt", Int32.Parse(TextBox21.Text.ToString().Trim().Replace("'", "''")));

                    m.Parameters.AddWithValue("@jobt_txt", DropDownList3.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@aqr_txt", lst1);
                    m.Parameters.AddWithValue("@pqr_txt", lst4);
                    m.Parameters.AddWithValue("@ab_txt", TextBox24.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@salary_txt", min_sal1);
                    m.Parameters.AddWithValue("@tat_txt", TextBox26.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@loc_txt", ListBox2.SelectedValue);
                    m.Parameters.AddWithValue("@jobcode_txt", TextBox28.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@post_date", DateTime.Now.ToString());
                    m.Parameters.AddWithValue("@dis_ind_txt", 1);
                    m.Parameters.AddWithValue("@hidden_txt", 0);

                    m.Parameters.AddWithValue("@category", 2);
                    m.Parameters.AddWithValue("@jobt", jobtl.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@spec", jobspc.Text.ToString().Trim().Replace("'", "''"));
                    m.Parameters.AddWithValue("@benift", benetits.Text.ToString().Trim().Replace("'", "''"));
                    // m.Parameters.AddWithValue("@benift", benetits.Text.ToString().Trim().Replace("'", "''"));

                    m.Parameters.AddWithValue("@salary_txt_max", max_sal1);
                    m.ExecuteNonQuery();


                    //m.CommandText = "update  clogin_detail set job_remain= job_remain - 1,job_spend= job_spend + 1  where id_txt=" + Session["Client_number"];
                    //m.ExecuteNonQuery();


                    //  m.CommandText = "update  login_det set job_num= job_num + 1  where id=" + Session["login_det_id"];
                    //  m.ExecuteNonQuery();

                    c.Close();

                  //  Session["job_num"] = Int32.Parse(Session["job_num"].ToString()) - 1;

                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox4.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    //TextBox12.Text= "";
                    //TextBox13.Text= "";
                    TextBox14.Text = "";
                    TextBox15.Text = "";
                    TextBox16.Text = "";
                    TextBox17.Text = "";
                    TextBox18.Text = "";
                    TextBox19.Text = "";
                    TextBox20.Text = "";
                    TextBox21.Text = "";

                    TextBox24.Text = "";
                    TextBox25.Text = "";
                    TextBox26.Text = "";

                    TextBox28.Text = "";
                
                    ListBox6.Items.Clear();
                    clear(ListBox1);
                    clear(ListBox2);
                    clear(ListBox3);
                    clear(ListBox4);
                    clear(ListBox5);
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Successfully add this job.')", true);

                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
                finally
                {
                    c.Close();
                }
                //     Label1.Text= "SUCCESFULLY  ADD.";

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

                // Label1.Text= "fill up is not complete.";
            }


        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('You are not authorised for job posting. please contact us')", true);

        }
    }

    public void clear(ListBox  lst1)
    {

        for (int i = 0; i < lst1.Items.Count; i++)
        {
            lst1.Items[i].Selected = false;
        }
    }
    protected void DropDownList15_SelectedIndexChanged(object sender, EventArgs e)
    {
        dt = g1.return_dt("select subname from subfun where funid=" + DropDownList15.SelectedValue);
        if (dt.Rows.Count > 0)
        {
            ListBox6.DataSource = dt;
            ListBox6.DataTextField = "subname";
            ListBox6.DataValueField = "subname";
            ListBox6.DataBind();
            ListBox6.Items.Insert(0, "Select");
        }
        else
        {
            ListBox6.Items.Clear();
            ListBox6.Items.Insert(0, "Select");
        }
    }
}
