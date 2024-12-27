using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class our_client : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    PagedDataSource pds = new PagedDataSource();
    public string u;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBox1.Text = "0";
            TextBox2.Text = "1";
            c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            c.Open();
            m.Connection = c;
            //   string query = "";
            m.CommandText = "select count(*)   from client";
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
    public void bind()
    {
        c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
        c.Open();
        m.Connection = c;
        //   string query = "";
        m.CommandText = "select cname  from client";
        SqlDataAdapter dap = new SqlDataAdapter(m);
        DataSet ds = new DataSet();

        int index = int.Parse(TextBox1.Text);

        dap.Fill(ds, index, 60, "client");



        DataList1.DataSource = ds.Tables["client"].DefaultView;

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

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        LinkButton2.Visible = true;
        int index = int.Parse(TextBox1.Text);
        index = index - 60;

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
        index = index + 60;
        TextBox1.Text = index.ToString();
        bind();
        if (Int32.Parse(TextBox1.Text) >= Int32.Parse(Session["count"].ToString()) - 60)
        {
            LinkButton2.Visible = false;
        }
    }
}
