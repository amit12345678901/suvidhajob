<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostResume1.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="PostResume1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu-v.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

ddsmoothmenu.init({
	mainmenuid: "smoothmenu2", //Menu DIV id
	orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
	//customtheme: ["#804000", "#482400"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Add Candidate</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_add_candidate.jpg" width="358" height="27" /><asp:ScriptManager 
                      ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
                                    </td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify">
   
    <table width="95%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td class="home_tx">User Name &nbsp;<font color="red">*</font></td>
         <td class="style5">
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
         
             
        
            
           
         
         
         <asp:TextBox ID="TextBox1" runat="server" 
            
             
            ontextchanged="TextBox1_TextChanged" AutoPostBack="True" 
                AutoCompleteType="Disabled"></asp:TextBox>
          <asp:Button ID="Check_User" runat="server" onclick="Check_User_Click" 
             
            Text="Check Availability" />        
          <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
          <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
           </ContentTemplate>
             </asp:UpdatePanel>
          </td>
		  
      </tr>
	  
      <tr>
        <td class="home_tx">Password</td>
        <td class="home_tx"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Confirm Password&nbsp;&nbsp;<font color="red">*</font></td>       
        <td class="style5">
            <asp:TextBox ID="TextBox70" runat="server" Width="128px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </td>
      </tr>
      <tr>
        <td class="home_tx">Name&nbsp;<font color="red">*</font></td>
        <td class="style5">
            <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td>Date of Birth</td>
		<td class="home_tx"><asp:DropDownList ID="DropDownList1" runat="server" >
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
          <asp:ListItem>6</asp:ListItem>
          <asp:ListItem>7</asp:ListItem>
          <asp:ListItem>8</asp:ListItem>
          <asp:ListItem>9</asp:ListItem>
          <asp:ListItem>10</asp:ListItem>
          <asp:ListItem>11</asp:ListItem>
          <asp:ListItem>12</asp:ListItem>
          <asp:ListItem>13</asp:ListItem>
          <asp:ListItem>14</asp:ListItem>
          <asp:ListItem>15</asp:ListItem>
          <asp:ListItem>16</asp:ListItem>
          <asp:ListItem>17</asp:ListItem>
          <asp:ListItem>18</asp:ListItem>
          <asp:ListItem>19</asp:ListItem>
          <asp:ListItem>20</asp:ListItem>
          <asp:ListItem>21</asp:ListItem>
          <asp:ListItem>22</asp:ListItem>
          <asp:ListItem>23</asp:ListItem>
          <asp:ListItem>24</asp:ListItem>
          <asp:ListItem>25</asp:ListItem>
          <asp:ListItem>26</asp:ListItem>
          <asp:ListItem>27</asp:ListItem>
          <asp:ListItem>28</asp:ListItem>
          <asp:ListItem>29</asp:ListItem>
          <asp:ListItem>30</asp:ListItem>
          <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" 
            
            
           >
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
          <asp:ListItem>6</asp:ListItem>
          <asp:ListItem>7</asp:ListItem>
          <asp:ListItem>8</asp:ListItem>
          <asp:ListItem>9</asp:ListItem>
          <asp:ListItem>10</asp:ListItem>
          <asp:ListItem>11</asp:ListItem>
          <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList><asp:DropDownList ID="DropDownList4" runat="server" 
            
            >
          <asp:ListItem Value="1945"></asp:ListItem>
          <asp:ListItem Value="1946"></asp:ListItem>
          <asp:ListItem Value="1947"></asp:ListItem>
          <asp:ListItem Value="1948"></asp:ListItem>
          <asp:ListItem Value="1949"></asp:ListItem>
          <asp:ListItem Value="1959"></asp:ListItem>
          <asp:ListItem Value="1951"></asp:ListItem>
          <asp:ListItem Value="1952"></asp:ListItem>
          <asp:ListItem Value="1953"></asp:ListItem>
          <asp:ListItem Value="1954"></asp:ListItem>
          <asp:ListItem Value="1955"></asp:ListItem>
          <asp:ListItem Value="1956"></asp:ListItem>
          <asp:ListItem Value="1957"></asp:ListItem>
          <asp:ListItem Value="1958"></asp:ListItem>
          <asp:ListItem Value="1959"></asp:ListItem>
          <asp:ListItem Value="1960"></asp:ListItem>
          <asp:ListItem Value="1961"></asp:ListItem>
          <asp:ListItem Value="1962"></asp:ListItem>
          <asp:ListItem Value="1963"></asp:ListItem>
          <asp:ListItem Value="1964"></asp:ListItem>
          <asp:ListItem Value="1965"></asp:ListItem>
          <asp:ListItem Value="1966"></asp:ListItem>
          <asp:ListItem Value="1967"></asp:ListItem>
          <asp:ListItem Value="1968"></asp:ListItem>
          <asp:ListItem Value="1969"></asp:ListItem>
          <asp:ListItem Value="1970"></asp:ListItem>
          <asp:ListItem Value="1971"></asp:ListItem>
          <asp:ListItem Value="1972"></asp:ListItem>
          <asp:ListItem Value="1973"></asp:ListItem>
          <asp:ListItem Value="1974"></asp:ListItem>
          <asp:ListItem Value="1975"></asp:ListItem>
          <asp:ListItem Value="1976"></asp:ListItem>
          <asp:ListItem Value="1977"></asp:ListItem>
          <asp:ListItem Value="1978"></asp:ListItem>
          <asp:ListItem Value="1979"></asp:ListItem>
          <asp:ListItem Value="1980"></asp:ListItem>
          <asp:ListItem Value="1981"></asp:ListItem>
          <asp:ListItem Value="1982"></asp:ListItem>
          <asp:ListItem Value="1983"></asp:ListItem>
          <asp:ListItem Value="1984"></asp:ListItem>
          <asp:ListItem Value="1985"></asp:ListItem>
          <asp:ListItem Value="1986"></asp:ListItem>
          <asp:ListItem Value="1987"></asp:ListItem>
          <asp:ListItem Value="1988"></asp:ListItem>
          <asp:ListItem Value="1989"></asp:ListItem>
          <asp:ListItem Value="1990"></asp:ListItem>
          <asp:ListItem Value="1991"></asp:ListItem>
          <asp:ListItem Value="1992"></asp:ListItem>
          <asp:ListItem Value="1993"></asp:ListItem>
          <asp:ListItem Value="1994"></asp:ListItem>
          <asp:ListItem Value="1995"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Sex&nbsp;<font color="red">*</font></td>
        <td class="style5"><asp:DropDownList ID="DropDownList3" runat="server" 
            >
          <asp:ListItem Value="Male">Male</asp:ListItem>
          <asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Maritial Status&nbsp;<font color="red">*</font></td>
        <td class="style5"><asp:DropDownList ID="DropDownList10" runat="server" 
            >
          <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="Never Married"></asp:ListItem>
          <asp:ListItem Value="Married"></asp:ListItem>
          <asp:ListItem Value="Widowed"></asp:ListItem>
          <asp:ListItem Value="Divorced"></asp:ListItem>
          <asp:ListItem Value="Separates"></asp:ListItem>
          <asp:ListItem Value="Others"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Email &nbsp;<font color="red">*</font></td>
        
        <td class="style5">
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                 <ContentTemplate>
        <asp:TextBox ID="TextBox8" runat="server" 
            
            
            
            ></asp:TextBox>
          <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            
            Text="Check_Email" />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox8" ErrorMessage="not a valid email id" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </ContentTemplate>
             </asp:UpdatePanel>
          </td>
      </tr>
      <tr>
        <td height="28" class="home_tx">Address</td>
			<td><asp:TextBox ID="TextBox10" runat="server" 
            
           
            TextMode="MultiLine"></asp:TextBox></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Current Location&nbsp;<font color="red">*</font></td>
        <td class="style5"><asp:ListBox ID="ListBox1" runat="server" DataSourceID="AccessDataSource1" 
            DataTextField="city_name" DataValueField="city_name" 
            > </asp:ListBox></td>
      </tr>
      <tr>
        <td class="home_tx">Country&nbsp; &nbsp;<font color="red">*</font></td>
       
        <td class="style5">
            <asp:TextBox ID="TextBox14" runat="server" AutoCompleteType="Disabled" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><span class="style5">Mobile Number </span></td>
        <td class="style5">
            <asp:TextBox ID="TextBox12" runat="server" AutoCompleteType="Disabled" 
            
            ></asp:TextBox>&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="TextBox12" ErrorMessage="Mobile number must be number" 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator> </td>
      </tr>
      <tr>
        <td class="home_tx"><span class="style5">Landline Number </span></td>
      <td class="style5">
          <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled" 
            
            ></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox11" 
            ErrorMessage="Landline must be Number" Operator="DataTypeCheck" 
             
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"></td>
		
      </tr>
      <tr>
        <td class="home_tx">Academic Qualification &nbsp;<font color="red">*</font></td>
			<td><asp:DropDownList ID="DropDownList6" runat="server" 
            DataSourceID="AccessDataSource3" DataTextField="A_Qualification" 
            DataValueField="A_Qualification" 
            
            > </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">if other</td>
      
      <td class="style5">
          <asp:TextBox ID="TextBox34" runat="server" AutoCompleteType="Disabled" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Professional Qualification</td>
			<td><asp:DropDownList ID="DropDownList7" runat="server" 
            DataSourceID="AccessDataSource4" DataTextField="Professional_Qualification" 
            DataValueField="Professional_Qualification" 
            
            > </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">If other</td>
     
      <td class="style5">
          <asp:TextBox ID="TextBox22" runat="server" AutoCompleteType="Disabled" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td height="11" ><span class="home_tx">Institute</span></td>
      <td height="11" ><span class="style5">
        <asp:TextBox ID="TextBox46" runat="server" AutoCompleteType="Disabled" 
        
       ></asp:TextBox>
      </span></td>
      </tr>
      <tr>
        <td height="12" ><span class="home_tx">Year of Graduation
      </span></td>
	  <td><span class="style5">
        <asp:DropDownList ID="DropDownList5" runat="server" 
            DataSourceID="AccessDataSource2" DataTextField="year" DataValueField="year" 
            > </asp:DropDownList></td>
      </tr>
      <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" ></td>
      </tr>
      <tr>
        <td height="12" ><span class="home_tx">Resume Title &nbsp;<font color="red">*</font></td></span></td>
      
      <td height="12" ><span class="style5">
        <asp:TextBox ID="TextBox23" runat="server" AutoCompleteType="Disabled" 
            ></asp:TextBox>
      </span></td>
      </tr>
      <tr>
        <td height="25" ><span class="home_tx">Key Skills &nbsp;<font color="red">*</font></td></span></td>
      <td height="25" ><span class="style5">
        <asp:TextBox ID="TextBox19" runat="server" AutoCompleteType="Disabled" 
            
            
            ></asp:TextBox>
      </span></td>
      </tr>
      <tr>
        <td height="25" ><span class="home_tx">Experience</span> </td>
	  <td><span class="style5">
	    <asp:DropDownList ID="DropDownList11" runat="server" 
            
            >
          <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
        </asp:DropDownList>
	  </span></td>
      </tr>
      <tr>
        <td class="home_tx">Industry</td>
        <td class="style5"><asp:DropDownList ID="DropDownList8" runat="server" 
            DataSourceID="AccessDataSource5" DataTextField="ind_name" 
            DataValueField="ind_name" 
            > </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area </td>
        <td class="style5">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
         
             
        
            <asp:DropDownList ID="DropDownList15" runat="server" 
                datasourceid="AccessDataSource8" DataTextField="fun_name" 
            DataValueField="fun_name" AutoPostBack="True" 
                onselectedindexchanged="DropDownList15_SelectedIndexChanged" >
                     </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel>
          </td>
      </tr>
      <tr>
        <td class="home_tx"><span id="span_ugopen">If &quot;Other&quot;</span></td>
        <td class="style5"><asp:TextBox ID="TextBox18" runat="server" 
            
             ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><span id="span_ugopen0">Sub functional Area</span></td>
        <td class="style5"><asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate>
        <asp:DropDownList ID="DropDownList9" runat="server" 
            
            > </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel></td>
      </tr>
      <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"></td>
        </tr>
      <tr>
        <td class="home_tx">Current Employer</td>
        <td class="style5"><asp:TextBox ID="TextBox24" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current Designation</td>
        <td class="style5"><asp:TextBox ID="TextBox25" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current Employment Period 
            from</td>
        <td class="style5"><asp:TextBox ID="TextBox26" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current Employment Period to</td>
        <td class="style5"><asp:TextBox ID="TextBox27" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td class="style5"><asp:TextBox ID="TextBox29" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employer 1</td>
        <td class="style5"><asp:TextBox ID="TextBox28" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Designation 1</td>
        <td class="style5"><asp:TextBox ID="TextBox30" runat="server" ontextchanged="TextBox30_TextChanged" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 1 Period from</td>
        <td class="style5"><asp:TextBox ID="TextBox31" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 1 Period to </td>
        <td class="style5"><asp:TextBox ID="TextBox32" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last Job Responsibility 1</td>
        <td class="style5"><asp:TextBox ID="TextBox35" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employer 2</td>
        <td class="style5"><asp:TextBox ID="TextBox36" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Designation 2</td>
        <td class="style5"><asp:TextBox ID="TextBox39" runat="server" 
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 2 Period from</td>
        <td class="style5"><asp:TextBox ID="TextBox37" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 2 Period to </td>
        <td class="style5"><asp:TextBox ID="TextBox38" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last Job Responsibility 2</td>
        <td class="style5"><asp:TextBox ID="TextBox40" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employer 3</td>
        <td class="style5"><asp:TextBox ID="TextBox41" runat="server" 
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Designation 3</td>
        <td class="style5"><asp:TextBox ID="TextBox44" runat="server" 
        
       ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 3 Period from</td>
        <td class="style5"><asp:TextBox ID="TextBox42" runat="server" 
        
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employment 3 Period to</td>
        <td class="style5"><asp:TextBox ID="TextBox43" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last Jobs Responsibility 3</td>
        <td class="style5"><asp:TextBox ID="TextBox45" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr bgcolor="#EAEAEA">
        <td colspan="2" class="home_tx">&nbsp;</td>
        </tr>
      <tr>
        <td class="home_tx">Current CTC</td>
        <td class="style5"><asp:DropDownList ID="DropDownList12" runat="server" 
            DataSourceID="AccessDataSource6" DataTextField="ctc" DataValueField="ctc" 
            > </asp:DropDownList> 
          <span class="home_tx">Lakhs</span></td>
      </tr>
      <tr>
        <td class="home_tx">Summery</td>
        <td class="style5"><asp:TextBox ID="TextBox48" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Language</td>
      <td class="home_tx"><div align="left"><asp:TextBox ID="TextBox51" runat="server" 
            
            
            ></asp:TextBox>
        
        <asp:CheckBox ID="CheckBox1" runat="server" 
             
            Text="Read" />        
        <asp:CheckBox ID="CheckBox2" runat="server" 
             
            Text="Write" />        
        <asp:CheckBox ID="CheckBox3" runat="server" 
            
            Text="Speak" /></div>
        <br />        
        <asp:TextBox ID="TextBox52" runat="server" 
            
            
            ></asp:TextBox>
        <asp:CheckBox ID="CheckBox4" runat="server" 
             
            Text="Read" />        
        <asp:CheckBox ID="CheckBox5" runat="server" 
          
            Text="Write" />        
        <asp:CheckBox ID="CheckBox6" runat="server" 
            
            Text="Speak" />        
        <br />
        <br />
        <asp:TextBox ID="TextBox62" runat="server" 
            
            
            ></asp:TextBox>
        <asp:CheckBox ID="CheckBox7" runat="server" 
           
            Text="Read" />        
        <asp:CheckBox ID="CheckBox8" runat="server" 
            
            Text="Write" />        
        <asp:CheckBox ID="CheckBox9" runat="server" 
            
            Text="Speak" />        </td>
      </tr>
      <tr>
        <td class="home_tx">Job Type</td>
        <td class="style5"><asp:DropDownList ID="DropDownList13" runat="server" 
            >
          <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="Permanent"></asp:ListItem>
          <asp:ListItem Value="Temporary/Contractual"></asp:ListItem>
          <asp:ListItem Value="Either"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Employment Status</td>
        <td class="style5"><asp:DropDownList ID="DropDownList14" runat="server" 
            >
          <asp:ListItem>Full Time</asp:ListItem>
          <asp:ListItem Value="Part Time"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"></td>
      </tr>
      <tr>
        <td class="home_tx" >Preferred location</td>
        <td ><span class="style5">
          <asp:TextBox ID="TextBox13" runat="server" 
            
            
            ></asp:TextBox>
        </span>
            </td>
      </tr>
      <tr>
        <td class="home_tx">Referance Name</td>
        <td class="style5"><asp:TextBox ID="TextBox63" runat="server" 
        
        
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Refrence Company</td>
        <td class="style5"><asp:TextBox ID="TextBox64" runat="server" 
        
        
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Refrence Designation</td>
        <td class="style5"><asp:TextBox ID="TextBox65" runat="server" 
        
        
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx" >Relationship with referrer</td>
        <td ><asp:TextBox ID="TextBox66" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx" >Reference Phone</td>
        <td class="style5"><asp:TextBox ID="TextBox68" runat="server" 
            
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Reference Email</td>
        <td class="style5"><asp:TextBox ID="TextBox69" runat="server" 
            
            
            ></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox69" ErrorMessage="Please enter valid email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
      </tr>
      
      <tr>
        <td colspan="2">  <div align="center">
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click"            
            Text="Submit" />           
      
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div></td>
        </tr>
    </table>
  
      
  
       <asp:SqlDataSource ID="AccessDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
        </asp:SqlDataSource>  	
		
         <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [year] FROM [year_master]">
        </asp:SqlDataSource>          
    
       <asp:SqlDataSource ID="AccessDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
        </asp:SqlDataSource>
		
        <asp:SqlDataSource ID="AccessDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
        </asp:SqlDataSource> 
   
        <asp:SqlDataSource ID="AccessDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [ctc] FROM [ctc_master]">
        </asp:SqlDataSource>        
   <asp:SqlDataSource ID="AccessDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
        </asp:SqlDataSource> 
                 
                </div></td>
              </tr>
            </table>                    
  </asp:Content>