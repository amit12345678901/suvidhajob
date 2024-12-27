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
using System.Data.OleDb;
using System.Data.SqlClient;

using System.IO;
using System.Text.RegularExpressions;

public partial class Bulk_update : System.Web.UI.Page
{

    General g1 = new General();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    string fileName,link;
    int id, total = 0, suc = 0, failure = 0, dup = 0;
    int rows = 0, maxid = 0;
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
                pnstat.Visible = false;
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

    protected void cat_SelectedIndexChanged(object sender, EventArgs e)
    {

        subgroup.Items.Clear();
        subgroup.Items.Add("--Select Sub Group Name--");
        string subid = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue + "'");
        g1.populate_combo("select SubCate from SubCateMast where CateID=" + subid, subgroup);


    }

  

    protected void UploadThisFile(FileUpload upload)
    {


        if (upload.HasFile)
        {
            string theFileName = Path.Combine(Server.MapPath("~/excel"), fileName);
            if (File.Exists(theFileName))
            {
                File.Delete(theFileName);
            }
            upload.SaveAs(theFileName);
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {

        if (cat.SelectedValue.ToString() != "--Select Group Name--" && subgroup.SelectedValue.ToString() != "--Select Sub Group Name--" && fileuploadExcel.PostedFile.FileName.ToString() != "")
        {

            fileName = fileuploadExcel.PostedFile.FileName;
            UploadThisFile(fileuploadExcel);
            int count = 0;


            try
            {

                DataTable dtExcel = new DataTable();
                string SourceConstr = @"Provider=microsoft.jet.oledb.4.0;Data Source='" + Server.MapPath("~/excel/" + fileName) + "';Extended Properties= 'Excel 4.0;HDR=Yes;IMEX=1'";
                OleDbConnection con = new OleDbConnection(SourceConstr);
                string query = "Select * from [Sheet1$]";
                OleDbDataAdapter data = new OleDbDataAdapter(query, con);
                data.Fill(dtExcel);
                con.Close();

                if (dtExcel.Rows.Count > 0)
                {
                    total = dtExcel.Rows.Count;
                    string catid1 = g1.reterive_val("select SlNo from ProdCateMast where ProdCate='" + cat.SelectedValue + "'");
                    string subcatid1 = g1.reterive_val("select SlNo from SubCateMast where SubCate='" + subgroup.SelectedValue + "' and CateID=" + catid1);
                    maxid = g1.generate_max_id_reg("select  max(SlNo)  from  ProdMast");
                    bool bl = true;
                    int qun = 1, expdl = 0, newar = 0;
                    string defltweight = "100";
                    for (int i = 0; i < dtExcel.Rows.Count; i++)
                    {
                        try
                        {
                            if (Convert.ToString(dtExcel.Rows[i]["Product_Name"]) != null && Convert.ToString(dtExcel.Rows[i]["Product_Code"]) != null && Convert.ToString(dtExcel.Rows[i]["MRP"]) != null)
                            {
                                link = Convert.ToString(dtExcel.Rows[i]["Product_Code"]) + ".jpg";

                                if (Convert.ToString(dtExcel.Rows[i]["Quantity"]) != null)
                                {
                                    qun = Int32.Parse(Convert.ToString(dtExcel.Rows[i]["Quantity"]));
                                }
                                else
                                {
                                    qun = 1;
                                }
                                if (Convert.ToString(dtExcel.Rows[i]["Express_Delivary"]) != null)
                                {
                                    expdl = 1;
                                }
                                else
                                {
                                    expdl = 0;
                                }
                                if (Convert.ToString(dtExcel.Rows[i]["New_Arrival"]) != null)
                                {
                                    newar = 1;
                                }
                                else
                                {
                                    newar = 0;
                                }

                                if (Convert.ToString(dtExcel.Rows[i]["Weight"]) != null)
                                {
                                    defltweight = Convert.ToString(dtExcel.Rows[i]["Weight"]);
                                }
                                else
                                {
                                    defltweight = "100";
                                }
                              //  Convert.ToString(dtExcel.Rows[i]["Product_Code"])
                                dt2 = g1.return_dt("select * from ProdMast where prodcode1='" + Convert.ToString(dtExcel.Rows[i]["Product_Code"]) + "'");

                                if (dt2.Rows.Count == 0)
                                {
                                    rows = g1.ExecDB("insert into ProdMast  values(" + maxid + "," + Int32.Parse(catid1) + ",'" + Convert.ToString(dtExcel.Rows[i]["Product_Name"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Short_Description"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Full_Description"]).Trim().Replace("'", "''") + "'," + Int32.Parse(subcatid1) + "," + Int32.Parse(Convert.ToString(dtExcel.Rows[i]["MRP"])) + ",'" + link + "'," + qun + ",'" + Convert.ToString(dtExcel.Rows[i]["Color"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Fabric"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Work"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Type"]).Trim().Replace("'", "''") + "','" + defltweight + "','" + Convert.ToString(dtExcel.Rows[i]["Diemention"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Length"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Title_Page"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Delivary_Time"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Tags"]).Trim().Replace("'", "''") + "'," + expdl + "," + newar + ",'" + Convert.ToString(dtExcel.Rows[i]["Product_Code"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["vender_code"]).Trim().Replace("'", "''") + "','" + Convert.ToString(dtExcel.Rows[i]["Blouse_Details"]).Trim().Replace("'", "''") + "')");
                                    suc += 1;
                                    maxid += 1;
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            continue;
                        }
                    }

                    pnstat.Visible = true;
                    failure = total - suc;

                    total1.Text = total.ToString();
                    success1.Text = suc.ToString();
                    failure1.Text = failure.ToString() + "  (Failure might be for - Product code are duplicate or product name, product code, MRP fields value are blank.....";

                }


                if (File.Exists(Server.MapPath(Request.ApplicationPath) + "\\excel\\" + fileName))
                {


                    System.IO.File.Delete(Server.MapPath(Request.ApplicationPath) + "\\excel\\" + fileName);


                }
            }
            catch (Exception ex)
            {
                // throw ex;

                Response.Write(ex.ToString());
            }
           
        }
        else
        {
            ClientScript.RegisterStartupScript(typeof(Page), "AlertMessage", "<script>alert('please select group name,subgroup name and excel file.');</script>");
        }
    }

}

