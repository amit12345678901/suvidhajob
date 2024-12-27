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

public partial class Addsys_add : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    int id, id7;
    string link;

    public string path1="";
 
   


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
                stdate.SelectedDate = System.DateTime.Now.Date;
                lbstdate.Text = stdate.SelectedDate.ToLongDateString();
                endate.SelectedDate = System.DateTime.Now.Date.AddDays(365);
                lbenddate.Text = endate.SelectedDate.ToLongDateString();

                if (Session["login"] == null)
                {
                    Response.Redirect("Default.aspx");

                }

            }
        }
    }


    protected void stdate_SelectionChanged(object sender, EventArgs e)
    {

       
        lbstdate.Text = stdate.SelectedDate.ToLongDateString();
        stdate.Visible = false;

    }
    protected void endate_SelectionChanged(object sender, EventArgs e)
    {
        
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


      protected void Add_Click(object sender, EventArgs e)

    {

        string pictype = "Image";

        if (cl_name.Text != "" && page_position.SelectedValue.ToString() != "Select"  && FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "" && height.Text != "" && width.Text != "")
        {
            string strExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

            if (stdate.SelectedDate < endate.SelectedDate)
            {
                 switch (strExtension.ToLower())
                {
                    case ".jpg":
                    case ".gif":
                    case ".jpeg":
                    case ".swf":

                try
                {

                    c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                    c.Open();
                    m.Connection = c;
                    SqlDataReader dr, dr1, dr2, dr5;
                    if (page_position.SelectedValue.ToString() == "TOP")
                    {
                        m.CommandText = "select  id  from  add_sys where page_name='" + page_name.SelectedValue.ToString() + "' and page_position='TOP' ";

                        dr2 = m.ExecuteReader();
                        if (dr2.Read())
                        {

                            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('This position of ad already exists. please first delete it.');</script>");

                            dr2.Close();
                        }
                        else
                        {
                            dr2.Close();

                            m.CommandText = "select  count(id)  from  add_sys";

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

                                m.CommandText = "select  max(id)  from  add_sys";

                                dr1 = m.ExecuteReader();
                                dr1.Read();
                                id = Int32.Parse(dr1[0].ToString());
                                id = id + 1;
                                dr1.Close();

                            }

                            link = id + "_" + strExtension;

                            if (strExtension == ".swf")
                            {
                                //222, 281
                                pictype = "Flash";
                                path1 = "<object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 width=" + width.Text + "  height=" + height.Text + "><param name=movie value=../add-image/" + link + "/><param name=quality value=high /><embed src=../add-image/" + link + " quality=high pluginspage=http://www.macromedia.com/go/getflashplayer type=application/x-shockwave-flash width=" + width.Text + " height=" + height.Text + "></embed></object>";

                            }
                            else
                            {
                                if (website.Text == "")
                                {
                                    path1 = "<img src=../add-image/" + link + " width=" + width.Text + " height=" + height.Text + " border=1 />";

                                }
                                else
                                {
                                    path1 = "<a href=http://www." + website.Text + "  target=_blank><img src=../add-image/" + link + " width=" + width.Text + " height=" + height.Text + " border=1 /></a>";


                                }

                            }






                            m.CommandText = "insert into add_sys values(@id,@page_name,@page_position,@cl_name,@st_date,@en_date,@link,@path,@rank,@website,@type,@width1,@height1)";

                            // @id,@name,@address,@maincity,@phone,@email,@fax,@website,@ch_no,@des,@b_city,@st_date,@en_date

                            m.Parameters.AddWithValue("@id", id);
                            m.Parameters.AddWithValue("@page_name", Int32.Parse(page_name.SelectedValue.ToString()));
                            m.Parameters.AddWithValue("@page_position", page_position.SelectedValue);
                            m.Parameters.AddWithValue("@cl_name", cl_name.Text.ToString().Trim().Replace("'", "''"));

                            m.Parameters.AddWithValue("@st_date", stdate.SelectedDate.ToShortDateString());
                            m.Parameters.AddWithValue("@en_date", endate.SelectedDate.ToShortDateString());
                            m.Parameters.AddWithValue("@link", link);

                            m.Parameters.AddWithValue("@path", path1);

                            int xxx = 1;

                            m.Parameters.AddWithValue("@rank", xxx);
                            
                            m.Parameters.AddWithValue("@website", website.Text.ToString().Trim().Replace("'", "''"));
                            m.Parameters.AddWithValue("@type", pictype);
                            m.Parameters.AddWithValue("@width1", width.Text);
                            m.Parameters.AddWithValue("@height1", height.Text);
                            m.ExecuteNonQuery();


                            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Add Successfully.');</script>");
                            cl_name.Text = "";

                        }


                    }
                    else
                    {
                        m.CommandText = "select  count(id)  from  add_sys";

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

                            m.CommandText = "select  max(id)  from  add_sys";

                            dr1 = m.ExecuteReader();
                            dr1.Read();
                            id = Int32.Parse(dr1[0].ToString());
                            id = id + 1;
                            dr1.Close();

                        }

                        m.CommandText = "select  count(id)  from  add_sys where page_name='" + page_name.SelectedValue.ToString() + "' and page_position='" + page_position.Text + "'";

                        dr5 = m.ExecuteReader();
                        dr5.Read();
                        if (Int32.Parse(dr5[0].ToString()) == 0)
                        {
                            id7 = 1;
                            dr5.Close();
                        }
                        else
                        {

                            id7 = Int32.Parse(dr5[0].ToString()) + 1;

                            dr5.Close();



                        }


                        link = id + "_" + strExtension;

                        if (strExtension == ".swf")
                        {
                            //222, 281
                            pictype = "Flash";
                            path1 = "<object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 width=" + width.Text + "  height=" + height.Text + "><param name=movie value=../add-image/" + link + "/><param name=quality value=high /><embed src=../add-image/" + link + " quality=high pluginspage=http://www.macromedia.com/go/getflashplayer type=application/x-shockwave-flash width=" + width.Text + " height=" + height.Text + "></embed></object>";

                        }
                        else
                        {
                            if (website.Text == "")
                            {
                                path1 = "<img src=../add-image/" + link + " width=" + width.Text + " height=" + height.Text + " border=1 />";

                            }
                            else
                            {
                                path1 = "<a href=http://www." + website.Text + "  target=_blank><img src=../add-image/" + link + " width=" + width.Text + " height=" + height.Text + " border=1 /></a>";


                            }
                        }






                        m.CommandText = "insert into add_sys values(@id,@page_name,@page_position,@cl_name,@st_date,@en_date,@link,@path,@rank,@website,@type,@width1,@height1)";

                        // @id,@name,@address,@maincity,@phone,@email,@fax,@website,@ch_no,@des,@b_city,@st_date,@en_date

                        m.Parameters.AddWithValue("@id", id);
                        m.Parameters.AddWithValue("@page_name", Int32.Parse(page_name.SelectedValue.ToString()));
                        m.Parameters.AddWithValue("@page_position", page_position.Text);
                        m.Parameters.AddWithValue("@cl_name", cl_name.Text.ToString().Trim().Replace("'", "''"));

                        m.Parameters.AddWithValue("@st_date", stdate.SelectedDate.ToShortDateString());
                        m.Parameters.AddWithValue("@en_date", endate.SelectedDate.ToShortDateString());
                        m.Parameters.AddWithValue("@link", link);

                        m.Parameters.AddWithValue("@path", path1);
                        m.Parameters.AddWithValue("@rank", id7);
                        
                        m.Parameters.AddWithValue("@website", website.Text.ToString().Trim().Replace("'", "''"));

                        m.Parameters.AddWithValue("@type", pictype);
                        m.Parameters.AddWithValue("@width1", width.Text);
                        m.Parameters.AddWithValue("@height1", height.Text);
                        m.ExecuteNonQuery();

                        UploadThisFile(FileUpload1);
                        ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('Add Successfully.');</script>");
                        cl_name.Text = "";
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
        else
        {

            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('All fields are not fillup  properly.');</script>");

        }
    }

      protected void UploadThisFile(FileUpload upload)
      {


          if (upload.HasFile)
          {
              string theFileName = Path.Combine(Server.MapPath("~/add-image"), link);
              if (File.Exists(theFileName))
              {
                  File.Delete(theFileName);
              }
              upload.SaveAs(theFileName);
          }
      }


      protected void page_name_SelectedIndexChanged(object sender, EventArgs e)
      {
          c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
          c.Open();
          m.Connection = c;

          m.CommandText = "select page_position from add_page where page_name='" + page_name.Text + "'";
          SqlDataAdapter dap = new SqlDataAdapter(m);
          DataSet ds = new DataSet();
          dap.Fill(ds, "add_page");
          page_position.DataSource = ds.Tables["add_page"];
          page_position.DataTextField = "page_position";
          page_position.DataValueField = "page_position";
          page_position.DataBind();
          c.Close();

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
