<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master"  CodeFile="view_detail.aspx.cs" Inherits="view_detail" %>

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
   
      <h2>Customer Details</h2> 
    <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                <tr>
                  <td width="50%" class="home_tx"> Name</td>
                  <td width="50%">                    <% =arr[0] %></td>
                </tr>
                
                
                <tr>
                  <td width="50%" class="home_tx">Email</td>
                  <td width="50%">                    <% =arr[1] %></td>
                </tr>
                
                
                <tr>
                  <td width="50%" class="home_tx">Password</td>
                  <td width="50%">                    <% =arr[2] %></td>
                </tr>
                
                                  
                 <tr>
                  <td width="50%" class="home_tx">date of Birth</td>
                  <td width="50%">                    <% =arr[15] %></td>
                </tr>
                <tr>
                  <td width="50%" class="home_tx">Registration Date</td>
                  <td width="50%">                    <% =arr[18] %></td>
                </tr>
                  <tr>
                  <td width="50%" colspan="2"><b>Company Details</b></td>
                  
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Company Name</td>
                  <td width="50%">                    
                      <% =arr[8] %>
                  </td>
                </tr>
                
                <tr>
                  <td width="50%" class="home_tx">City</td>
                  <td width="50%">                    <% =arr[9] %></td>
                </tr>
                
                  
                <tr>
                  <td width="50%" class="home_tx">Customer Type</td>
                  <td width="50%">                    <% =arr[19] %></td>
                </tr>
  <tr>
                  <td width="50%" class="home_tx">Discount Charge&nbsp;&nbsp;(%)</td>
                  <td width="50%">                    <% =arr[16] %></td>
                </tr>
              
               <tr>
                  <td width="50%" class="home_tx">Vat Charge&nbsp;&nbsp;(%)</td>
                  <td width="50%">                    <% =arr[17] %></td>
                </tr>

 
                <tr>
                  <td width="50%" colspan="2"><b>Billing Details</b></td>
                  
                </tr>
                
                 <tr>
                  <td width="50%"  class="home_tx">Bill Address</td>
                  <td width="50%">                    <% =arr[3] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Bill City</td>
                  <td width="50%">                    <% =arr[4] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Bill Country</td>
                  <td width="50%">                    <% =arr[5] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Bill Pin</td>
                  <td width="50%">                    <% =arr[6] %></td>
                </tr>
              
               <tr>
                  <td width="50%" class="home_tx">Bill Telephone</td>
                  <td width="50%">                    <% =arr[7] %></td>
                </tr>
        
         <tr>
                  <td width="50%" colspan="2"><b>Shiping Details</b></td>
                  
                </tr>
                             <tr>
                  <td width="50%" class="home_tx">Ship Address</td>
                  <td width="50%">                    <% =arr[10] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Ship City</td>
                  <td width="50%">                    <% =arr[11] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Ship Country</td>
                  <td width="50%">                    <% =arr[13] %></td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Ship Pin</td>
                  <td width="50%">                    <% =arr[12] %></td>
                </tr>
              
               <tr>
                  <td width="50%" class="home_tx">Ship Telephone</td>
                  <td width="50%">                    <% =arr[14] %></td>
                </tr>
                
                
               
                
        
        
                  </table>
                
   
    <p>
    </p>
    <p>
    </p>
    <p>
</asp:Content>
