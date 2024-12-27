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


using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;
using System.Web.Mail;
using System.Net.Sockets;
using System.Text;
using System.Collections;
using System.Net;
using System.Text.RegularExpressions;


public partial class admin_Add_user : System.Web.UI.Page
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
                male.Checked = true;
                TimeSpan ts = new TimeSpan(+5, +30, 0);
                bind();
            }
        }

    }


    
    public void bind()
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




    protected void add_Click(object sender, EventArgs e)
    {
        int news_letter1 = 0;
        string gender1 = "m";

        if (female.Checked == true)
        {
            gender1 = "f";
        }
        if (news_letter.Checked == true)
        {
            news_letter1 = 1;
        }

        if (fname.Text != "" && lname.Text != "" && TextBox3.Text != "" && TextBox4.Text != ""   && email.Text != "" && ph_num.Text != "")
        {

                if (TextBox3.Text == TextBox4.Text)
                {

                    dt = g1.return_dt("select  *  from  reg_members where email='" + email.Text + "'");

                    if (dt.Rows.Count > 0)
                    {

                        Label1.Text = "This Email Id is already register.";
                    }
                    else
                    {

                        maxid = g1.generate_max_id_reg("select  max(reg_id)  from  reg_members");
                        TimeSpan ts = new TimeSpan(+5, +30, 0);

                        rows = g1.ExecDB("insert into reg_members values(" + maxid + ",'" + gender1 + "','" + fname.Text.ToString().Trim().Replace("'", "''") + "','" + lname.Text.ToString().Trim().Replace("'", "''") + "','" + dob.Text.ToString().Trim().Replace("'", "''") + "','" + email.Text.ToString().Trim().Replace("'", "''") + "','" + comp.Text.ToString().Trim().Replace("'", "''") + "','" + srtadd.Text.ToString().Trim().Replace("'", "''") + "','" + suburb.Text.ToString().Trim().Replace("'", "''") + "','" + post_code.Text.ToString().Trim().Replace("'", "''") + "','" + city.Text.ToString().Trim().Replace("'", "''") + "','" + state.Text.ToString().Trim().Replace("'", "''") + "','" + country.SelectedValue.ToString() + "','" + ph_num.Text.ToString().Trim().Replace("'", "''") + "','" + fax_num.Text.ToString().Trim().Replace("'", "''") + "','" + TextBox3.Text.ToString().Trim().Replace("'", "''") + "','" + ctype.SelectedValue.ToString() + "'," + news_letter1 + ",'" + DateTime.Now.Date.ToShortDateString() + "','true','" + srtadd.Text.ToString().Trim().Replace("'", "''") + "','" + city.Text.ToString().Trim().Replace("'", "''") + "','" + country.SelectedValue.ToString().Trim().Replace("'", "''") + "',' ','" + ph_num.Text.ToString().Trim().Replace("'", "''") + "','" + srtadd.Text.ToString().Trim().Replace("'", "''") + "','" + city.Text.ToString().Trim().Replace("'", "''") + "',' ','" + country.SelectedValue.ToString().Trim().Replace("'", "''") + "','" + ph_num.Text.ToString().Trim().Replace("'", "''") + "','" + dis_chg.Text.ToString().Trim().Replace("'", "''") + "','" + vat_chg.Text.ToString().Trim().Replace("'", "''") + "','Admin','')");

                        
                        lb3.Visible = false;


                        // mail(email.Text, name.Text, mobile.Text);
                        // mail1(email.Text, name.Text, TextBox3.Text);

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
                        TextBox3.Text = string.Empty;
                        TextBox4.Text = string.Empty;
                        ph_num.Text = string.Empty;
                        country.SelectedValue = "---Choose One---";
                        if (rows > 0)
                        {
                            Label1.Text = "Add Successfully.......";
                        }

                    

                    }
                }
                else
                {
                    Label1.Text = "Password is not match.";

                }
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Please fill up all mandetory fields.');</script>");

        }
    }
}
