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

using System.Data.SqlClient;

using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;


public partial class admin_Edit_Subgroup : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    int rows = 0;
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
                bind();
            }
        }
    }


    public void bind()
    {
        try
        {
            dt = g1.return_dt("select SubCateMast.SlNo,ProdCate as [Group Name],SubCate as [Sub Group Name],SubCateMast.CateID,SubCateMast.link,SubCateMast.descrip  from ProdCateMast,SubCateMast  where  ProdCateMast.SlNo=SubCateMast.CateID  order by SlNo desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }


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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":

                int id = Convert.ToInt32(e.CommandArgument);
                string name2 = g1.reterive_val("select link from SubCateMast where SlNo=" + id);
                //  Response.Write(name2.ToString());
                System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\all_picture\\sub_picture\\" + name);

                rows = g1.ExecDB("delete  from  SubCateMast  where SlNo=" + id);
                if (rows > 0)
                {
                    Label1.Text = "delete successfully.";

                    bind();
                }


                break;
            case "Modifie":
                int r3 = Int32.Parse((e.CommandArgument).ToString());
                Session["sgpid"] = GridView1.Rows[r3].Cells[2].Text;
                name.Text = GridView1.Rows[r3].Cells[4].Text;
                if (GridView1.Rows[r3].Cells[7].Text != "&nbsp;")
                {
                    remark.Text = GridView1.Rows[r3].Cells[7].Text;
                }
                cat.SelectedValue = GridView1.Rows[r3].Cells[5].Text;
                Session["link2"] = GridView1.Rows[r3].Cells[6].Text;
                Image1.ImageUrl = "~\\all_picture\\sub_picture\\" + GridView1.Rows[r3].Cells[6].Text;
                name.Focus();
                break;

        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[5].Visible = false;
            e.Row.Cells[6].Visible = false;
            e.Row.Cells[7].Visible = false;
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
        bind();
    }


    protected void update_Click(object sender, EventArgs e)
    {
        if (Session["sgpid"] != null)
        {
            if (name.Text != "")
            {
                string gid = g1.reterive_val("select SLNo from ProdCateMast where ProdCate='" + cat.SelectedItem.Text + "'");

                rows = g1.ExecDB("update  SubCateMast set SubCate='" + name.Text + "',descrip='" + remark.Text + "',CateID=" + Int32.Parse(gid.ToString()) + "    where SlNo=" + Session["sgpid"]);

                if (FileUpload1.PostedFile.FileName.ToString() != "")
                {
                    string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                    switch (strExtension.ToLower())
                    {
                        case ".jpg":
                        case ".gif":
                        case ".jpeg":
                        case ".png":
                            Bitmap uploadedImage = new Bitmap(FileUpload1.FileContent);
                            int maxWidth = 148;
                            int maxHeight = 0;
                            Bitmap resizedImage = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                            String tempFileName = Server.MapPath("~/all_picture/sub_picture/" + Session["link2"]);
                            resizedImage.Save(tempFileName, uploadedImage.RawFormat);
                            Image1.ImageUrl = "~\\all_picture\\sub_picture\\" + Session["link2"];

                            break;
                        default:
                            Label1.Text = "sorry,this type of picture extension are not excepted.";
                            return;




                    }
                }

                if (rows > 0)
                {
                    name.Text = "";
                    remark.Text = string.Empty;
                    Session["sgpid"] = null;
                    bind();
                    Label1.Text = "update successfully.";
                }

              

            }
            else
            {
                Label1.Text = "Please Insert Sub Group Name.";
            }
        }
        else
        {
            Label1.Text = "please select update Sub Group name.";
        }
    }

}
