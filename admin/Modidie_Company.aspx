<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modidie_Company.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Modidie_Company" %>

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
<LINK href="css/style.css" rel="stylesheet" type="text/css">
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





<link type="text/css" href="datepick/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="datepick/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="datepick/js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript">
$(function () {
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_lbstdate").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
    .style1
    {
        height: 37px;
    }
</style>


<script type="text/javascript">
//This function is used to display the number of characters left and percentage graph
function CharactersCount() {
var CharLength = '<%=branch.MaxLength %>';
var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_branch');
var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar');
var colorwidth = txtMsg.value.length;
var divcolor = document.getElementById('ctl00_ContentPlaceHolder1_Colordiv');
if (txtMsg.value.length > CharLength) {
txtMsg.value = txtMsg.value.substring(0, CharLength);
}
lblCount.innerHTML = CharLength - txtMsg.value.length ;
if (colorwidth >= 1) {
divcolor.width = (colorwidth * 1.05) + "px";
divcolor.bgColor = 'red';
divcolor.height = 6 + "px";
}
else {
divcolor.width = 1 + "px";
divcolor.bgColor = '#9ED40A';
}
}
</script>
<style type="text/css">
.style1
{
width: 65%;
}
.lblstyle
{
background-color:#E2EEF1;
color:Red;
font-weight:bold;  
font-size: 14px;
font-family: Tahoma;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="page_title">Edit Company</div>
<div align="center">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="47%" class="Small_path">Home > Company &gt; Edit Company</td>
    <td width="50%"></td>
  </tr>
</table>
<table>
     
                <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   <br>
    <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8" >
      <tr>
        <td bgcolor="#4b8df8">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF" align="center"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="15" bordercolor="#CCCCCC" class="text">
          <tr>
            <td width="43%" align="right" >Company Name &nbsp;<font color="red">*</font></td>
            <td width="7%">&nbsp;</td>
            <td width="50%"><asp:TextBox ID="cname" runat="server" 
            ></asp:TextBox></td>
          </tr>
              <tr>
             
             
           
             
             
              <td width="43%"  runat="server" >Company Profile</td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="branch" onkeyup="Javascript:CharactersCount();" runat="server" Style="overflow: hidden;" Height="80px" TextMode="MultiLine" Width="300px" MaxLength="100"></asp:TextBox> &nbsp;&nbsp;&nbsp; <asp:Label ID="lblChar" runat="server" Text="100" CssClass="lblstyle"></asp:Label>
              
              </td>
            </tr>
          <tr>
            <td align="right" >User Name &nbsp;<font color="red">*</font></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="uname" runat="server" 
             ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Password &nbsp;<font color="red">*</font></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="password" runat="server" 
          ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Client&nbsp; Number </td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="c_no" runat="server" 
            
           
            ReadOnly="True"></asp:TextBox></td>
          </tr>
          
        
          <tr>
            <td align="right" class="style1" >City &nbsp;<font color="red">*</font></td>
            <td class="style1"></td>
            <td class="style1"><asp:DropDownList ID="city" runat="server" 
            
            
            DataSourceID="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name"> </asp:DropDownList></td>
          </tr>
          <tr>
            <td align="right" ><p>Address &nbsp;<font color="red">*</font></p></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="address" runat="server" TextMode="MultiLine" 
      ></asp:TextBox></td>
          </tr>
             <tr>
              <td align="right" >Contact&nbsp; Person &nbsp;<font color="red">*</font></td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="cp" runat="server" 
            
            ></asp:TextBox></td>
            </tr>
          <tr>
            <td align="right" >Email &nbsp;<font color="red">*</font></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="email" runat="server" 
          ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="email" ErrorMessage="Not a valid Email Id." Display="Dynamic" 
             
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
          </tr>
          <tr>
            <td align="right" >Industry </td>
            <td>&nbsp;</td>
            <td><asp:DropDownList ID="t_n2" runat="server" 
            
             
            DataSourceID="AccessDataSource1" DataTextField="ind_name" 
            DataValueField="ind_name"> </asp:DropDownList></td>
          </tr>
          <tr>
            <td align="right" >If &quot;Other&quot;</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="t_no2" runat="server" 
          ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Phone </td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="phone" runat="server" 
            ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" ><p>Mobile &nbsp;<font color="red">*</font></p></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="mobile" runat="server" 
        ></asp:TextBox></td>
          </tr>
         
          <tr>
            <td align="right" >Designation</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="designation" runat="server" TextMode="MultiLine" 
          ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Size </td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="size1" runat="server" TextMode="MultiLine" 
          ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" ><p>Branches</p></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="branches" runat="server" TextMode="MultiLine" 
       ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" ><p>Employee Length</p></td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="empl" runat="server" 
       ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Website</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="website" runat="server" 
            ></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right" >Login Authorise</td>
            <td>&nbsp;</td>
            <td><asp:CheckBox ID="auth_txt" runat="server" 
            /></td>
          </tr>
          <tr>
            <td align="right" >Resume Search Authorise</td>
            <td>&nbsp;</td>
            <td><asp:CheckBox ID="rs_auth" runat="server" 
      /></td>
          </tr>
          <tr>
            <td align="right" >Job Posting Authorise</td>
            <td>&nbsp;</td>
            <td><asp:CheckBox ID="jp_auth" runat="server" 
      /></td>
          </tr>
          <tr>
            <td align="right" >Mail Authorise</td>
            <td>&nbsp;</td>
            <td><asp:CheckBox ID="mail_auth" runat="server" 
      /></td>
          </tr>
          <tr>
            <td align="right" >Folder wise save</td>
            <td>&nbsp;</td>
            <td><asp:CheckBox ID="folder_auth" runat="server" 
      /></td>
          </tr>
          <tr>
            <td  align="right" valign="top">Closing Date </td>
            <td class="style1">&nbsp;</td>
            <td class="style1"><div align="left">
              <asp:TextBox ID="lbstdate"  runat="server"></asp:TextBox>
            </div></td>
          </tr>
          <asp:Panel ID="pn8" runat="server" Visible="false">
            <tr>
              <td width="43%" align="right" >Remark </td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="remarks" runat="server" TextMode="MultiLine" 
            
            
           
            AutoCompleteType="Disabled" ></asp:TextBox></td>
            </tr>
          </asp:Panel>
          <tr>
            <td align="right" >Developed&nbsp;By </td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="dev" runat="server" Width="242px" 
           ></asp:TextBox></td>
          </tr>
          <tr>
            <td  colspan="3" align="center"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
           
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="50" align="center" bgcolor="#f5f5f5"><asp:ImageButton ID="SEARCH" runat="server" ImageUrl="images/submit.jpg"  Width="71px" Height="34px" onclick="update_Click"/></td>
      </tr>
    </table>
   <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
</asp:SqlDataSource>
    
        <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]">
        </asp:SqlDataSource>
      </asp:Content>

