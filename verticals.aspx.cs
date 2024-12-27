using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class verticals : System.Web.UI.Page 
{   
    public string Text_message;
    SqlConnection c = new SqlConnection();
    SqlCommand m = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
       
      /*
		
		if (!IsPostBack)
            {    
                c.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                c.Open();
                m.Connection = c;
                m.CommandText = "select  Subject  from  About_Us where ID=2";
                SqlDataReader dr2;
                dr2 = m.ExecuteReader();
                dr2.Read();

                Text_message = dr2[0].ToString();
                dr2.Close();

        
            }
       * */
    }
  
}
