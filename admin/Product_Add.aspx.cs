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


public partial class admin_Product_Add : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    int rows = 0, maxid = 0;
    public string link;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username_txt"] == null)
        {
            Response.Redirect("Default.aspx");

        }
        else
        {
            if (!IsPostBack)
            {
                bindgroup();
            }
        }
    }

    public void bindgroup()
    {

        cat.Items.Clear();
        cat.Items.Add("--Select Group Name--");
        g1.populate_combo("select ProdCate  from ProdCateMast  order by ProdCate", cat);
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
    protected void add_Click(object sender, EventArgs e)
    {
        if (pname.Text != "" && cat.SelectedValue.ToString() != "--Select Group Name--" && FileUpload1.PostedFile.FileName.ToString() != "" && quantity.Text != "" && price.Text != "" && subgroup.Text != "" && pcode.Text != "")
        {
            string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

            switch (strExtension.ToLower())
            {
                case ".jpg":
                case ".gif":
                case ".jpeg":

                    try
                    {
                        int wt = 100,express1=0, newarv1=0;
                        if (weight.Text != "")
                        {
                            wt = Int32.Parse(weight.Text);
                        }

                        if (newar.Checked == true)
                        {
                            newarv1 = 1;
                        }
                        if (express.Checked == true)
                        {
                            express1 = 1;
                        }
                            maxid = g1.generate_max_id("select  max(SlNo)  from  ProdMast");
                            link = pcode.Text;
                            string catid1 = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue + "'");
                            string subcatid1 = g1.reterive_val("select SlNo from SubCateMast where SubCate='" + subgroup.SelectedValue + "' and CateID="+ catid1);
                            rows = g1.ExecDB("insert into ProdMast values(" + maxid + "," + Int32.Parse(catid1.ToString()) + ",'" + pname.Text.ToString().Trim().Replace("'", "''") + "','" + sdes.Text.ToString().Trim().Replace("'", "''") + "','" + des.Text.ToString().Trim().Replace("'", "''") + "'," + Int32.Parse(subcatid1.ToString()) + "," + Int32.Parse(price.Text) + ",'" + link + strExtension + "'," + Int32.Parse(quantity.Text) + ",'" + colour.Text.ToString().Trim().Replace("'", "''") + "','" + fabric.Text.ToString().Trim().Replace("'", "''") + "','" + works.Text.ToString().Trim().Replace("'", "''") + "','" + type.Text.ToString().Trim().Replace("'", "''") + "','" + weight.Text.ToString().Trim().Replace("'", "''") + "','" + Dimension.Text.ToString().Trim().Replace("'", "''") + "','" + length.Text.ToString().Trim().Replace("'", "''") + "','" + title_page.Text.ToString().Trim().Replace("'", "''") + "','" + delivery_time.Text.ToString().Trim().Replace("'", "''") + "','" + tag.Text.ToString().Trim().Replace("'", "''") + "'," + express1 + "," + newarv1 + ",'" + pcode.Text.ToString().Trim().Replace("'", "''") + "','" + vcode.Text.ToString().Trim().Replace("'", "''") + "','" + blouse.Text.ToString().Trim().Replace("'", "''") + "')");

                          
                            Bitmap uploadedImage = new Bitmap(FileUpload1.FileContent);


                            int maxWidth = 300;
                            int maxHeight = 0;

                            Bitmap resizedImage = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                            String tempFileName = Server.MapPath("~/all_picture/prod_picture/" + link + strExtension);
                            resizedImage.Save(tempFileName, uploadedImage.RawFormat);

                            maxWidth = 900;

                            Bitmap resizedImage1 = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                            String tempFileName1 = Server.MapPath("~/all_picture/prod_picture/" + "big_" + link + strExtension);
                            resizedImage1.Save(tempFileName1, uploadedImage.RawFormat);
                         


                            Image1.ImageUrl = "~\\all_picture\\prod_picture\\" + link + strExtension;
                            Label1.Text = "successfully  add.";
                            cat.SelectedValue = "--Select Group Name--";
                            subgroup.SelectedValue = "--Select Sub Group Name--";
                            pname.Text = string.Empty;
                            quantity.Text = string.Empty;
                            price.Text = string.Empty;
                            title_page.Text = string.Empty;
                            delivery_time.Text = string.Empty;
                            sdes.Text = string.Empty;
                            pcode.Text = string.Empty;
                            sdes.Text = string.Empty;
                            express.Checked = false;
                            newar.Checked = false;
                     
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
            Label1.Text = "Please fill full criteria.";
        }
    }
    protected void cat_SelectedIndexChanged(object sender, EventArgs e)
    {

     subgroup.Items.Clear();
     subgroup.Items.Add("--Select Sub Group Name--");
     string subid = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue  + "'");
     g1.populate_combo("select SubCate from SubCateMast where CateID=" + subid, subgroup);


    }
   
}


