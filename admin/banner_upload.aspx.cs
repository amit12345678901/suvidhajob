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


public partial class admin_banner_upload : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int maxid = 0, rows = 0;
    public string link,blink,sourcepath;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

        }

        name.Focus();


    }

    protected Bitmap GetScaledPicture(Bitmap source, int maxWidth, int maxHeight)
    {
        int width, height;
        float aspectRatio = (float)source.Width / (float)source.Height;

        if ((maxHeight > 0) && (maxWidth > 0))
        {
            if ((source.Width < maxWidth) && (source.Height < maxHeight))
            {
                //Return unchanged image
                return source;
            }
            else if (aspectRatio > 1)
            {
                // Calculated width and height,
                // and recalcuate if the height exceeds maxHeight
                width = maxWidth;
                height = (int)(width / aspectRatio);
                if (height > maxHeight)
                {
                    height = maxHeight;
                    width = (int)(height * aspectRatio);
                }
            }
            else
            {
                // Calculated width and height,
                // and recalcuate if the width exceeds maxWidth
                height = maxHeight;
                width = (int)(height * aspectRatio);
                if (width > maxWidth)
                {
                    width = maxWidth;
                    height = (int)(width / aspectRatio);
                }
            }
        }
        else if ((maxHeight == 0) && (source.Width > maxWidth))
        {
            // If MaxHeight is not provided (unlimited), and
            // the source width exceeds maxWidth,
            // then recalculate height
            width = maxWidth;
            height = (int)(width / aspectRatio);
        }
        else if ((maxWidth == 0) && (source.Height > maxHeight))
        {
            // If MaxWidth is not provided (unlimited), and the
            // source height exceeds maxHeight, then
            // recalculate width
            height = maxHeight;
            width = (int)(height * aspectRatio);
        }
        else
        {
            //Return unchanged image
            return source;
        }

        Bitmap newImage = GetResizedImage(source, width, height);
        return newImage;
    }

    protected Bitmap GetResizedImage(Bitmap source, int width, int height)
    {
        //This function creates the thumbnail image.
        //The logic is to create a blank image and to
        // draw the source image onto it

        Bitmap thumb = new Bitmap(width, height);
        Graphics gr = Graphics.FromImage(thumb);

        gr.InterpolationMode = InterpolationMode.HighQualityBicubic;
        gr.SmoothingMode = SmoothingMode.HighQuality;
        gr.PixelOffsetMode = PixelOffsetMode.HighQuality;
        gr.CompositingQuality = CompositingQuality.HighQuality;

        gr.DrawImage(source, 0, 0, width, height);
        return thumb;
    }

    private void saveThumbnail(string imageSource, string thumbnailPath)
    {
        using (System.Drawing.Bitmap original = new System.Drawing.Bitmap(imageSource))
        {
            
            int _newWidth = 200;
            int _newHeight = 200;
            //Create a bitmap of the correct size.
            using (System.Drawing.Bitmap temp = new System.Drawing.Bitmap(_newWidth, _newHeight, original.PixelFormat))
            {
                //Get a Graphics object from the bitmap.
                using (System.Drawing.Graphics newImage = System.Drawing.Graphics.FromImage(temp))
                {
                    //Draw the image with the new width/height
                    newImage.DrawImage(original, 0, 0, _newWidth, _newHeight);
                    //Save the bitmap
                    temp.Save(thumbnailPath);
                }
            }
        }
    }
    protected void Add_Click(object sender, EventArgs e)
    {

        if (name.Text != "" && FileUpload1.PostedFile.FileName.ToString() != "")
        {
            string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

            switch (strExtension.ToLower())
            {
                case ".jpg":
                case ".gif":
                case ".jpeg":
                case ".tif":
                    try
                    {

                        maxid = g1.generate_max_id("select  max(id)  from  banner");
                            link = maxid + "_";
                            blink = "big_" + maxid + "_";
                            //int rows;
                            rows = g1.ExecDB("insert into banner values(" + maxid + ",'" + name.Text.ToString().Trim().Replace("'", "''") + "','" + link + strExtension + "')");
                           FileUpload1.SaveAs(Server.MapPath("~/banner_image/") + blink + strExtension);

                           /*
                               Bitmap uploadedImage = new Bitmap(FileUpload1.FileContent);
                               int maxWidth = 148;
                               int maxHeight = 0;
                               Bitmap resizedImage = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                               String tempFileName = Server.MapPath("~/banner_image/" + link + strExtension);
                               resizedImage.Save(tempFileName, uploadedImage.RawFormat);
                        

                              sourcepath = "~\\banner_image\\" + link + strExtension;
                              using (System.Drawing.Bitmap original = new System.Drawing.Bitmap(FileUpload1.FileContent))
                              {

                                  int _newWidth = 200;
                                  int _newHeight = 200;
                                  //Create a bitmap of the correct size.
                                  using (System.Drawing.Bitmap temp = new System.Drawing.Bitmap(_newWidth, _newHeight, original.PixelFormat))
                                  {
                                      //Get a Graphics object from the bitmap.
                                      using (System.Drawing.Graphics newImage = System.Drawing.Graphics.FromImage(temp))
                                      {
                                          //Draw the image with the new width/height
                                          newImage.DrawImage(original, 0, 0, _newWidth, _newHeight);
                                          //Save the bitmap
                                          temp.Save(sourcepath);
                                      }
                                  }
                              }

                           */

                           // saveThumbnail(FileUpload1.FileContent.ToString(), sourcepath.ToString());
                            


                            Image1.ImageUrl = "~\\banner_image\\" + blink + strExtension;
                            Label1.Text = "successfully  add.";

                            if (rows > 0)
                            {
                                Label1.Text = "Add  successfully.";
                            }

                            name.Text = string.Empty;

                        }
                    
                    catch (Exception ex)
                    {
                        Label1.Text = ex.ToString();
                    }

                    break;
                default:
                    Label1.Text = "sorry,this type of picture are not excepted.";
                    return;




            }
        }
        else
        {
            Label1.Text = "Please Insert Group name and Select Image.";
        }


    }
}