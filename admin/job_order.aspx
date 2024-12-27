<%@ Page Language="C#" MasterPageFile="~/Masterpage_Back.master" AutoEventWireup="true" CodeFile="job_order.aspx.cs" Inherits="admin_job_order" Title="Job Order" %>

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


<link type="text/css" href="datepick/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="datepick/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="datepick/js/jquery-ui-1.8.19.custom.min.js"></script>


<script type="text/javascript">
$(function () {
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_postdt").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>


    <style type="text/css">
        .style1
        {
            height: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="scrpt" runat="server"></asp:ScriptManager>
<div class="page_title">Add User</div>
<div align="center">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="47%" class="Small_path">Home > System User &gt; Add User</td>
    <td width="50%"></td>
  </tr>
</table>


<table width="95%"  border="0" align="center">
              <tr>
<td><div align="center"> 
    <br />
  
    <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8" >
      <tr>
        <td bgcolor="#4b8df8">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF">
        
        <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="15" bordercolor="#CCCCCC" class="text">
    
    
<tr>
                  <td width="43%" align="right" >Company Name</td>
                  <td width="7%">&nbsp;</td>
                  <td width="50%">                   
                      <asp:DropDownList ID="cmp_name" runat="server"> </asp:DropDownList>
               
                </td>
      </tr>
                 <tr>
                  <td width="43%" align="right">Position</td>
                  <td width="7%">&nbsp;</td>
                  <td width="50%">                    
           <asp:TextBox ID="pos" runat="server" 
           ></asp:TextBox> </td>
                </tr>
             </tr>
            <tr>
        <td align="right" >Location</td>
        <td>&nbsp;</td>
        <td><asp:TextBox ID="loc" runat="server" 
           ></asp:TextBox></td>
      </tr>
      
      <tr>
        <td align="right" >Consultant</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="conslt" runat="server">
        
        </asp:DropDownList></td>
      </tr>
      <asp:Panel ID="pn_admin" runat="server" Visible="false">
       <tr>
        <td align="right" >Accountant</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="acnt" runat="server">
        
        </asp:DropDownList></td>
      </tr>
      
      </asp:Panel>
       <tr>
        <td align="right" >Status</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="status" runat="server">
        <asp:ListItem Value="Open">Open</asp:ListItem>
        <asp:ListItem Value="Up">Up</asp:ListItem>
        <asp:ListItem Value="Join">Join</asp:ListItem>
        <asp:ListItem Value="Process">Process</asp:ListItem>
        <asp:ListItem Value="Offeres">Offeres</asp:ListItem>
        <asp:ListItem Value="Closed">Closed</asp:ListItem>
        <asp:ListItem Value="Hold">Hold</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
       <tr>
<td>Add Date</td>
<td> <asp:TextBox ID="postdt" runat="server"></asp:TextBox>     </td>
</tr>
        
      <tr>
        <td colspan="3" ><div align="center">
        
        
          
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div></td>
      </tr>
    </table>
    
    
        </td>
      </tr>
      <tr>
        <td bgcolor="#f5f5f5" align="center" height="50px"><asp:ImageButton ID="SEARCH" 
                runat="server" ImageUrl="images/submit.jpg"  Width="71px" Height="34px" 
                onclick="SEARCH_Click"/></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    </asp:Content>


