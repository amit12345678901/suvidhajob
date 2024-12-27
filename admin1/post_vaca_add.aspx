<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post_vaca_add.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="post_vaca_add" %>


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
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Add Vacancy<asp:ScriptManager 
                      ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
                </td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_add_vacancy.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="center"> 
              <table width="90%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="50%" valign="top" class="home_tx"><div align="left">CID &nbsp;<font color="red">*</font></div></td>
        <td width="50%"><div align="left">
          <asp:TextBox ID="TextBox1" runat="server" 
       ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Client Name &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox2" runat="server" 
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Client Profile &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox3" runat="server" 
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Designation &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox4" runat="server" 
           ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Contact Point &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox5" runat="server" 
            
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Address</div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox6" runat="server" 
            
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">City</div></td>
        <td>          <div align="left">
          <asp:ListBox ID="ListBox1" runat="server" 
            DataSourceID="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name" 
            > </asp:ListBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Country</div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox8" runat="server" 
            
            
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Phone &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox9" runat="server" 
            
            
           ></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox9" ErrorMessage="Phone number must be numeric." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Fax</div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox10" ErrorMessage="Fax number must be numeric." 
            Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Email &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox11" runat="server" 
            
            ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="Please enter valied email id." 
           
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div></td>
      </tr>
      <tr bgcolor="#E4E4E4">
        <td height="20" colspan="2" class="home_tx"></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Industry &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:DropDownList ID="DropDownList1" runat="server" 
            
             
            datasourceid="AccessDataSource1" DataTextField="ind_name" 
            DataValueField="ind_name"> </asp:DropDownList>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Functional Area &nbsp;<font color="red">*</font></div></td>
        <td><div align="left">
          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
         
             
        
            <asp:DropDownList ID="DropDownList15" runat="server" 
                datasourceid="AccessDataSource8" DataTextField="fun_name" 
            DataValueField="fun_name" AutoPostBack="True" 
                onselectedindexchanged="DropDownList15_SelectedIndexChanged" >
                     </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Sub Functional Area </td>
      <td><div align="left">
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate>
        <asp:DropDownList ID="DropDownList9" runat="server" 
            
            > </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel>
      </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Job Position &nbsp;<font color="red">*</font></div></td>
      <td><div align="left">
        <asp:TextBox ID="TextBox14" runat="server" 
            ></asp:TextBox>
      </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Keywords</td>
      <td><div align="left">
        <asp:TextBox ID="TextBox15" runat="server" 
            ></asp:TextBox>
      </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Reporting to </div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox16" runat="server" 
           ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Candidate Profile </div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox17" runat="server" 
           ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Job Responsibility</div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox18" runat="server" MaxLength="10"  
           ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Number of Vacancy</div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox19" runat="server" MaxLength="10" 
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Gender</div></td>
        <td>          <div align="left">
          <asp:DropDownList ID="DropDownList2" runat="server" 
           >
                 <asp:ListItem>Both</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                
            </asp:DropDownList>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Year of Experience &nbsp;<font color="red">*</font></div></td>
        <td class="home_tx"><div align="left">Min. 
              <asp:TextBox ID="TextBox20" runat="server" Width="40"
           ></asp:TextBox> 
              - Max 
              <asp:TextBox ID="TextBox21" runat="server" Width="40" ></asp:TextBox> 
              <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToValidate="TextBox20" ErrorMessage="Min. experience must be numeric." Operator="DataTypeCheck"           
            Type="Integer"></asp:CompareValidator>
              <asp:CompareValidator ID="CompareValidator4" runat="server" 
            ControlToValidate="TextBox21" ErrorMessage="Max. experience must be numeric." Operator="DataTypeCheck"          
            Type="Integer"></asp:CompareValidator>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left">Job Type</div></td>
        <td><div align="left">
          <asp:DropDownList ID="DropDownList3" runat="server" 
            >
              <asp:ListItem>PERMANENT</asp:ListItem>
              <asp:ListItem>TEMPORERY</asp:ListItem>
          </asp:DropDownList>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Academy Qualification &nbsp;<font color="red">*</font></font></div></td>
        <td><div align="left">
          <asp:DropDownList ID="DropDownList6" runat="server" 
            DataSourceID="AccessDataSource3" DataTextField="A_Qualification" 
            DataValueField="A_Qualification" 
            
            > </asp:DropDownList>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Professional Qualification &nbsp;<font color="red">*</font></font></div></td>
        <td><div align="left">
          <asp:DropDownList ID="DropDownList7" runat="server" 
            DataSourceID="AccessDataSource4" DataTextField="Professional_Qualification" 
            DataValueField="Professional_Qualification" 
            
            > </asp:DropDownList>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Age Between</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox24" runat="server" 
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Salary Specification  (Per Annum) 
            &nbsp;<font color="red">*</font></font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox25" runat="server" 
            ></asp:TextBox> (Lakh)
            <asp:CompareValidator ID="CompareValidator5" runat="server" 
            ControlToValidate="TextBox25" ErrorMessage="Salary must be numeric." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Turn Around Time</font></div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox26" runat="server" 
            ></asp:TextBox>
        </div></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx"><div align="left"><font style="FONT: 8pt/13pt verdana; COLOR: black">Job  Location&nbsp; 
            &nbsp;<font color="red">*</font></font></div></td>
        <td><div align="left">
          <asp:ListBox ID="ListBox2" runat="server" 
            DataSourceID="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name" 
            > </asp:ListBox>
        </div></td>
      </tr>
      
     
      
      <tr>
        <td valign="top" class="home_tx"><div align="left">Job Code </div></td>
        <td><div align="left">
          <asp:TextBox ID="TextBox28" runat="server" 
           ></asp:TextBox>
        </div></td>
      </tr>
      
        <tr>
        <td valign="top" class="home_tx"><div align="left">Job In </div></td>
        <td><div align="left">
        <asp:DropDownList ID="jobin" runat="server">
        <asp:ListItem Value="2">Out Side</asp:ListItem>
         <asp:ListItem Value="1">In Side</asp:ListItem>
        </asp:DropDownList>
        </div></td>
      </tr>
      
      
      <tr>
        <td colspan="2"> <div align="center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
           
            Text="Submit" />
         
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div></td>
        </tr>
    </table>
          <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
          </asp:SqlDataSource> 

   
        <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [city_name] FROM [city_master]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="AccessDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
        </asp:SqlDataSource> 
    
    <asp:SqlDataSource ID="AccessDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
        </asp:SqlDataSource>
		
        <asp:SqlDataSource ID="AccessDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
        </asp:SqlDataSource> 
    
                 
                </div></td>
              </tr>
            </table>            
     </asp:Content>
















