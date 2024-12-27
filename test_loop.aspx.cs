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

public partial class placement_test_loop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x=20,y=40,z,a,m,n;


m=x;
n=y;
for(;x!=y;)
{
if(x>y)
 x=x-y;

 if(y>x)
 y=y-x;
 }
 z=m*n/x ;

 Response.Write(x);
//printf("The LCM=%d\n",z) ;
//printf("The GCF=%d\n",x) ;

    }
}
