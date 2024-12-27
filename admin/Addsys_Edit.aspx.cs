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

public partial class Addsys_Edit : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();

    int id, id7;
    string link;

    public string path1 = "", path2 = "";


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
    

   

    protected void stdate_SelectionChanged(object sender, EventArgs e)
    {

        //lbstdate.Text = Calendar4.SelectedDate.ToShortDateString();
        lbstdate.Text = stdate.SelectedDate.ToLongDateString();
        stdate.Visible = false;

    }
    protected void endate_SelectionChanged(object sender, EventArgs e)
    {
        //TextBox30.Text = DateTime.Now.ToShortDateString().ToString();
        lbenddate.Text = endate.SelectedDate.ToLongDateString();
        endate.Visible = false;


    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        stdate.Visible = true;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        endate.Visible = true;

    }

    protected void update_Click(object sender, EventArgs e)
    {


        if (cl_name.Text == ""  || page_position.SelectedValue.ToString() == "Select" || height.Text == "" || width.Text == "")
        {

            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('All fields are not fillup  properly.');</script>");

        }

        if (cl_name.Text != ""  && FileUpload1.PostedFile.FileName == "" && page_position.Text != "" && height.Text != "" && width.Text != "")
          {
              if (Session["im_type"].ToString() == "Image")
              {
                  if (website.Text == "")
                  {
                      path1 = "<img src=../add-image/" + Session["link"] + " width=" + width.Text + " height=" + height.Text + " border=1 />";

                  }
                  else
                  {
                      path1 = "<a href=http://www." + website.Text + "  target=_blank><img src=../add-image/" + Session["link"] + " width=" + width.Text + " height=" + height.Text + " border=1 /></a>";


                  }

              }
              else
              {
                  path1 = "<object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 width=" + width.Text + "  height=" + height.Text + "><param name=movie value=../add-image/" + Session["link"] + "/><param name=quality value=high /><embed src=../add-image/" + Session["link"] + " quality=high pluginspage=http://www.macromedia.com/go/getflashplayer type=application/x-shockwave-flash width=" + width.Text + " height=" + height.Text + "></embed></object>";

              }

             

              c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
              c.Open();
              m.Connection = c;

              m.CommandText = "update  add_sys set page_name=" + Int32.Parse(page_name.SelectedValue.ToString()) + ",page_position='" + page_position.Text + "',cl_name='" + cl_name.Text.ToString().Trim().Replace("'", "''") + "',st_date='" + stdate.SelectedDate.ToShortDateString() + "',en_date='" + endate.SelectedDate.ToShortDateString() + "',website='" + website.Text.ToString().Trim().Replace("'", "''") + "',path1='" + path1 + "',rank=" + Int32.Parse(side_pos.SelectedValue.ToString()) + ",width1='" + width.Text + "',height1='" + height.Text + "'    where id=" + Session["id"];
              m.ExecuteNonQuery();

              c.Close();
              ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Update Successfully.');</script>");

          }

        if (cl_name.Text != ""  && FileUpload1.PostedFile.FileName != "" && page_position.Text != "" && height.Text != "" && width.Text != "")
          {
             string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

             Session["link"] = Session["id"] + "_" + strExtension;

             if (strExtension == ".swf")
             {
                 Session["im_type"] = "Flash";
             }
             else
             {
                 Session["im_type"] = "Image";
             }

            if (stdate.SelectedDate < endate.SelectedDate)
            {
                 switch (strExtension.ToLower())
                {
                    case ".jpg":
                    case ".gif":
                    case ".jpeg":
                    case ".swf":

              if (Session["im_type"].ToString() == "Image")
              {
                  if (website.Text == "")
                  {
                      path1 = "<img src=../add-image/" + Session["link"] + " width=" + width.Text + " height=" + height.Text + " border=1 />";

                  }
                  else
                  {
                      path1 = "<a href=http://www." + website.Text + "  target=_blank><img src=../add-image/" + Session["link"] + " width=" + width.Text + " height=" + height.Text + " border=1 /></a>";


                  }

              }
              else
              {
                  path1 = "<object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 width=" + width.Text + "  height=" + height.Text + "><param name=movie value=../add-image/" + Session["link"] + "/><param name=quality value=high /><embed src=../add-image/" + Session["link"] + " quality=high pluginspage=http://www.macromedia.com/go/getflashplayer type=application/x-shockwave-flash width=" + width.Text + " height=" + height.Text + "></embed></object>";

              }
              c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
              c.Open();
              m.Connection = c;

              m.CommandText = "update  add_sys set page_name=" + Int32.Parse(page_name.SelectedValue.ToString()) + ",page_position='" + page_position.Text + "',cl_name='" + cl_name.Text.ToString().Trim().Replace("'", "''") + "',st_date='" + stdate.SelectedDate.ToShortDateString() + "',en_date='" + endate.SelectedDate.ToShortDateString() + "',website='" + website.Text.ToString().Trim().Replace("'", "''") + "',path1='" + path1 + "',rank=" + Int32.Parse(side_pos.SelectedValue.ToString()) + ",type='" + Session["im_type"].ToString() + "',width1='" + width.Text + "',height1='" + height.Text + "',link='" + Session["link"].ToString() + "'    where id=" + Session["id"];
              m.ExecuteNonQuery();
              c.Close();
              UploadThisFile(FileUpload1);
             

            
              ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Update Successfully.');</script>");

              break;


                    default:
              Label1.Text = "Excepted excep.";
              return;

                }



            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Date range are not fill up.');</script>");

            }

          }


    }
    protected void UploadThisFile(FileUpload upload)
    {


        if (upload.HasFile)
        {
            string theFileName = Path.Combine(Server.MapPath("~/add-image"), Session["link"].ToString());
            if (File.Exists(theFileName))
            {
                File.Delete(theFileName);
            }
            upload.SaveAs(theFileName);
        }
    }

    public void bind()
    {
        try
        {
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;


            m.CommandText = "select page_name,page_position,cl_name,st_date,en_date,link,type,rank,website,width1,height1,path1  from add_sys   where id=" + Session["id"];

            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();

            page_name.SelectedValue = dr[0].ToString();
            page_position.SelectedValue = dr[1].ToString();
            Session["page_pos"] = dr[1].ToString();

            if (Session["page_pos"].ToString() == "TOP")
            {
                side_panel.Visible = false;
            }
            else
            {
                side_panel.Visible = true;
            }
            cl_name.Text = dr[2].ToString();
           
            stdate.SelectedDate = Convert.ToDateTime(dr[3].ToString());
            lbstdate.Text = stdate.SelectedDate.ToLongDateString();
            endate.SelectedDate = Convert.ToDateTime(dr[4].ToString());
            lbenddate.Text = endate.SelectedDate.ToLongDateString();

            Session["link"] = dr[5].ToString();
            Session["im_type"] = dr[6].ToString();
            side_pos.SelectedValue = dr[7].ToString();
            website.Text = dr[8].ToString();
            width.Text = dr[9].ToString();
            height.Text = dr[10].ToString();
            path1 = dr[11].ToString();
            dr.Close();
            c.Close();

            

        }
        catch (Exception ex)
        {
            ex.ToString();
        }
        finally
        {
            c.Close();
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


}
