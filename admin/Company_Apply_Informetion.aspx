<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="Company_Apply_Informetion.aspx.cs" Inherits="Company_Apply_Informetion" %>

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
<LINK href="css/style.css" rel="stylesheet" type="text/css">
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
<div class="page_title">Job Applied by Candidate</div>
<div align="center">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="47%" class="Small_path">Home > Job Applied by Candidate</td>
    <td width="50%" align="right" class="Small_path"></td>
  </tr>
</table><br>


            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify">
                
    
   
    <asp:GridView ID="GridView1" runat="server" HeaderStyle-HorizontalAlign="Center"
        
       
        onrowcommand="GridView1_RowCommand" onrowcreated="GridView1_RowCreated" 
        DataKeyNames="pv_id_txt">
         <HeaderStyle ForeColor="Black" Font-Bold="True" 
              BackColor="#CCCCCC"></HeaderStyle>
                 <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue"
          font-italic="false"/>
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Detail" HeaderText="Apply  Details" Text="Job_Apply" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" onrowcommand="GridView2_RowCommand" 
        onrowcreated="GridView2_RowCreated" 
        
       
        DataKeyNames="id_txt" EmptyDataText="Any candidate not apply for this post.">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="view" 
                HeaderText="View Profile " ShowHeader="True" Text="View" />
        </Columns>
    </asp:GridView>
    </form>
                 
                </div></td>
              </tr>
            </table>           </asp:Content>
