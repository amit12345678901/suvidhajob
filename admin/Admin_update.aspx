<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="Admin_update.aspx.cs" Inherits="Admin_update" %>

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

<h2>Edit User</h2>

    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
          HorizontalAlign="Center" BorderWidth="2px" BackColor="#F2F2F2" 
             CellPadding="3" CellSpacing="2" BorderStyle="solid" Width="750px"
             BorderColor="#CCCCCC"
        
        DataKeyNames="id" onpageindexchanging="GridView1_PageIndexChanging">
         <HeaderStyle ForeColor="Black" Font-Bold="True" 
              BackColor="#CCCCCC"></HeaderStyle>
        <Columns>
           <asp:ButtonField ButtonType="Image" CommandName="Modifie" HeaderText="Modify" ImageUrl="../images/edit1.JPEG"
                ShowHeader="True" Text="Modify" />
           
           <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete.?');'yes,no'"
               
                                
                                
                             ImageUrl="../images/delete.JPEG"
                               />
           </ItemTemplate></asp:TemplateField>
        </Columns>
         
    </asp:GridView>
    
    <p>
       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
    <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
</asp:Content>