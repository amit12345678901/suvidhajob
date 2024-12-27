<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="Bulk_update.aspx.cs" Inherits="Bulk_update" %>

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
<table>

 <tr>
                  <td width="50%">Group Name</td>
                  <td width="50%">                    
                      <asp:DropDownList ID="cat" onselectedindexchanged="cat_SelectedIndexChanged"  runat="server" AutoPostBack="true">
                      </asp:DropDownList>
                    </td>
                </tr>
                <tr>
        <td class="home_tx"> Select Sub Group Name *</td>
         <td class="style5">
             <asp:DropDownList ID="subgroup" runat="server">
             </asp:DropDownList>
             </td>
         </tr> 
<tr>
<td>
<span style="color: Red">*</span>Attach Excel file(97-2003 excel format)
</td>
<td>
<asp:FileUpload ID="fileuploadExcel" runat="server" />
</td>
</tr>
<tr>
<td></td>
<td>
<asp:Button ID="btnSend" runat="server" Text="Import" onclick="btnSend_Click"  />
</td>
</tr>
</table>



 <a  href="product_excel.xls" target="_blank">  Sampel Excel Format  </a> <br /><br />
 <a  href="how_use.doc" target="_blank">  How to Use  </a> <br /><br />

<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<br /><br />
<asp:Panel ID="pnstat" runat="server" Visible="false">
Total :- <asp:Label ID="total1" runat="server"></asp:Label>
       
       <br />

Successfull :- <asp:Label ID="success1" runat="server"></asp:Label><br />



Failure :-  <asp:Label ID="failure1" runat="server"></asp:Label><br />

</asp:Panel>

</asp:Content>

