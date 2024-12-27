<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="Admin_Add.aspx.cs" Inherits="Admin_Add" %>

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
<asp:ScriptManager ID="scrpt" runat="server"></asp:ScriptManager>
   <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Add User</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_add_user.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="center"> 
    <br />
    <br />
    <table width="70%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
    
    
     <tr>
                  <td width="50%" class="home_tx">User Type</td>
                  <td width="50%">                   
                      <asp:DropDownList ID="roll" runat="server" onselectedindexchanged="roll_SelectedIndexChanged" AutoPostBack="true">
                      <asp:ListItem Value="Administrator">Administrator</asp:ListItem>
                        <asp:ListItem Value="User">User</asp:ListItem>
                      </asp:DropDownList> </td>
                </tr>
                <asp:Panel ID="user_power" runat="server">
                <tr>
                  <td width="50%" class="home_tx">Candidate User Power</td>
                  <td width="50%">                    
                     <asp:CheckBox ID="add_c" runat="server" Text="Add" /> &nbsp;&nbsp; <asp:CheckBox ID="edit_c" runat="server" Text="Edit" /> &nbsp;&nbsp;<asp:CheckBox ID="del_c" runat="server" Text="Delete" /> </td>
                </tr>
                
                 <tr>
                  <td width="50%" class="home_tx">Employer User Power</td>
                  <td width="50%">                    
                    <asp:CheckBox ID="add_emp" runat="server" Text="Add" /> &nbsp;&nbsp; <asp:CheckBox ID="edit_emp" runat="server" Text="Edit" /> &nbsp;&nbsp;<asp:CheckBox ID="del_emp" runat="server" Text="Delete" /> </td>
                </tr>
                 <tr>
                  <td width="50%" class="home_tx">Vacancy User Power</td>
                  <td width="50%">                    
                 <asp:CheckBox ID="add_j" runat="server" Text="Add" /> &nbsp;&nbsp; <asp:CheckBox ID="edit_j" runat="server" Text="Edit" /> &nbsp;&nbsp; <asp:CheckBox ID="del_j" runat="server" Text="Delete" /> </td>
                </tr>
                  <tr>
                  <td width="50%" class="home_tx">Resume Search User Power</td>
                  <td width="50%">                    
              <asp:CheckBox ID="resume" runat="server" Text="Search" />  </td>
                </tr>
                
                <tr>
                  <td width="50%" class="home_tx">Accounts</td>
                  <td width="50%">                    
                 <asp:CheckBox ID="Closure" runat="server" Text="Closure" /> &nbsp;&nbsp; <asp:CheckBox ID="Invoice" runat="server" Text="Invoice" /> &nbsp;&nbsp; <asp:CheckBox ID="Receipt" runat="server" Text="Receipt" /> </td>
                </tr>
                
                
               
                 <tr>
                  <td width="50%" class="home_tx">Mis</td>
                  <td width="50%">                    
              <asp:CheckBox ID="mis" runat="server" Text="Mis" />  </td>
                </tr>
                </asp:Panel>
    
      <tr>
        <td width="50%" class="home_tx">User&nbsp;Id </td>
        <td width="50%">
        
        <asp:TextBox ID="user_name" runat="server"></asp:TextBox>
        
        
        </td>
      </tr>
      <tr>
        <td class="home_tx">Password </td>
        <td>
      
        <asp:TextBox ID="password" runat="server" 
            
            
            TextMode="Password"></asp:TextBox> </td>
      </tr>
      <tr>
        <td class="home_tx">Retype Password</td>
        <td>
        
        <asp:TextBox ID="retype_password" runat="server" 
            
           
            TextMode="Password"></asp:TextBox> </td>
      </tr>
      <tr>
        <td class="home_tx">Name</td>
        <td><asp:TextBox ID="name" runat="server" 
           ></asp:TextBox></td>
      </tr>
       <tr>
        <td class="home_tx">Address</td>
        <td><asp:TextBox ID="addr" runat="server" TextMode="MultiLine" 
           ></asp:TextBox></td>
      </tr>
         
         <tr>
        <td class="home_tx">City</td>
        <td><asp:TextBox ID="city" runat="server" 
           ></asp:TextBox></td>
      </tr>
          <tr>
        <td class="home_tx">Country</td>
        <td><asp:TextBox ID="country" runat="server" 
           ></asp:TextBox></td>
      </tr>  
       <tr>
        <td class="home_tx">Zip/PostCode</td>
        <td><asp:TextBox ID="zip" runat="server" 
           ></asp:TextBox></td>
      </tr>
       <tr>
        <td class="home_tx">Telephone</td>
        <td><asp:TextBox ID="tel" runat="server" 
           ></asp:TextBox></td>
      </tr>
       <tr>
        <td class="home_tx">Mobile</td>
        <td><asp:TextBox ID="mob" runat="server" 
           ></asp:TextBox></td>
      </tr>
       <tr>
        <td class="home_tx">Fax</td>
        <td><asp:TextBox ID="fax" runat="server" 
           ></asp:TextBox></td>
           </tr>
            <tr>
        <td class="home_tx">Email Address</td>
        <td><asp:TextBox ID="email" runat="server" 
           ></asp:TextBox></td>
      </tr>
       
      </tr>      
      <tr>
        <td colspan="2" class="home_tx"><div align="center"><asp:Button ID="Add" runat="server" 
       
        Text="Add" OnClick="Add_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div></td>
        </tr>
    </table>
    
</asp:Content>
