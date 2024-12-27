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



public partial class colour_master : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    int rows = 0;
    int id;
    string link;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

        }
        
    }
    protected void save_Click(object sender, EventArgs e)
    {
        
        if (colour.Text != "" && FileUpload1.PostedFile.FileName.ToString() != "")
        {
            string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
          
            switch (strExtension.ToLower())
                    {
                        case ".jpg":
                        case ".gif":
                        case ".jpeg":

                           
           

                                dt1 = g1.return_dt("select *  from  colour_master where colour_name='" + colour.Text + "'"); 
                               
                                if (dt1.Rows.Count>0)
                                {

                                    Label1.Text = "This colour name is already exist.";
                                  
                                }
                                else
                                {
                                   

                                    id= g1.generate_max_id_reg("select  max(id)  from  colour_master");
                                    link =  id + "_" + colour.Text;

                                    rows = g1.ExecDB("insert into colour_master values(" + id + ",'" + colour.Text + "','" + link + strExtension + "')");

                                  
                                 
                                    System.Drawing.Image imageToBeResized = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                                    int imageHeight = imageToBeResized.Height;
                                    int imageWidth = imageToBeResized.Width;
                                    int maxHeight = 100;
                                    int maxWidth = 100;
                                    //  imageHeight = maxHeight;//(imageHeight * maxWidth) / imageWidth;
                                    //imageWidth = maxWidth;
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

                                    bitmap.Save(Server.MapPath(Request.ApplicationPath) + "\\colour_picture\\" + link + strExtension, System.Drawing.Imaging.ImageFormat.Jpeg);
                                    Image1.ImageUrl = "~\\colour_picture\\" + link + strExtension;
                                    
                                    Label1.Text = "successfully  add.";


                                }
                                 break;
                        default:
                            Label1.Text = "this type of picture are not excepted.";
                            return;


                    }
        }
        else
        {
            Label1.Text = "properly  are not fillup.";
        }
    }
}
