<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifie_Vacancy.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Modifie_Vacancy" %>

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
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Edit Vacancy</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_edit_vacancy.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify">  
    <p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
    <table width="80%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="51%" class="home_tx">Customer Id</td>
        <td width="49%"><asp:TextBox ID="cid" runat="server" ReadOnly="true" 
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Company Name <font color="red">*</font></td>
        <td><asp:TextBox ID="cname" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Company Profile<font color="red">*</font></td>
        <td><asp:TextBox ID="cprofile" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Contact Person<font color="red">*</font></td>
        <td><asp:TextBox ID="cp" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Designation<font color="red">*</font></td>
        <td><asp:TextBox ID="des" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Address</td>
        <td><asp:TextBox ID="add" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">City</td>
        <td><asp:ListBox ID="ListBox1" runat="server" 
            datasourceid="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name" Visible="False"> </asp:ListBox>
          <asp:TextBox ID="TextBox1" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Country</td>
        <td><asp:TextBox ID="country" runat="server" 
            
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Phone<font color="red">*</font></td>
        <td><asp:TextBox ID="phone" runat="server" 
            
            
            ></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td class="home_tx">Fax</td>
        <td><asp:TextBox ID="fax" runat="server" 
            
            ></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="fax" ErrorMessage="FAX IT MUST IN NUMBER" 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Email<font color="red">*</font></td>
        <td><asp:TextBox ID="email" runat="server" 
            
            ></asp:TextBox>
         </td>
      </tr>
      <tr>
        <td class="home_tx">Industry<font color="red">*</font></td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" 
            
             
            datasourceid="AccessDataSource1" DataTextField="ind_name" 
            DataValueField="ind_name"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area<font color="red">*</font></td>
        <td><asp:TextBox ID="fa" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Sub-Functional Area</td>
        <td><asp:TextBox ID="sfa" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Position<font color="red">*</font></td>
        <td><asp:TextBox ID="jp" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Keywords</td>
        <td><asp:TextBox ID="keyword" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Reporting to</td>
        <td><asp:TextBox ID="rep" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Candidate Profile</td>
        <td><asp:TextBox ID="cprofile1" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><asp:TextBox ID="jobr" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Number of Vacancy</td>
        <td><asp:TextBox ID="vacancy" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Gender</td>
        <td><asp:DropDownList ID="DropDownList2" runat="server" 
           >
          <asp:ListItem>male</asp:ListItem>
          <asp:ListItem>female</asp:ListItem>
          <asp:ListItem>both</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Minium Experience<font color="red">*</font></td>
        <td><asp:TextBox ID="minexp" runat="server" 
            
           ></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToValidate="minexp" ErrorMessage="MUST BE IN NUMBER." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Maximum Expirence<font color="red">*</font></td>
        <td><asp:TextBox ID="maxexp" runat="server" 
            
            ></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator4" runat="server" 
            ControlToValidate="maxexp" ErrorMessage="MUST BE NUMBER FIELD." 
            Operator="DataTypeCheck" 
             
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Job Type</td>
        <td><asp:DropDownList ID="DropDownList3" runat="server" 
            
            >
          <asp:ListItem>PERMANENT</asp:ListItem>
          <asp:ListItem>TEMPORERY</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Academic Qualification<font color="red">*</font></td>
        <td><asp:TextBox ID="aqr" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Professional Qualification<font color="red">*</font></td>
        <td><asp:TextBox ID="pqr" runat="server" 
            
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Age Between</td>
        <td><asp:TextBox ID="ab" runat="server" 
            
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Salary Specification  (Per Annum) <font color="red">*</font></td>
        <td><asp:TextBox ID="salary" runat="server" 
            
            ></asp:TextBox>  <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="tat" ErrorMessage="MUST BE IN NUMBER." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx"><font style="FONT: 8pt/13pt verdana; COLOR: black">Turn Around Time</font></td>
        <td><asp:TextBox ID="tat" runat="server" 
           ></asp:TextBox>(Lakh)
          <asp:CompareValidator ID="CompareValidator5" runat="server" 
            ControlToValidate="tat" ErrorMessage="MUST BE IN NUMBER." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Location<font color="red">*</font></td>
        <td><asp:TextBox ID="location" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Code</td>
        <td><asp:TextBox ID="jobcode" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Posting Date</td>
        <td><asp:Label ID="post_date" runat="server"></asp:Label> 
           </td>
      </tr>
     
     
      <tr>
        <td class="home_tx">Hide</td>
        <td><asp:CheckBox ID="CheckBox2" runat="server" 
            /></td>
      </tr>
    </table>
    <p align="center">
      <asp:Button ID="Update" runat="server" onclick="Button1_Click" 
            
            Text="Update" /> 
			
			 <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
        </asp:SqlDataSource>
		<asp:CheckBox ID="CheckBox1" runat="server" Visible="false"
             />
			<asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]">
        </asp:SqlDataSource>           </p>

                </asp:Content>
