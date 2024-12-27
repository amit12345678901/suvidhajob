using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Edit_Vacancy : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    DataTable dt = new DataTable();
    General g1 = new General();
    int rows = 0;
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
                bind();

                if (Request.QueryString["type"] != null)
                {
                   update.Visible = true;
                }
                else
                {
                  update.Visible = false;
                }
            }
        }
    }
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;

        if (Request.QueryString["cat"] == null)
        {
            pninter.Visible = true;
            pnexter.Visible = true;
            m.CommandText = "select pv_id_txt,cname_txt,in_txt,fun.fun_name,loc_txt,jp_txt,post_date,category from post_vaca,fun where fun.id=post_vaca.fa_txt  and  hidden_txt=0 order by pv_id_txt";
        }

        else if (Request.QueryString["cat"] == "inter")
        {
            pninter.Visible = true;
            pnexter.Visible = false;

            m.CommandText = "select pv_id_txt,cname_txt,in_txt,fun.fun_name,loc_txt,rep_txt,post_date,category from post_vaca,fun where fun.id=post_vaca.fa_txt  and  hidden_txt=0 and category='1' order by pv_id_txt";
        }
        else if (Request.QueryString["cat"] == "exter")
        {
            pninter.Visible = false;
            pnexter.Visible = true;
            m.CommandText = "select pv_id_txt,cname_txt,in_txt,fun.fun_name,fa_txt,loc_txt,rep_txt,post_date,category from post_vaca,fun where fun.id=post_vaca.fa_txt  and  hidden_txt=0 and category!='1' order by pv_id_txt";
        }
        
        
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();
        dap.Fill(ds, "post_vaca");
        GridView1.DataSource = ds.Tables["post_vaca"];
        GridView1.DataBind();
        c.Close();


        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            Label ldate1 = (Label)GridView1.Rows[i].FindControl("lbdt");
            ldate1.Text = Convert.ToDateTime(ldate1.Text).ToShortDateString();
            CheckBox ch1 = (CheckBox)GridView1.Rows[i].FindControl("ch3");
            Label lbid2 = (Label)GridView1.Rows[i].FindControl("lbid5");

            if ( lbid2.Text == "3")
            {
                ch1.Checked = true;
            }
        }

    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            if (Convert.ToString(Session["roll"]) != "Administrator")
            {


                if (Convert.ToString(Session["vac_edit"]) == "False")
                {
                   
                }
                if (Convert.ToString(Session["vac_del"]) == "False")
                {
                    e.Row.Cells[7].Visible = false;
                }

            }
            if (Request.QueryString["type"] != null)
            {
                e.Row.Cells[6].Visible = true;
            }
            else
            {
                e.Row.Cells[6].Visible = false;
            }
            if (Request.QueryString["cat"] == "inter")
            {
                e.Row.Cells[0].Visible = false;
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[2].Visible = false;
            }
            //e.Row.Cells[15].Visible = false;
            //e.Row.Cells[9].Visible = false;
            //e.Row.Cells[10].Visible = false;
            //e.Row.Cells[11].Visible = false;
            //e.Row.Cells[12].Visible = false;
            //e.Row.Cells[13].Visible = false;
            //e.Row.Cells[14].Visible = false;
            //e.Row.Cells[16].Visible = false;
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    
        switch (e.CommandName.Trim())
        {

            case "Delete1":
                int id = Convert.ToInt32(e.CommandArgument);
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select *  from  apply_master    where pv_id=" + id;
                SqlDataReader dr;
                dr = m.ExecuteReader();

                if (dr.Read())
                {
                    dr.Close();
                    m.CommandText = "delete  from   apply_master    where pv_id=" + id;
                    m.ExecuteNonQuery();

                }

                else
                {
                    dr.Close();
                }

                m.CommandText = "delete  from  post_vaca    where pv_id_txt=" + id;
                m.ExecuteNonQuery();
                c.Close();
                bind();
                Label1.Text = "delete successfully.";
                break;
            case "mod":
                Label1.Text = "mmm";
                int r2 = Int32.Parse((e.CommandArgument).ToString());

                Session["com_id"] = GridView1.DataKeys[r2].Value.ToString();
                Response.Redirect("Modifie_Vacancy.aspx?cat=" + Request.QueryString["cat"]);
                break;

            case "view1":
                Label1.Text = "mmm";
                int r3 = Int32.Parse((e.CommandArgument).ToString());

                Session["pv_id"] = GridView1.DataKeys[r3].Value.ToString();
                Response.Redirect("view_vacancey.aspx");
                break;

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();
    }
    protected void update_Click(object sender, EventArgs e)
    {
        string uid = "",uid1="";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ch1 = (CheckBox)GridView1.Rows[i].FindControl("ch3");
            Label lbid2 = (Label)GridView1.Rows[i].FindControl("lbid");

            if (ch1.Checked == true)
            {
                uid += lbid2.Text + ",";
            }
            else
            {
                uid1 += lbid2.Text + ",";
            }
        }

        if (uid != "")
        {
            uid = uid.Remove(uid.Length - 1);
        }
        if (uid1 != "")
        {
            uid1 = uid1.Remove(uid1.Length - 1);
        }
        if (uid != "")
        {
            rows = g1.ExecDB("update post_vaca set category='3' where pv_id_txt in(" + uid + ")");
        }

        if (uid1 != "")
        {
            rows = g1.ExecDB("update post_vaca set category='2' where  pv_id_txt  in(" + uid1 + ")");
        }
        if (rows > 0)
        {
            Label1.Text = "Update Successfully...";
        }
    }
}
