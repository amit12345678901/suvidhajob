using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;

public partial class placed_candidate : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id;
    string link;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");
        }

    }
    protected void save_Click(object sender, EventArgs e)
    {
        if (name.Text != "" && company.Text != "" && sal.Text != "" && FileUpload1.PostedFile.FileName.ToString() != "")
        {


            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {

                string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                //if ((strExtension.ToUpper() == ".JPG") | (strExtension.ToUpper() == ".GIF"))
                switch (strExtension.ToLower())
                {
                    case ".jpg":
                    case ".gif":
                    case ".jpeg":

                        try
                        {
                            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                            c.Open();
                            m.Connection = c;

                            m.CommandText = "select  count(id)  from  placement";
                            SqlDataReader dr, dr2;
                            dr = m.ExecuteReader();
                            dr.Read();
                            if (Int32.Parse(dr[0].ToString()) == 0)
                            {
                                id = 1;
                                dr.Close();
                            }
                            else
                            {
                                dr.Close();

                                m.CommandText = "select  max(id)  from  placement";

                                dr2 = m.ExecuteReader();
                                dr2.Read();
                                id = Int32.Parse(dr2[0].ToString());
                                id = id + 1;
                                dr2.Close();
                            }
                            link = id + "_" + name.Text;

                            m.CommandText = "insert into placement values(@id,@can_name,@cname,@sal,@link)";
                            m.Parameters.AddWithValue("@id", id);

                            m.Parameters.AddWithValue("@can_name", name.Text);
                            m.Parameters.AddWithValue("@cname", company.Text);
                            m.Parameters.AddWithValue("@sal", sal.Text);

                            m.Parameters.AddWithValue("@link", link + strExtension);

                            m.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            ex.ToString();
                        }
                        finally
                        {
                            c.Close();
                        }



                        System.Drawing.Image imageToBeResized = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                        int imageHeight = imageToBeResized.Height;
                        int imageWidth = imageToBeResized.Width;
                        int maxHeight = 200;
                        int maxWidth = 200;
                        imageHeight = (imageHeight * maxWidth) / imageWidth;
                        imageWidth = maxWidth;

                        if (imageHeight > maxHeight)
                        {
                            imageWidth = (imageWidth * maxHeight) / imageHeight;
                            imageHeight = maxHeight;
                        }
                        Bitmap bitmap = new Bitmap(imageToBeResized, imageWidth, imageHeight);
                        System.IO.MemoryStream stream = new MemoryStream();
                        //FileUpload1.SaveAs("d:\\ACK_Realstate\\photo\\" + TextBox1.ToString() + ".Jpeg");

                        bitmap.Save("D:\\webserver\\ackgroup.in\\www\\placement\\picture\\" + link + strExtension, System.Drawing.Imaging.ImageFormat.Jpeg);
                        bitmap.Save("D:\\webserver\\ackgroup.in\\www\\admin\\picture\\" + link + strExtension, System.Drawing.Imaging.ImageFormat.Jpeg);

                        Image1.ImageUrl = "~\\picture\\" + link + strExtension;
                        //Image1.ImageUrl = "D:\\webserver\\ackgroup.in\\www\\admin\\picture\\" + link + strExtension;
                        Label1.Text = "successfully  add.";
                        name.Text = "";
                        break;
                    default:
                        Label1.Text = "this type of picture are not excepted.";
                        return;

                }
            }
        }
        else
        {
            Label1.Text = "Form is not properly fillup.";
        }
    }
}
