<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employer_Registation.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Employer_Registation" %>


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
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_ldate").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
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
<div class="page_title">Add Client</div>
<div align="center">
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
  <tr>
    <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
    <td width="47%" class="Small_path">Home > Company &gt; Add Company</td>
    <td width="50%"></td>
  </tr>
</table>
      <br>    
    <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8" >
        <tr>
          <td bgcolor="#4b8df8">&nbsp;</td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="95%"  border="0" align="center" cellpadding="0" cellspacing="15" bordercolor="#CCCCCC" class="text">
           
            <tr>
              <td width="43%" align="right" >Company Name  &nbsp;<font color="red">*</font></td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="TextBox1" runat="server" 
                      autocompletetype="Disabled" OnTextChanged="TextBox1_TextChanged" Width="213px" 
            
            ></asp:TextBox></td>
            </tr>
             <tr>
             
             
           
             
             
              <td width="43%" align="right"  runat="server" >Company Profile</td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="branch" onkeyup="Javascript:CharactersCount();" runat="server" Style="overflow: hidden;" Height="80px" TextMode="MultiLine" Width="300px" MaxLength="100"></asp:TextBox>&nbsp;&nbsp;  <asp:Label ID="lblChar" runat="server" Text="100" CssClass="lblstyle"></asp:Label>
              
              </td>
            </tr>
            <tr>
              <td align="right" >Address &nbsp;<font color="red">*</font></td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox2" runat="server" 
            
            TextMode="MultiLine"></asp:TextBox></td>
            </tr>
               <tr>
              <td align="right" >Contact&nbsp; Person &nbsp;<font color="red">*</font></td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox7" runat="server" 
            
            ></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >City </td>
              <td>&nbsp;</td>
              <td><asp:DropDownList ID="DropDownList1" runat="server" 
            
            
            DataSourceID="AccessDataSource2" DataTextField="city_name" 
            DataValueField="city_name"> </asp:DropDownList></td>
            </tr>
            <tr>
              <td align="right" >Email &nbsp;<font color="red">*</font></td>
              <td >&nbsp;</td>
              <td ><asp:TextBox ID="TextBox3" runat="server" 
            
            ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            
            Text="Check Email" />            
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Not a valid Email Id." 
             
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
              <td align="right" >Industry</td>
              <td>&nbsp;</td>
              <td><asp:DropDownList ID="DropDownList2" runat="server" 
            
             
            DataSourceID="AccessDataSource1" DataTextField="ind_name" 
            DataValueField="ind_name"> </asp:DropDownList></td>
            </tr>
            <tr>
              <td align="right" >If &quot;Other&quot; </td>
              <td >&nbsp;</td>
              <td ><asp:TextBox ID="other" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >Phone </td>
              <td >&nbsp;</td>
              <td ><asp:TextBox ID="TextBox4" runat="server" 
            
            ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Must be Number field." 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
            </tr>
            <tr>
              <td align="right" >Mobile &nbsp;<font color="red">*</font></td>
              <td >&nbsp;</td>
              <td ><asp:TextBox ID="TextBox5" runat="server" 
            
            ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Must be number field" 
            Operator="DataTypeCheck" 
            
            Type="Integer"></asp:CompareValidator></td>
            </tr>
            <tr>
              <td align="right" >Website</td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox6" runat="server" 
            
            ></asp:TextBox></td>
            </tr>
         
            <tr>
              <td align="right" >Designation</td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" 
            
            ></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >Size of Company &nbsp;<font color="red">*</font></td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox9" runat="server" 
            
            ></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >Number of Branches </td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox10" runat="server" 
            
            ></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >Number of Employess </td>
              <td>&nbsp;</td>
              <td><asp:TextBox ID="TextBox11" runat="server" 
           ></asp:TextBox></td>
            </tr>
            <asp:Panel ID="pn7" runat="server" Visible="false">
              <tr>
                <td width="43%" align="right" >Job Posting Number</td>
                <td width="7%">&nbsp;</td>
                <td width="50%"><asp:TextBox ID="job_num" runat="server"  
            
            
           
            AutoCompleteType="Disabled" ></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator6" runat="server" 
                          ControlToValidate="job_num" ErrorMessage="Must be Number" 
                          Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator></td>
              </tr>
            </asp:Panel>
            <div id="inext" runat="server">
            <tr>
              <td width="43%" align="right" >User Name &nbsp;<font color="red">*</font></td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="uname" runat="server" 
             ></asp:TextBox></td>
            </tr>
            <tr>
              <td align="right" >Password &nbsp;<font color="red">*</font></td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="password" runat="server" 
          ></asp:TextBox></td>
            </tr>
            </div>
            <tr>
              <td align="right" >Terms </td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="terms" runat="server"  autocompletetype="Disabled" ></asp:TextBox></td>
            </tr>
            <tr>
              <td width="43%" align="right" >Last Date </td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="ldate" runat="server"></asp:TextBox> (mm/dd/yyyy)</td>
            </tr>
            <tr>
              <td width="43%" align="right" >Developed By </td>
              <td width="7%">&nbsp;</td>
              <td width="50%"><asp:TextBox ID="developby" runat="server"  AutoCompleteType="Disabled" ></asp:TextBox></td>
            </tr>
            <tr>
              <td colspan="3"><div align="center">
                          
                         
              </div></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="50" align="center" bgcolor="#f5f5f5"><asp:ImageButton ID="SEARCH" runat="server" ImageUrl="images/submit.jpg"  Width="71px" Height="34px" onclick="Submit_Click"/>
           <asp:Button ID="Reset" runat="server" Visible="false" 
       
        Text="Reset" onclick="Reset_Click" />
          </td>
        </tr>
</table>
    <p>&nbsp;</p>
    <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
</asp:SqlDataSource>
    
        <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]">
        </asp:SqlDataSource>
    
     </asp:Content>
