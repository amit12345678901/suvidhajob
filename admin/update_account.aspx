<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="update_account.aspx.cs" Inherits="admin_update_account" %>

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
    
    <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
             
                <tr>
                  <td width="50%">User Id</td>
                  <td width="50%">                    <asp:TextBox ID="TextBox2" runat="server" 
                          AutoCompleteType="Disabled" Width="203px"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                          ControlToValidate="TextBox2" ErrorMessage="4 to 10 Digit Required." 
                          ValidationExpression="(\s|.){4,10}"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                  <td width="50%">Password</td>
                  <td width="50%">                    
                      <asp:TextBox ID="TextBox3" runat="server"    AutoCompleteType="Disabled" 
                          Width="201px" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                          ControlToValidate="TextBox3" ErrorMessage="4 to 10 Digit Required." 
                          ValidationExpression="(\s|.){4,10}"></asp:RegularExpressionValidator></td>
                </tr>
                
                 <tr>
                  <td colspan="2"><div align="center">
                    <asp:Button ID="update" runat="server"  
           
            Text="update" onclick="update_Click"  />
            <br /> 
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  </div></td>
                  </tr>
                  </table>
 
</asp:Content>


