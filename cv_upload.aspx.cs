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

public partial class cv_upload : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Upload_Click(object sender, EventArgs e)
    {
        if (Session["user_txt"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
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


                            Label1.Text = "Your resume saved successfully..";
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = ex.ToString();
                        }
                        finally
                        {
                            c.Close();
                        }
                        break;
                    default:
                        Label1.Text = "this type of file not excepted.";
                        return;

                }

            }
            else
            {
                Label1.Text = "Please select Resume";
            }
        }
    }
}