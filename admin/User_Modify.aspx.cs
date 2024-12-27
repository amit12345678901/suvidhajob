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

public partial class admin_User_Modify : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int maxid = 0, rows = 0;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username_txt"] == null)
            {
                Response.Redirect("Default.aspx");

            }
            else
            {
                bind1();
            }
           
            
        }

    }

    public void bind1()
    {
        dt = g1.return_dt("select gender,fname,lname,dob,email,cname,saddress,Suburb,post_code,city,state,country,telphone,fax,password,ctype,nletter,discount,vat,auth from  reg_members where reg_id=" + Session["user_no"]);

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["gender"].ToString() == "m")
            {
                male.Checked = true;
            }
            else
            {
                female.Checked = true;
            }
            fname.Text = dt.Rows[0]["gender"].ToString();
            fname.Text = dt.Rows[0]["fname"].ToString();
            lname.Text = dt.Rows[0]["lname"].ToString();
            dob.Text = dt.Rows[0]["dob"].ToString();
            email.Text = dt.Rows[0]["email"].ToString();
            comp.Text = dt.Rows[0]["cname"].ToString();
            srtadd.Text = dt.Rows[0]["saddress"].ToString();
            suburb.Text = dt.Rows[0]["Suburb"].ToString();
            post_code.Text = dt.Rows[0]["post_code"].ToString();
            city.Text = dt.Rows[0]["city"].ToString();
            state.Text = dt.Rows[0]["state"].ToString();
            country.SelectedValue = dt.Rows[0]["country"].ToString();
            ph_num.Text = dt.Rows[0]["telphone"].ToString();
            fax_num.Text = dt.Rows[0]["fax"].ToString();
            ctype.SelectedValue = dt.Rows[0]["ctype"].ToString();
            dis_chg.Text = dt.Rows[0]["discount"].ToString();
            vat_chg.Text = dt.Rows[0]["vat"].ToString();
            if (dt.Rows[0]["auth"].ToString() == "true")
            {
                auth.Checked =true;
            }
            else
            {
                auth.Checked = false;
            }
        }
    }

    

    /*public void bind()
    {

        Bitmap objBMP = new System.Drawing.Bitmap(80, 35);
        Graphics objGraphics = System.Drawing.Graphics.FromImage(objBMP);
        objGraphics.Clear(Color.Green);
        objGraphics.TextRenderingHint =
        System.Drawing.Text.TextRenderingHint.AntiAlias;
        Font objFont = new Font("Arial", 18, FontStyle.Bold);
        string randomStr = "";
        int[] myIntArray = new int[5];
        int x;
        Random autoRand = new Random();
        for (x = 0; x < 5; x++)
        {
            myIntArray[x] = System.Convert.ToInt32(autoRand.Next(0, 9));
            randomStr += (myIntArray[x].ToString());
        }

        Session.Add("randomStr", randomStr);
        objGraphics.DrawString(randomStr, objFont, Brushes.White, 3, 3);
        objBMP.Save(Server.MapPath(Request.ApplicationPath) + "\\images\\sss.Gif", System.Drawing.Imaging.ImageFormat.Gif);

        Image2.ImageUrl = "~\\images\\sss.Gif";
        objFont.Dispose();
        objGraphics.Dispose();
        objBMP.Dispose();
        Session["new"] = Session["randomStr"];
    }


    */

    protected void add_Click(object sender, EventArgs e)
    {


        string gender1 = "m", auth1="false";
        if (female.Checked == true)
        {
            gender1 = "f";
        }
        if (auth.Checked == true)
        {
            auth1 = "true";
        }
        if (fname.Text != "" && lname.Text != ""   && ph_num.Text != "")
        {

                TimeSpan ts = new TimeSpan(+5, +30, 0);

                rows = g1.ExecDB("update reg_members set gender='" + gender1 + "',fname='" + fname.Text.ToString().Trim().Replace("'", "''") + "',lname='" + lname.Text.ToString().Trim().Replace("'", "''") + "',dob='" + dob.Text.ToString().Trim().Replace("'", "''") + "',email='" + email.Text.ToString().Trim().Replace("'", "''") + "',cname='" + comp.Text.ToString().Trim().Replace("'", "''") + "',saddress='" + srtadd.Text.ToString().Trim().Replace("'", "''") + "',Suburb='" + suburb.Text.ToString().Trim().Replace("'", "''") + "',post_code='" + post_code.Text.ToString().Trim().Replace("'", "''") + "',city='" + city.Text.ToString().Trim().Replace("'", "''") + "',state='" + state.Text.ToString().Trim().Replace("'", "''") + "',country='" + country.SelectedValue.ToString() + "',telphone='" + ph_num.Text.ToString().Trim().Replace("'", "''") + "',fax='" + fax_num.Text.ToString().Trim().Replace("'", "''") + "',ctype='" + ctype.SelectedValue.ToString() + "',discount='" + dis_chg.Text.ToString().Trim().Replace("'", "''") + "',vat='" + vat_chg.Text.ToString().Trim().Replace("'", "''") + "',auth='" + auth1 + "' where reg_id=" + Session["user_no"]);

              

                captua.Text = string.Empty;
                fname.Text = string.Empty;
                lname.Text = string.Empty;
                dob.Text = string.Empty;
                email.Text = string.Empty;
                comp.Text = string.Empty;
                srtadd.Text = string.Empty;
                suburb.Text = string.Empty;
                post_code.Text = string.Empty;
                state.Text = string.Empty;
                city.Text = string.Empty;
                ph_num.Text = string.Empty;
                news_letter.Checked = true;
                fax_num.Text = string.Empty;

                ph_num.Text = string.Empty;
                country.SelectedValue = "---Choose One---";

                if (rows > 0)
                {
                    bind1();
                    ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Update Successfully....');</script>");

                }
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Please fill up all mandetory fields.');</script>");

        }
    }
}

