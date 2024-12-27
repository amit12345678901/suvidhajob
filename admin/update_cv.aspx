<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_cv.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="update_cv" %>

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
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Update CV</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_update_cv.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify">
                   
                      <br />
                      <table width="100%"  border="1" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC">
                        <tr>
                          <td width="50%" class="home_tx">View CV (Word Format) </td>
                          <td width="50%"><asp:LinkButton ID="downcv" runat="server" Text="Click Here" 
                           onclick="downcv_Click"></asp:LinkButton>
                              <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                        </tr>
                      </table>
                      <br />
                      <br />
                      <br />
                      <table width="100%"  border="1" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC">
                        <tr>
                          <td width="50%" class="home_tx">Add / Update CV (Word Format)</td>
                          <td width="50%"><asp:FileUpload ID="FileUpload1" runat="server" /><br />
                              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
         
        Text="Update" /></td>
                        </tr>
                      </table>
                      <br />
                      <br />
                      <table width="100%"  border="1" cellpadding="2" cellspacing="2" bordercolor="#CCCCCC">
                        <tr>
                          <td width="50%" class="home_tx">Delete CV (Word Format) </td>
                          <td width="50%">
                            <asp:Button ID="delete" runat="server" OnClick="delete_Click" 
       
        Text="Delete" /></td>
                        </tr>
                      </table>
                      <br />
                      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                      <br />
                      <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                      <br />
                      <asp:Label ID="view" runat="server" Text=""></asp:Label>
                      <div align="center"></div>
                   </asp:Content>