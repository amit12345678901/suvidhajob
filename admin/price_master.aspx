<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="price_master.aspx.cs" Inherits="price_master" %>

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
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    
    <table width="95%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
    <asp:Panel ID="pn3" runat="server" Visible="false">
      <tr>
        <td class="home_tx"> Category *</td>
         <td class="style5"><asp:DropDownList ID="cat" runat="server">
         <asp:ListItem Value="0">Select</asp:ListItem>
         <asp:ListItem Value="1">Saree</asp:ListItem>
         <asp:ListItem Value="2">Lehenga</asp:ListItem>
         </asp:DropDownList></td>
         </tr> 
         </asp:Panel>
      <tr>
        <td class="home_tx"> Range form  *</td>
         <td class="style5"><asp:TextBox ID="rform" runat="server" Width="245px"></asp:TextBox>
         <asp:CompareValidator ID="CompareValidator2" runat="server" 
                 ControlToValidate="rform" ErrorMessage="only numeric field" 
                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
         </td>
         </tr> 
         
         <tr>
        <td class="home_tx"> Range to  *</td>
         <td class="style5"><asp:TextBox ID="rto" runat="server" Width="245px"></asp:TextBox>
         <asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ControlToValidate="rto" ErrorMessage="only numeric field" 
                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
         </td>
         </tr> 
         
         <tr>
        
         <td class="style5">
             <asp:Button ID="save" runat="server" Text="save" 
                 Width="135px" onclick="save_Click" />
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </td>
         </tr> 
         
         </table>
      </p>
    <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
</asp:Content>
