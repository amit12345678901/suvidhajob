<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Edit.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Addmin_Edit" %>

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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
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
<div class="page_title">Edit User</div>
<div align="center">
<table class="table table-bordered">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="97%" class="Small_path">Home > System User &gt; Edit User</td>

  </tr>
</table>
<br>
<table>
  <tr>
                <td><div align="justify">
    <asp:GridView ID="GridView1" runat="server" Width="800px" HeaderStyle-HorizontalAlign="Center"
        
        
        DataKeyNames="ID" onpageindexchanging="GridView1_PageIndexChanging" 
        onrowcommand="GridView1_RowCommand"  onrowcreated="GridView1_RowCreated"><HeaderStyle ForeColor="Black" Font-Bold="True" 
              BackColor="#CCCCCC"></HeaderStyle>
                 <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue" 
          font-italic="false"/>
        <Columns>
        
          <asp:ButtonField ButtonType="link" ControlStyle-Width="120px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="code" HeaderText="Code" />
           <asp:ButtonField ButtonType="link" ControlStyle-Width="80px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="user_name" HeaderText="User Id" />
           <asp:ButtonField ButtonType="link" ControlStyle-Width="220px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="pass" HeaderText="Password" />
            <asp:ButtonField ButtonType="link" ControlStyle-Width="120px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="uname" HeaderText="Name" />
              <asp:ButtonField ButtonType="link" ControlStyle-Width="180px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="email" HeaderText="Email" />
             <asp:ButtonField ButtonType="link" ControlStyle-Width="120px" CommandName="Modifie"  ControlStyle-Font-Underline="false" DataTextField="roll" HeaderText="Roll" />
             
          <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server"  
                                CommandName="Delete1"  CssClass="table table-bordered"
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete.?');'yes,no'"
               
                                
                                
                             ImageUrl="../images/delete.JPEG"
                               />
           </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
                   
                 
                </div></td>
  </tr>
</table>           
    </asp:Content>