<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employer_Registation.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Employer_Registation" %>


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
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Add Company</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_add_company.jpg" width="358" height="27" /></td>
            </tr>
          </table>
           <div align="center"><br /> 
    <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="50%" class="home_tx">Company Name  &nbsp;<font color="red">*</font></td>
        <td width="50%">
            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" ontextchanged="TextBox1_TextChanged" 
            
            ></asp:TextBox></td>
      </tr>
      
      <tr>
        <td class="home_tx">User Name &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="uname" runat="server" 
             ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Password &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="password" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Address &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
            
            TextMode="MultiLine"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Location </td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" 
            
            
            DataSourceID="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Email &nbsp;<font color="red">*</font></td>
        <td class="home_tx"><asp:TextBox ID="TextBox3" runat="server" 
            
            ></asp:TextBox>
          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            
            Text="Check Email" />          
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Not a valid Email Id." 
             
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                    
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </td>
      </tr>
      <tr>
        <td class="home_tx">Catagory</td>
        <td><asp:DropDownList ID="DropDownList2" runat="server" 
            
             
            DataSourceID="AccessDataSource1" DataTextField="ind_name" 
            DataValueField="ind_name"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Phone </td>
        <td class="home_tx"><asp:TextBox ID="TextBox4" runat="server" 
            
            ></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Must be Number field." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Mobile &nbsp;<font color="red">*</font></td>
        <td class="home_tx"><asp:TextBox ID="TextBox5" runat="server" 
            
            ></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Must be number field" 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Website</td>
        <td><asp:TextBox ID="TextBox6" runat="server" 
            
            ></asp:TextBox>          </td>
      </tr>
      <tr>
        <td class="home_tx">Contact&nbsp; Point &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="TextBox7" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><asp:TextBox ID="TextBox8" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Size of Company &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="TextBox9" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Number of Branches </td>
        <td><asp:TextBox ID="TextBox10" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Number of Employess </td>
        <td><asp:TextBox ID="TextBox11" runat="server" 
           ></asp:TextBox></td>
      </tr>
       <asp:Panel ID="pn7" runat="server" Visible="false">
       <tr>
                  <td width="50%" class="home_tx">Job Posting Number</td>
                  <td width="50%">                    
                      <asp:TextBox ID="job_num" runat="server"  
            
            
           
            AutoCompleteType="Disabled" ></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator6" runat="server" 
                          ControlToValidate="job_num" ErrorMessage="Must be Number" 
                          Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                                </td>
                </tr>
      
      
      
               
                 <tr>
                  <td width="50%" class="home_tx">Remark </td>
                  <td width="50%">                    
                      <asp:TextBox ID="remarks" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled" ></asp:TextBox></td>
                </tr>
      </asp:Panel>
      <tr>
        <td colspan="2"> <div align="center"><asp:Button ID="Submit" runat="server" 
        
        Text="Submit" onclick="Submit_Click" />        
          <asp:Button ID="Reset" runat="server" 
       
        Text="Reset" onclick="Reset_Click" />          
         </div></td>
        </tr>
    </table></div>
          <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
          </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]">
        </asp:SqlDataSource>
    
     </asp:Content>
