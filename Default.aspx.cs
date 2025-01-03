using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Default : System.Web.UI.Page
{
    public string Text_message;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;

    DataTable dt = new DataTable();
    General g1 = new General();
    public string manufacture = "";

    public static string id1 = "";
    public string opening = "", exper = "", indus = "", loc = "", spc = "", key = "", pid1 = "";

    public StringBuilder jobdtl = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                drpshow();
                show();

                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  count(pv_id_txt)  from  post_vaca";
                SqlDataReader dr, dr2;
                dr = m.ExecuteReader();
                dr.Read();
                if (Int32.Parse(dr[0].ToString()) > 5)
                {
                    // HyperLink1.Visible = true;
                }
                else
                {
                    // HyperLink1.Visible = false;
                }


                dr.Close();

                m.CommandText = "select  Subject  from  About_Us where ID=1";
                dr2 = m.ExecuteReader();
                dr2.Read();
                Text_message = dr2[0].ToString();
                dr2.Close();
                //  this.manufacture = Request.QueryString["ArrayStore"].ToString();

            }
            catch (Exception ex)
            {
            }
            finally
            {
                c.Close();
            }
        }

        /*   if (HiddenField1.Value == "Manufacturing")
        {
            Session["indname"] = HiddenField1.Value;
        }
        if (HiddenField2.Value == "Banking")
        {

          Session["indname"] = HiddenField2.Value;
        }*/
    }

    public void drpshow()
    {
        dt = g1.return_dt("SELECT  Distinct[in_txt] FROM [post_vaca]  where hidden_txt=0 and category!='1'");

        if (dt.Rows.Count > 0)
        {
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "in_txt";
            DropDownList1.DataValueField = "in_txt";
            DropDownList1.DataBind();

            DropDownList1.Items.Insert(0, "Select Industry");

        }
    }

    protected void SEARCH_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "" && TextBox3.Text == "" && TextBox4.Text == "")
        {
            //Label1.Text = "Please select at least one search parameter.";
        }
        else
        {
            Response.Cookies["t1"].Value = TextBox1.Text;
            Response.Cookies["t2"].Value = TextBox2.Text;
            Response.Cookies["t3"].Value = TextBox3.Text;
            Response.Cookies["t4"].Value = TextBox4.Text;
            Response.Redirect("Quick_Jobs_Search_Informetion.aspx");
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
        int r = Int32.Parse((e.CommandArgument).ToString());

        /// Session["pv_id_txt"] = GridView1.DataKeys[r].Value.ToString();

        Response.Redirect("Current_Opening_Informetion.aspx");
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int r = Int32.Parse((e.CommandArgument).ToString());
        Session["indname"] = GridView2.DataKeys[r].Value.ToString();
        //Added By kamal
        Session["indnameNew"] = GridView2.DataKeys[r].ToString();
        Response.Redirect("Job_Catagories_Informetion.aspx");
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {



    }

    public void show()
    {
        try
        {
            dt = g1.return_dt("SELECT TOP 5 ISNULL(CAST(year_min_txt AS varchar), '0') + '-' + ISNULL(CAST(year_max_txt AS varchar), '0') AS Experience, ISNULL(CAST(salary_txt AS varchar), '0') + '-' + ISNULL(CAST(salary_txt_max AS varchar), '0') AS ctc, pv_id_txt, ISNULL(in_txt, 'Unknown Industry') AS in_txt, post_date, ISNULL(loc_txt, 'Unknown Location') AS loc_txt, year_min_txt, year_max_txt, fa_txt, novacc_txt, rep_txt, ISNULL(keywords_txt, 'None') AS keywords_txt FROM [post_vaca] WHERE hidden_txt = 0 AND category = '3' ORDER BY pv_id_txt DESC");

            jobdtl.Length = 0;

            if (dt == null || dt.Rows.Count == 0)
            {
                jobdtl.Append("<div>No job openings available at the moment.</div>");
                return;
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string opening = dt.Rows[i]["rep_txt"] != null ? dt.Rows[i]["rep_txt"].ToString() : "Not Available";
                string exper = dt.Rows[i]["Experience"] != null ? dt.Rows[i]["Experience"].ToString() : "0-0";
                string indus = dt.Rows[i]["in_txt"] != null ? dt.Rows[i]["in_txt"].ToString() : "Unknown Industry";
                string loc = dt.Rows[i]["loc_txt"] != null ? dt.Rows[i]["loc_txt"].ToString().Replace("<br/>", ",") : "Unknown Location";
                // string spc = dt.Rows[i]["jp_txt"] != null ? dt.Rows[i]["jp_txt"].ToString() : "Not Specified";
                string key = dt.Rows[i]["keywords_txt"] != null ? dt.Rows[i]["keywords_txt"].ToString() : "None";
                string pid1 = dt.Rows[i]["pv_id_txt"] != null ? dt.Rows[i]["pv_id_txt"].ToString() : string.Empty;

                jobdtl.Append("<div class='c-item'><a class='l_j aK' href='External-career.aspx?pin=" + pid1 + "' title='View &amp; Apply'><strong>" + opening + "<span> (" + exper + " yrs.)</span></strong><dfn>" + indus + "</dfn><br>" + loc + "<br> " + spc + "<br><span class='f12'><b>Keyskills:</b></span> " + key + "</a></div>");
            }
        }
        catch (Exception ex)
        {
            jobdtl.Append("<div>An error occurred while loading job openings. Please try again later.</div>");
            jobdtl.Append("<div>Error occurred: " + ex.Message + "</div>");
            Console.WriteLine("Stack Trace: " + ex.StackTrace);
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "detail":

                int r = Int32.Parse((e.CommandArgument).ToString());

                /// Session["indname"] = GridView1.DataKeys[r].Value.ToString();

                Response.Redirect("External-career.aspx");

                break;


            case "apply":

                int r1 = Int32.Parse((e.CommandArgument).ToString());

                Session["pv_id_txt"] = r1.ToString();
                if (Session["id_txt"] == null)
                {
                    Response.Redirect("CandidateZone_Login.aspx");
                }
                else
                {
                    int can_id = Int32.Parse(Session["id_txt"].ToString());
                    // int r = Int32.Parse((e.CommandArgument).ToString());
                    int pv_id = Int32.Parse(Session["pv_id_txt"].ToString());
                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    m.CommandText = "select a_id from apply_master where can_id=" + can_id + " and pv_id=" + pv_id;
                    SqlDataReader dr, dr4, dr2, dr3;
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

                break;

            default:

                return;


        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select Industry")
        {
            Session["indname"] = DropDownList1.SelectedValue;
            //AddedBy kamal
            Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }
    }

    protected void btnManufacture_Click(object sender, EventArgs e)
    {
        if (HiddenField1.Value == "Manufacturing")
        {
            Session["indname"] = HiddenField1.Value;
            // Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }


    }

    protected void btnBanking_Click(object sender, EventArgs e)
    {
        if (HiddenField2.Value == "Banking")
        {
            Session["indname"] = HiddenField2.Value;
            Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }

    }

    protected void btnAccounting_Click(object sender, EventArgs e)
    {
        if (HiddenField3.Value == "Capital Market")
        {
            Session["indname"] = HiddenField3.Value;
            Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }

    }

    protected void btnSales_Click(object sender, EventArgs e)
    {
        if (HiddenField4.Value == "Food & Beverage")
        {
            Session["indname"] = HiddenField4.Value;
            Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }
    }
    protected void btnSteel_Click(object sender, EventArgs e)
    {
        if (HiddenField5.Value == "Steel & Power")
        {
            Session["indname"] = HiddenField5.Value;
            Session["indnameNew"] = DropDownList1.SelectedItem.ToString().Trim();
            Response.Redirect("Job_Catagories_Informetion.aspx");
        }

    }



}
