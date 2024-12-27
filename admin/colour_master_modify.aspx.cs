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


public partial class colour_master_modify : System.Web.UI.Page
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

      
        dt = g1.return_dt("select colour_name,link from  colour_master where    id=" + Session["col_id"]);
        if (dt.Rows.Count > 0)
        {
            name.Text = dt.Rows[0]["colour_name"].ToString();
            Session["link"] = dt.Rows[0]["link"].ToString();
            Image1.ImageUrl = "~\\colour_picture\\" + dt.Rows[0]["link"].ToString();
        }
    }


    protected void update_Click(object sender, EventArgs e)
    {

        if (name.Text != "" && FileUpload1.PostedFile.FileName.ToString() != "")
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
                          
                          rows = g1.ExecDB("update  colour_master set colour_name='" + name.Text + "'  where    id=" + Session["col_id"]); 

                            System.Drawing.Image imageToBeResized = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                            int imageHeight = imageToBeResized.Height;
                            int imageWidth = imageToBeResized.Width;
                            int maxHeight = 100;
                            int maxWidth = 100;
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

                            bitmap.Save(Server.MapPath(Request.ApplicationPath) + "\\colour_picture\\" + Session["link"], System.Drawing.Imaging.ImageFormat.Jpeg);
                            Image1.ImageUrl = "~\\colour_picture\\" + Session["link"];
                            if (rows > 0)
                            {
                                Label1.Text = "successfully  update.";
                                Response.Redirect("colour_master_update.aspx");
                            }
                        }
                        catch (Exception ex)
                        {
                            ex.ToString();
                        }
                       

                        break;
                    default:
                        Label1.Text = "sorry,this type of picture are not excepted.";
                        return;

                }
            }
        }

        if (name.Text != "" && FileUpload1.PostedFile.FileName.ToString() == "")
        {
            rows = g1.ExecDB("update  colour_master set colour_name='" + name.Text + "'  where    id=" + Session["col_id"]);

            if (rows > 0)
            {
                Label1.Text = "successfully  update.";
                Response.Redirect("colour_master_update.aspx");
            }

            
        }
        if (name.Text == "" && FileUpload1.PostedFile.FileName.ToString() == "")
        {
            Label1.Text = "please enter some criteria.";
        }


    }
}
