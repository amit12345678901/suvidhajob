<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="wholeseller.aspx.cs" Inherits="admin_wholeseller" %>

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
 <h2>Wholeseller Order Details</h2>   
    
    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
         HorizontalAlign="Center" BorderWidth="2px" BackColor="#F2F2F2" 
             CellPadding="3" CellSpacing="2" BorderStyle="solid" Width="750px"
             BorderColor="#CCCCCC"
        
        DataKeyNames="order_id,user_id" onpageindexchanging="GridView1_PageIndexChanging" 
        AllowPaging="True" PageSize="50">
         <HeaderStyle ForeColor="Black" Font-Bold="True" 
              BackColor="#CCCCCC"></HeaderStyle>
        <Columns>
         <asp:TemplateField HeaderText="Orders" ControlStyle-Width="150" >
        <ItemTemplate>
        <asp:LinkButton ID="lnk1" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="delivery" 
                 Text="Delivery Status"></asp:LinkButton>
                 <br /><br />
                 <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="detail"  Text="Order Detail"></asp:LinkButton>
                 <br /><br />
                 <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="inform"  Text="Order Information"></asp:LinkButton>
                 <br /><br />
                 <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="client"  Text="Customer Detail"></asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server" Width="30px" Height="30px"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("order_id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete the item?');'yes,no'"
               
                                
                                
                             ImageUrl="~/images/delete.JPEG"
                               />
           </ItemTemplate></asp:TemplateField>
           
           
                <asp:TemplateField HeaderText="Order Date (mm/dd/yyyy)" >
        <ItemTemplate>
        
        <asp:Label ID="odate" runat="server" Text='<%# Eval("order_date") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
         
    </asp:GridView>
    <asp:Label ID="lb" runat="server" Text=""></asp:Label>
  
    <p>
    </p>
    <p>
    </p>
    <p>
</asp:Content>






