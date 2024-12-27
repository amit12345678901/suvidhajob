﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="Edit_Subgroup.aspx.cs" Inherits="admin_Edit_Subgroup" %>

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

<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(function() {
$('#<%=FileUpload1.ClientID %>').change(function() {
var fileExtension = ['jpeg', 'jpg','png'];
if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
alert("Only '.jpeg','.jpg','.gif','.png' formats are allowed.");
}
})
})
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <h2>Edit Sub Group</h2> 
   
       <table width="95%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
    
     <tr>
        <td class="home_tx"> Group Name &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:DropDownList ID="cat" DataTextField="ProdCate" 
                          DataValueField="SlNo"  runat="server" 
                          DataSourceID="SqlDataSource1">
         
         </asp:DropDownList></td>
         </tr> 
      <tr>
        <td class="home_tx"> Sub Group Name &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:TextBox ID="name" runat="server" Width="245px"></asp:TextBox></td>
         </tr> 
              <tr>
        <td class="home_tx"> Remarks</td>
         <td class="style5"><asp:TextBox ID="remark" runat="server" TextMode="MultiLine" Width="245px"></asp:TextBox></td>
         </tr> 
            <tr>
        <td class="home_tx"> Image Upload </td>
         <td class="style5">
             <asp:FileUpload ID="FileUpload1" runat="server" /></td>
             <td class="style5"><asp:Image ID="Image1" runat="server" Height="86px" 
                     Width="197px" />
             </td>
         </tr> 
         
         <tr>
        
         <td colspan="2" align="center">
             <asp:Button ID="update" runat="server" Text="update"  
                 Width="135px" onclick="update_Click"   />
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </td>
         </tr> 
         
         </table>
         
        
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" DataKeyNames="SlNo" onpageindexchanging="GridView1_PageIndexChanging" 
        AllowPaging="True" PageSize="20">
        
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Modifie" HeaderText="Modify" 
                ShowHeader="True" Text="Modify" />
            <asp:TemplateField HeaderText="Delete"><ItemTemplate>
               
           <asp:Button ID="b2"  runat="server" Text="Delete"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("SlNo") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete the Occasion?');'yes,no'"
                />
           </ItemTemplate></asp:TemplateField>
                
        </Columns>
         
    </asp:GridView>
    
   
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    SelectCommand="select SlNo,ProdCate  from ProdCateMast  order by ProdCate"></asp:SqlDataSource>

</asp:Content>

