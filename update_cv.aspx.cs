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
using System.Drawing;
using System.Drawing.Imaging;
using System.Data.SqlClient;
using System.IO;


public partial class update_cv : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0, i = 0;
    public string fileName;
    DataTable dt2 = new DataTable();

    public string impdt = "", name1 = "";

    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string name;
	public string view1;
    protected void Page_Load(object sender, EventArgs e)
    {

      
            if (Session["user_txt"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                if (!IsPostBack)
                {

                bind();

                }

            }
        
    }


    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "select  File_Data  from  pyr_master where user_txt='" + Session["user_txt"] + "'";
            SqlDataReader dr1;
            dr1 = m.ExecuteReader();
            dr1.Read();
            if (dr1[0].ToString() == "")
            {
                dr1.Close();
                Label1.Text = "Your CV is not Available.";
          FileUpload1.Visible = false;
                Label2.Visible = false;
           Button1.Visible = false;
                delete.Visible = false;
                Label3.Visible = false;
                view.Visible = false;
                downcv.Visible = false;
            }
            else
            {
                name = dr1[0].ToString();
                dr1.Close();
                Label1.Text = "";
                FileUpload1.Visible = true;
                Label2.Visible = true;
                Button1.Visible = true;
                delete.Visible = true;
                Label3.Visible = true;
                view.Visible = true;
                downcv.Visible = true;
                view1 = "cv\\" + name;

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


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.FileName != "")
        {
            string exten = Path.GetExtension(FileUpload1.FileName);
            switch (exten.ToLower())
            {
                case ".doc":
                case ".docx":
                case ".rtf":

                    try
                    {

                        int lenght = FileUpload1.PostedFile.ContentLength;
                        byte[] data = new byte[lenght];
                        FileUpload1.PostedFile.InputStream.Read(data, 0, lenght);
                        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                        c.Open();
                        m.Connection = c;
                        m.CommandText = "update  pyr_master set File_Data=@File_Data,File_Size=@File_Size  where user_txt='" + Session["user_txt"] + "'";
                        m.Parameters.AddWithValue("@File_Data", data);
                        m.Parameters.AddWithValue("@File_Size", lenght);
                        m.ExecuteNonQuery();
                        c.Close();
                        Label1.Text = "successfully update the cv.";

                       // bind();

                      

                    }
                    catch (Exception ex)
                    {
                        Label1.Text = ex.ToString();
                    }
                   
                    break;
                default:
                    Label1.Text = "this type of file not excepted.";
                    return;

            }

        }
        else
        {
           
            Label1.Text = "Please select Resume (show in Update CV (Word Format) box)";
        }
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            m.CommandText = "update  pyr_master set File_Name='no',File_Data=null,File_Size=0  where user_txt='" + Session["user_txt"] + "'";
            m.ExecuteNonQuery();
           
          //  Response.Redirect("Overview_Form.aspx");

            Label1.Text = "Resume deleted successfully";

            Button1.Visible = false;
            downcv.Visible = false;
            delete.Visible = false;
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
    protected void view_Click(object sender, EventArgs e)
    {
        
       //view= "D:\\webserver\\suvidhajobs.in\\www\\placement\\cv\\" + name;
    }
    protected void downcv_Click(object sender, EventArgs e)
    {
        dt = g1.return_dt("SELECT name_txt,File_Data FROM pyr_master WHERE user_txt='" + Session["user_txt"] + "'");

        fileName = dt.Rows[0]["name_txt"].ToString() + ".doc";


        Byte[] bytes = (Byte[])dt.Rows[0]["File_Data"];
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        // Response.ContentType = dt.Rows[0]["ContentType"].ToString();
        Response.AddHeader("content-disposition", "attachment;filename="
        + fileName.ToString());
        Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();
    }
}
