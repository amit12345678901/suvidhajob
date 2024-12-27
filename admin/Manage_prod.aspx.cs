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
using System.IO;
using System.Xml.Linq;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Drawing;

public partial class admin_Manage_prod : System.Web.UI.Page
{
    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
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
                Session["search5"] = null;
                bindgroup();
                bind();
            }
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

    public void bindgroup()
    {

        cat.Items.Clear();
        cat.Items.Add("--Select Group Name--");
        g1.populate_combo("select ProdCate  from ProdCateMast order by ProdCate", cat);
    }


    public void bind()
    {
        try
        {
            dt = g1.return_dt("select ProdMast.SlNo,ProdCode as [Product Name],MRP,ProdDesc as [Product Description],ProdCate as [Group Name],SubCate as [Sub Group Name]  from ProdCateMast,SubCateMast,ProdMast  where  ProdCateMast.SlNo=ProdMast.ProdCateID and  SubCateMast.SlNo=ProdMast.SubCateID " + Session["search5"]  +" order by SlNo desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            ex.ToString();
        }


    }


    protected void cat_SelectedIndexChanged(object sender, EventArgs e)
    {

        subgroup.Items.Clear();
        subgroup.Items.Add("--Select Sub Group Name--");
        string subid = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue + "'");
        g1.populate_combo("select SubCate from SubCateMast where CateID=" + subid, subgroup);


    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        // GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        switch (e.CommandName.Trim())
        {

            case "Delete1":

                int id = Convert.ToInt32(e.CommandArgument);
                string name2 = g1.reterive_val("select ProdPicName from ProdMast where SlNo=" + id);
                if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\all_picture\\prod_picture\\" + name2))
                {

                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\all_picture\\prod_picture\\" + name2);
                }

                if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\all_picture\\prod_picture\\" + "big_" + name2))
                {

                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\all_picture\\prod_picture\\" + "big_" + name2);
                }

                rows = g1.ExecDB("delete  from  ProdMast  where SlNo=" + id);

                if (rows > 0)
                {
                    Label1.Text = "delete successfully.";

                    bind();
                }


                break;
            case "Modifie":
                int r3 = Int32.Parse((e.CommandArgument).ToString());
                Session["pid"] = GridView1.Rows[r3].Cells[3].Text;

                dt1 = g1.return_dt("select * from ProdMast where SLNo=" + Session["pid"]);
                if (dt1.Rows.Count > 0)
                {

                    cat.SelectedValue = Convert.ToString(GridView1.Rows[r3].Cells[7].Text);

                    subgroup.Items.Clear();
                    subgroup.Items.Add("--Select Sub Group Name--");

                    g1.populate_combo("select SubCate from SubCateMast where CateID=" + Convert.ToString(dt1.Rows[0]["ProdCateID"]), subgroup);

                    subgroup.SelectedValue = Convert.ToString(GridView1.Rows[r3].Cells[8].Text);
                    name.Text = Convert.ToString(dt1.Rows[0]["ProdCode"]);
                    pcode.Text = Convert.ToString(dt1.Rows[0]["ProdCode1"]);
                    sdes.Text = Convert.ToString(dt1.Rows[0]["sdes"]);
                    des.Text = Convert.ToString(dt1.Rows[0]["ProdDesc"]);
                    pcode.Text = Convert.ToString(dt1.Rows[0]["prodcode1"]);
                    vcode.Text = Convert.ToString(dt1.Rows[0]["vendcode1"]);
                    blouse.Text = Convert.ToString(dt1.Rows[0]["blouselen"]);
                    quantity.Text = Convert.ToString(dt1.Rows[0]["BaseQty"]);
                    price.Text = Convert.ToString(dt1.Rows[0]["MRP"]);
                    colour.Text = Convert.ToString(dt1.Rows[0]["colour"]);
                    fabric.Text = Convert.ToString(dt1.Rows[0]["Fabric"]);

                    works.Text = Convert.ToString(dt1.Rows[0]["work_txt"]);
                    type.Text = Convert.ToString(dt1.Rows[0]["type"]);
                    Dimension.Text = Convert.ToString(dt1.Rows[0]["dimension"]);
                    length.Text = Convert.ToString(dt1.Rows[0]["length"]);
                    tag.Text = Convert.ToString(dt1.Rows[0]["tags"]);
                    if (Convert.ToString(dt1.Rows[0]["express"]) == "1")
                    {
                        express.Checked = true;
                    }
                    else
                    {
                        express.Checked = false;
                    }

                    if (Convert.ToString(dt1.Rows[0]["newarv"]) == "1")
                    {
                        newar.Checked = true;
                    }
                    else
                    {
                        newar.Checked = false;
                    }


                    weight.Text = Convert.ToString(dt1.Rows[0]["weight"]);
                    title_page.Text = Convert.ToString(dt1.Rows[0]["title_page"]);
                    delivery_time.Text = Convert.ToString(dt1.Rows[0]["delivery_time"]);


                    Session["link2"] = Convert.ToString(dt1.Rows[0]["ProdPicName"]);
                    Image1.ImageUrl = "~\\all_picture\\prod_picture\\" + Convert.ToString(dt1.Rows[0]["ProdPicName"]);
                    name.Focus();
                }
                break;

            case "images":
                int r4 = Int32.Parse((e.CommandArgument).ToString());

                Session["pid"] = GridView1.Rows[r4].Cells[3].Text;
                Response.Redirect("image_upload.aspx");
                break;


        }
    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[3].Visible = false;
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

        if (Session["pid"] != null)
        {

            if (name.Text != "" && cat.SelectedValue.ToString() != "--Select Group Name--"  && quantity.Text != "" && price.Text != "" && subgroup.Text != "" && pcode.Text != "")
            {

                int wt = 100, express1 = 0, newarv1 = 0;
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
                string catid1 = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue + "'");
                string subcatid1 = g1.reterive_val("select SlNo from SubCateMast where SubCate='" + subgroup.SelectedValue + "' and CateID=" + catid1);

                rows = g1.ExecDB("update  ProdMast set ProdCateID=" + catid1 + ",SubCateID=" + subcatid1 + ",vendcode1='" + vcode.Text.ToString().Trim().Replace("'", "''") + "',blouselen='" + blouse.Text.ToString().Trim().Replace("'", "''") + "',ProdCode='" + name.Text.ToString().Trim().Replace("'", "''") + "',prodcode1='" + pcode.Text.ToString().Trim().Replace("'", "''") + "',sdes='" + sdes.Text.ToString().Trim().Replace("'", "''") + "',ProdDesc='" + des.Text.ToString().Trim().Replace("'", "''") + "',MRP=" + Int32.Parse(price.Text) + ",title_page='" + title_page.Text.ToString().Trim().Replace("'", "''") + "',delivery_time='" + delivery_time.Text.ToString().Trim().Replace("'", "''") + "',tags='" + tag.Text.ToString().Trim().Replace("'", "''") + "',length='" + length.Text.ToString().Trim().Replace("'", "''") + "',colour='" + colour.Text.ToString().Trim().Replace("'", "''") + "',Fabric='" + fabric.Text.ToString().Trim().Replace("'", "''") + "',work_txt='" + works.Text.ToString().Trim().Replace("'", "''") + "',type='" + type.Text.ToString().Trim().Replace("'", "''") + "',weight='" + weight.Text.ToString().Trim().Replace("'", "''") + "',dimension='" + Dimension.Text.ToString().Trim().Replace("'", "''") + "',BaseQty='" + Int32.Parse(quantity.Text) + "',express=" + express1 + ",newarv=" + newarv1 + "    where SlNo=" + Session["pid"]);


                if (FileUpload1.PostedFile.FileName.ToString() != "")
                {
                    string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                    switch (strExtension.ToLower())
                    {
                        case ".jpg":
                        case ".gif":
                        case ".jpeg":





                            Bitmap uploadedImage = new Bitmap(FileUpload1.FileContent);
                            int maxWidth = 200;
                            int maxHeight = 0;
                            Bitmap resizedImage = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                            String tempFileName = Server.MapPath("~/all_picture/prod_picture/" + Session["link1"]);
                            resizedImage.Save(tempFileName, uploadedImage.RawFormat);
                            maxWidth = 700;
                            Bitmap resizedImage1 = GetScaledPicture(uploadedImage, maxWidth, maxHeight);
                            String tempFileName1 = Server.MapPath("~/all_picture/prod_picture/" + "big_" + Session["link1"]);
                            resizedImage1.Save(tempFileName1, uploadedImage.RawFormat);
                            Image1.ImageUrl = "~\\all_picture\\prod_picture\\" + Session["link1"];
                         


                            break;
                        default:
                            Label1.Text = "sorry,this type of picture are not excepted.";
                            return;


                    }
                }
                if (rows > 0)
                {
                    Label1.Text = "successfully  update.";
                }
                Session["pid"] = null;
            }
            else
            {
                Label1.Text = "Please fill all mandetory fields. * mark followed.";
            }
        }

        else
        {
            Label1.Text = "Please select update product.";
        }

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (search.Text != "")
        {

            Session["search5"] = "  and  prodcode1='" + search.Text + "' or vendcode1='" + search.Text + "'";
        }
        else
        {
            Session["search5"] = null;
        }

        bind();
    }
}