using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;


public partial class test : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    PagedDataSource pds = new PagedDataSource();
    public string u;

    //int count;
   // protected System.Web.UI.WebControls.DataList DataList1;
   // protected System.Web.UI.WebControls.TextBox TextBox1;
    //protected System.Web.UI.WebControls.TextBox TextBox2;
    //protected System.Web.UI.WebControls.LinkButton LinkButton1;
    //protected System.Web.UI.WebControls.LinkButton LinkButton2;


    protected void Page_Load(object sender, EventArgs e)
    {
       /* c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;*/
       // u = "~/Images/image1.gif";
        if (!IsPostBack)
        {
            TextBox1.Text = "0";
            TextBox2.Text = "1";
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            //   string query = "";
            m.CommandText = "select count(id)   from placement";
            SqlDataReader dr;
            dr = m.ExecuteReader();
            dr.Read();
           Session["count"] = dr[0].ToString();
            dr.Close();
            c.Close();
            bind();
            LinkButton1.Visible = false;



        }
        
      
        
    }

    public string GetImage(bool allowed)
    {
        if (allowed)
            return "~/Images/image1.gif";
        else
            return "~/Images/image2.gif";
    }

    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
     //   string query = "";
        m.CommandText = "select ID,can_name,cname,sal,link    from placement";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();

        int index = int.Parse(TextBox1.Text);
        
        dap.Fill(ds, index, 16, "placement");



        DataList1.DataSource = ds.Tables["placement"].DefaultView;
      
        DataList1.DataBind();

        
        c.Close();

    }

    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        //
        InitializeComponent();
        base.OnInit(e);
    }
  
    private void InitializeComponent()
{ 
this.LinkButton1.Click += new System.EventHandler(this.LinkButton1_Click1);
this.LinkButton2.Click += new System.EventHandler(this.LinkButton2_Click1);
this.Load += new System.EventHandler(this.Page_Load);

}

   
    
   
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.Cells.Count > 2)
        {
            e.Row.Cells[0].Visible = false;
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[2].Visible = false;
            //e.Row.Cells[2].Text = "";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();

          /*<asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
             <asp:BoundField DataField="can_name" HeaderText="can_name" 
                 SortExpression="can_name" />
               
                 
             <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />*/
           

    }


    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        LinkButton2.Visible = true;
        int index = int.Parse(TextBox1.Text);
        index = index - 8;

        TextBox1.Text = index.ToString();
        if (Int32.Parse(TextBox1.Text) == 0)
        {
            LinkButton1.Visible = false;
        }
        bind();
        if (Int32.Parse(TextBox1.Text) == 0)
        {
            LinkButton1.Visible = false;
        }
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        LinkButton1.Visible = true;
        int index = int.Parse(TextBox1.Text);
        index = index + 8;
        TextBox1.Text = index.ToString();
        bind();
        if (Int32.Parse(TextBox1.Text) >= Int32.Parse(Session["count"].ToString())-16)
        {
            LinkButton2.Visible = false;
        }
    }
}
