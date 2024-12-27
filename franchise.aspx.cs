using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Mail;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    string it;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Save_Click(object sender, EventArgs e)
    {
        if(edu1.Checked==true)
        {
            it="Yes";
        }
        if(edu2.Checked==true)
        {
            it="No";
        }

        if (name.Text != "" && db.Text!=""  && add.Text != "" && city.Text != "" && state.Text != "" && ph_m.Text != "" && pre_loc.Text!="")
        {

            mail(name.Text, db.Text, add.Text, city.Text, state.Text, ph_o.Text, ph_r.Text, ph_m.Text, from.Text, to.Text, email.Text, pre_loc.Text, setup.Text, floor.Text, capital.Text, soon.Text, aq.SelectedValue, current_doing.SelectedValue, exp.SelectedValue, role.Text, salary.Text, it, area.Text, no_computer.Text, turn_over.Text, comment.Text);
        }

       // mail(name.Text, db.Text, add.Text, city.Text, population.Text, state.Text, ph_o.Text, ph_r.Text, ph_m.Text, from.Text, to.Text, email.Text, catagorie.SelectedValue, vertical.SelectedValue, pre_loc.Text, pre_popu.Text, no_school.Text, no_college.Text, State1.Text, setup.Text, floor.Text, capital.Text, soon.Text, aq.SelectedValue, current_doing.SelectedValue, exp.SelectedValue, role.Text, salary.Text, it, area.Text, no_computer.Text, no_student.Text);

        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('all criteria are not fill up.please follow the * mark.')", true);

        }
        
        
        db.Text = "";
    }

    public void mail(string name, string db, string add, string city, string state, string pho, string phr,string phm, string from, string to, string email, string pre_loc, string setup,string floor, string capital, string soon, string aq,string current_doing, string exp, string role, string salary,string it, string area, string no_computer,  string turn, string comment)
    {
        MailMessage msgMail = new MailMessage();


        msgMail.To = "accounting.knowledge@gmail.com";
        msgMail.From = "admin@suvidhajobs.in";
        msgMail.Subject = "Franchisee Enquiry(Placement)";

        msgMail.BodyFormat = MailFormat.Html;

        msgMail.Body = "<html><body><br><br><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC>" +
                      "<tr><td><table border=1 cellpadding=5 cellspacing=0 bordercolor=#CCCCCC><tr><td bgcolor=#ce5039 height=10></td>" +
                     " </tr> <tr><td>        " + " , <br><p align=justify></p>" +
            "<p align=justify>Given below are the Franchisee Details(Placement). <table align=center cellpadding=5 cellspacing=0>" +
              "<tr>" +

              "</tr><tr><td valign=center width=18 align=right>Name : </td>" +
                "<td valign=center width=182 align=left><strong>" + name + "</strong></td></tr><tr><td valign=center width=18 align=right>Date of Birth : </td>" +
                "<td valign=center width=182 align=left><strong>" + db + "</strong></td></tr><tr><td valign=center width=18 align=right>Address : </td>" +
                "<td valign=center width=182 align=left><strong>" + add + "</strong></td></tr><tr><td valign=center width=18 align=right>City : </td>" +
                "<td valign=center width=182 align=left><strong>" + city + "</strong></td></tr><tr><td valign=center width=18 align=right>State : </td>" +
                "<td valign=center width=182 align=left><strong>" + state + "</strong></td></tr><tr><td valign=center width=18 align=right>Phone(Office) : </td>" +
                "<td valign=center width=182 align=left><strong>" + pho + "</strong></td></tr><tr><td valign=center width=18 align=right>Phone(Residencial) : </td>" +
                "<td valign=center width=182 align=left><strong>" + phr + "</strong></td></tr><tr><td valign=center width=18 align=right>Mobile : </td>" +
                "<td valign=center width=182 align=left><strong>" + phm + "</strong></td></tr><tr><td valign=center width=18 align=right>Best Time of Contact : </td>" +
                "<td valign=center width=182 align=left><strong>" + "From  " + from + "  To  " + to + "</strong></td></tr><tr><td valign=center width=18 align=right>Email : </td>" +
                "<td valign=center width=182 align=left><strong>" + email + "</strong></td></tr><tr><td valign=center width=18 align=right>Prefered locality for  cente : </td>" +
                "<td valign=center width=182 align=left><strong>" + pre_loc + "</strong></td></tr><tr><td valign=center width=18 align=right>How do  Propose to set up the Franchisee : </td>" +
                "<td valign=center width=182 align=left><strong>" + setup + "</strong></td></tr><tr><td valign=center width=18 align=right>Available / Proposed Floor Space (Sqft) : </td>" +
                "<td valign=center width=182 align=left><strong>" + floor + "</strong></td></tr><tr><td valign=center width=18 align=right>Proposed Capital Investment : </td>" +
                "<td valign=center width=182 align=left><strong>" + capital + "</strong></td></tr><tr><td valign=center width=18 align=right>How soon  would be able to invest (months) : </td>" +
                "<td valign=center width=182 align=left><strong>" + soon + "</strong></td></tr><tr><td valign=center width=18 align=right>Academic Background : </td>" +
                "<td valign=center width=182 align=left><strong>" + aq + "</strong></td></tr><tr><td valign=center width=18 align=right>currently doing : </td>" +
                "<td valign=center width=182 align=left><strong>" + current_doing + "</strong></td></tr><tr><td valign=center width=18 align=right>Experience : </td>" +
                "<td valign=center width=182 align=left><strong>" + exp + "</strong></td></tr><tr><td valign=center width=18 align=right>current role / responsibility : </td>" +
                "<td valign=center width=182 align=left><strong>" + role + "</strong></td></tr><tr><td valign=center width=18 align=right>Salary for the previous Financial Year : </td>" +
                "<td valign=center width=182 align=left><strong>" + salary + "</strong></td></tr><tr><td valign=center width=18 align=right>any experience in the IT or Education industry : </td>" +
                "<td valign=center width=182 align=left><strong>" + it + "</strong></td></tr><tr><td valign=center width=18 align=right>Area  : </td>" +
                "<td valign=center width=182 align=left><strong>" + area + "</strong></td></tr><tr><td valign=center width=18 align=right>No. of Computers : </td>" +
                "<td valign=center width=182 align=left><strong>" + no_computer + "</strong></td></tr><tr><td valign=center width=18 align=right>turn-over for the previous Financial Year (INR) : </td>" +
                "<td valign=center width=182 align=left><strong>" + turn + "</strong></td></tr><tr><td valign=center width=18 align=right>Other Comments : </td>" +
                "<td valign=center width=182 align=left><strong>" + comment + "</strong></td></tr></table></td></tr><tr><td></td>" +
          "</tr><tr><td></td> </tr><td bgcolor=#f6e2c1>For any Queries, call  +91 9674245433, 9674926708 or e-mail us at accounting.knowledge@gmail.com</td>" +
          "</tr>  <tr><td></td></tr><tr><td> <br><br>With regards.<br> Team Suvidha Jobs</td>" +
          "</tr><tr><td></td></tr><tr><td bgcolor=#425c6e><em>This is an auto-generated mail. Please do not reply. </em></td></tr>" +
      "</table></td></tr></table><br></body></html>";
        
        

        SmtpMail.Send(msgMail);

        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "script", "alert('Mail  Sent  successfully.Thank You.')", true);


    }

}
