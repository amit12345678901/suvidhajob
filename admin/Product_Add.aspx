<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="Product_Add.aspx.cs" Inherits="admin_Product_Add" %>

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
var fileExtension = ['jpeg', 'jpg', 'gif'];
if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
alert("Only '.jpeg','.jpg','.gif' formats are allowed.");
}
})
})
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ScriptManager ID="scrpt" runat="server"></asp:ScriptManager>

    <h2>Add Product</h2> 
    <table width="95%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
    
     <tr>
        <td class="home_tx"> Group Name &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate><asp:DropDownList ID="cat"  AutoPostBack="true" runat="server" onselectedindexchanged="cat_SelectedIndexChanged"></asp:DropDownList></ContentTemplate></asp:UpdatePanel>  
         </td>
         </tr> 
      <tr>
        <td class="home_tx"> Sub Group Name &nbsp;<font color="red">*</font></td>
         <td class="style5"> <asp:UpdatePanel ID="UpdatePanel4" runat="server"><ContentTemplate><asp:DropDownList ID="subgroup" runat="server"></asp:DropDownList></ContentTemplate></asp:UpdatePanel>  </td>
         </tr> 
        
           <tr>
        <td class="home_tx"> Product Name &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:TextBox ID="pname" runat="server" Width="322px"></asp:TextBox></td>
         </tr>
           <tr>
        <td class="home_tx"> Product Code &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:TextBox ID="pcode" runat="server" Width="322px"></asp:TextBox></td>
         </tr>
           <tr>
        <td class="home_tx"> Vender Code </td>
         <td class="style5"><asp:TextBox ID="vcode" runat="server" Width="322px"></asp:TextBox></td>
         </tr>
           <tr>
        <td class="home_tx">Short Description </td>
         <td class="style5">
             <asp:TextBox ID="sdes" runat="server" TextMode="MultiLine" 
                 Width="380px" Height="53px"></asp:TextBox></td>
         </tr>
           <tr>
        <td class="home_tx"> Description </td>
         <td class="style5"><asp:TextBox ID="des" runat="server" TextMode="MultiLine" 
                 Width="380px" Height="90px"></asp:TextBox></td>
         </tr>
           <tr>
        <td class="home_tx"> Quantity &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:TextBox ID="quantity" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
           
         <tr>
        <td class="home_tx">Sell Price &nbsp;<font color="red">*</font></td>
         <td class="style5"><asp:TextBox ID="price" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Colour</td>
         <td class="style5"><asp:TextBox ID="colour" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Works </td>
         <td class="style5"><asp:TextBox ID="works" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Fabric</td>
         <td class="style5"><asp:TextBox ID="fabric" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Type </td>
         <td class="style5"><asp:TextBox ID="type" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Size</td>
         <td class="style5"><asp:TextBox ID="Dimension" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Length </td>
         <td class="style5"><asp:TextBox ID="length" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
           <tr>
        <td class="home_tx"> Weight </td>
         <td class="style5"><asp:TextBox ID="weight" runat="server" Width="318px"></asp:TextBox></td>
         </tr> 
           <tr>
        <td class="home_tx"> Blouse Details </td>
         <td class="style5"><asp:TextBox ID="blouse" TextMode="MultiLine" runat="server" 
                 Width="318px" Height="83px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Tags </td>
         <td class="style5"><asp:TextBox ID="tag" runat="server" TextMode="MultiLine" Width="318px"></asp:TextBox></td>
         </tr> 
           <tr>
        <td class="home_tx"> Title of Page </td>
         <td class="style5"><asp:TextBox ID="title_page" runat="server" Width="313px"></asp:TextBox></td>
         </tr> 
          <tr>
        <td class="home_tx"> Delivery Time </td>
         <td class="style5"><asp:TextBox ID="delivery_time" runat="server" Width="312px"></asp:TextBox></td>
         </tr> 
         <tr>
        <td class="home_tx"> Product Classified </td>
         <td class="style5"><asp:CheckBox ID="newar" runat="server" Text="New Arrival" /> &nbsp;&nbsp;<asp:CheckBox ID="express" runat="server" Text="Express Delivery" /></td>
         </tr> 
            <tr>
        <td class="home_tx"> Image Upload &nbsp;<font color="red">*</font></td>
         <td class="style5">
             <asp:FileUpload ID="FileUpload1" runat="server" /></td>
             <td class="style5"><asp:Image ID="Image1" runat="server" Height="86px" 
                     Width="197px" />
             </td>
         </tr> 
         
         <tr>
        
         <td colspan="2" align="center">
             <asp:Button ID="add" runat="server" Text="Submit"  
                 Width="135px" onclick="add_Click"   />
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </td>
         </tr> 
     
         </table>
         
             </ContentTemplate>
</asp:UpdatePanel>
          
      
         
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    SelectCommand="select SlNo,ProdCate  from ProdCateMast order by ProdCate"></asp:SqlDataSource>

</asp:Content>

