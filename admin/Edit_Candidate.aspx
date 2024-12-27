<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Candidate.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Edit" %>

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

<link type="text/css" href="datepick/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="datepick/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="datepick/js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
$(function () {
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_frmdt").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>

<script type="text/javascript">
$(function () {
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_todt").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page_title">Edit Candidate</div>
<div align="center">



<table class="table table-bordered" style="background:#fff;">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="47%" class="Small_path">Home > Candidate &gt; Edit Candidate</td>
    <td width="50%" align="right" class="Small_path">Total Candidate Found: <asp:Label ID="lbtot" runat="server"></asp:Label></td>
  </tr>
</table>
          <table class="table table-bordered" style="background:#fff;">
  <tr>
    <td>Date From</td>
    <td><asp:TextBox ID="frmdt" runat="server"></asp:TextBox></td>
    <td>To</td>
    <td><asp:TextBox ID="todt" runat="server"></asp:TextBox></td>
    <td><asp:Button ID="srch" runat="server" Text="Search" onclick="srch_Click" /></td>
    <td><a href="PostResume1.aspx">Add Candidate</a></td>
    <td>Page No: <% =pageno %></td>
  </tr>
</table>

          <table class="table table-bordered" style="background:#fff;">
              <tr>
                <td><div align="center">   
    <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
        HeaderStyle-HorizontalAlign="Center"
        
        AllowPaging="True" DataKeyNames="id_txt" PageSize="20" 
        onpageindexchanging="GridView1_PageIndexChanging" 
                        > <HeaderStyle ForeColor="Black" Font-Bold="True" 
              BackColor="#CCCCCC"></HeaderStyle>
                 <alternatingrowstyle backcolor="PaleTurquoise"  
          forecolor="DarkBlue"
          font-italic="false"/>
        <Columns>
        
          <asp:ButtonField ButtonType="link" CommandName="views"  ControlStyle-Font-Underline="false" DataTextField="name_txt" HeaderText="Candidate name" />
            <asp:ButtonField ButtonType="link"  CommandName="views"  ControlStyle-Font-Underline="false" DataTextField="user_txt" HeaderText="User id" />
             <asp:ButtonField ButtonType="link" CommandName="views"  ControlStyle-Font-Underline="false" DataTextField="pass_txt" HeaderText="Password" />
              <asp:ButtonField ButtonType="link" CommandName="views"  ControlStyle-Font-Underline="false" DataTextField="email_txt" HeaderText="Email" />
          <asp:TemplateField HeaderText="Posted On"><ItemTemplate>
        <%# Eval("update_date")%>
        </ItemTemplate></asp:TemplateField>
        <asp:TemplateField HeaderText="Functional Area Sub Functional Area"><ItemTemplate>
        <%# Eval("in_txt")%> <br />
        <%# Eval("t_n")%> <br />
          <%# Eval("f_n") %> <br />
        </ItemTemplate></asp:TemplateField>
            <asp:ButtonField ButtonType="Button"  CommandName="Modifie" HeaderText="Modify" 
                ShowHeader="True" Text="Modify" />
               <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id_txt") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete.?');'yes,no'" ImageUrl="../images/delete.JPEG"/>
           </ItemTemplate></asp:TemplateField>
               
            <asp:ButtonField ButtonType="Button"  CommandName="update" HeaderText="Cv Manage" 
                ShowHeader="True" Text="Upload / update cv" />
                
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   </asp:Content>