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

public partial class placed_Candidate_Modify : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
   
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
            m.CommandText = "select can_name,cname,sal,link from    placement where    id=" + Session["id2"];
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
            name.Text = dr[0].ToString();
            company.Text = dr[1].ToString();
            sal.Text = dr[2].ToString();
            Session["link"] = dr[3].ToString();
            Image1.ImageUrl = "~\\admin\\picture\\" + dr[3].ToString();
            dr.Close();
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

                            m.CommandText = "update    placement set can_name='" + name.Text + "',cname='"+company.Text+"',sal='"+sal.Text+"'   where    id=" + Session["id2"];


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

                        bitmap.Save("D:\\webserver\\suvidhajobs.in\\www\\placement\\picture\\" + Session["link"], System.Drawing.Imaging.ImageFormat.Jpeg);
                        bitmap.Save("D:\\webserver\\suvidhajobs.in\\www\\admin\\picture\\" + Session["link"], System.Drawing.Imaging.ImageFormat.Jpeg);
                        
                        
                        Image1.ImageUrl = "~\\admin\\picture\\" + Session["link"];

                        Label1.Text = "successfully  update.";
                        break;
                    default:
                        Label1.Text = "this type of picture are not excepted.";
                        return;

                }
            }
        }

        if (name.Text != "" && company.Text!="" && sal.Text!="" && FileUpload1.PostedFile.FileName.ToString() == "")
        {

            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;

            m.CommandText = "update    placement set can_name='" + name.Text + "',cname='" + company.Text + "',sal='" + sal.Text + "'   where    id=" + Session["id2"];

            
            
            Label1.Text = "successfully  update.";

            m.ExecuteNonQuery();
            c.Close();
        }
        if (name.Text == "" || company.Text=="" || sal.Text=="" )
        {
            Label1.Text = "please enter some criteria.";
        }

    }
}
