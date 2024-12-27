<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="Resume_Search_Form.aspx.cs" Inherits="Resume_Search_Form" %>

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
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Resume Search</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_reseume_search.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <div align="center">
            <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><div align="center">  <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>   
    <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="51%" class="home_tx">Keyword</td>
        <td width="49%"><asp:TextBox ID="TextBox1" runat="server" 
            ></asp:TextBox>
          <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" 
            
            
            >
            <asp:ListItem Value="All the  words"></asp:ListItem>
            <asp:ListItem Value="Any of the words"></asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">sex</td>
        <td><asp:DropDownList ID="DropDownList2" runat="server" 
            >
          <asp:ListItem Value="Both">Both</asp:ListItem>
          <asp:ListItem Value="Male"></asp:ListItem>
          <asp:ListItem Value="Female"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Marital Status</td>
        <td><asp:DropDownList ID="DropDownList3" runat="server" 
            >
          <asp:ListItem Value="Any"></asp:ListItem>
          <asp:ListItem Value="Never Married"></asp:ListItem>
          <asp:ListItem Value="Married"></asp:ListItem>
          <asp:ListItem Value="Widowed"></asp:ListItem>
          <asp:ListItem Value="Divorced"></asp:ListItem>
          <asp:ListItem Value="Separated"></asp:ListItem>
          <asp:ListItem Value="Others"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Academic&nbsp; Qualification </td>
        <td><asp:DropDownList ID="DropDownList4" runat="server" 
            
            
            datasourceid="AccessDataSource1" DataTextField="A_Qualification" 
            DataValueField="A_Qualification"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Profissional&nbsp; Qualification </td>
        <td><asp:DropDownList ID="DropDownList5" 
            runat="server" 
            
            
            datasourceid="AccessDataSource2" DataTextField="Professional_Qualification" 
            DataValueField="Professional_Qualification"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Experience(yrs)&nbsp;&nbsp;</td>
        <td>Min.&nbsp;
           <asp:DropDownList ID="DropDownList6" runat="server" 
            
            >
            <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
        </asp:DropDownList>
          to&nbsp;Max.
           <asp:DropDownList ID="DropDownList7" runat="server" 
            
            >
            <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
        </asp:DropDownList>
&nbsp; </td>
      </tr>
      <asp:Panel ID="pnctc" runat="server" Visible="false">
      
      
      <tr>
        <td class="home_tx">Current CTC </td>
        <td>Min.
          <asp:DropDownList ID="DropDownList8" runat="server" 
            
            >
            <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
        </asp:DropDownList>
to Max.
<asp:DropDownList ID="DropDownList9" runat="server" 
            
            >
            <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      
      </asp:Panel>
      <tr>
        <td class="home_tx">Functional&nbsp;&nbsp; Area</td>
        <td> <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>        
             
        
            <asp:DropDownList ID="DropDownList10" runat="server" 
                datasourceid="AccessDataSource8" DataTextField="fun_name" 
            DataValueField="fun_name" AutoPostBack="True" 
                onselectedindexchanged="DropDownList10_SelectedIndexChanged" >
            </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel></td>
      </tr>
      <tr>
        <td class="home_tx">Sub Functional&nbsp; Area</td>
        <td><asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate>
        <asp:DropDownList ID="DropDownList13" runat="server" 
            
            > </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel></td>
      </tr>
      <tr>
        <td class="home_tx">Employers</td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="283px" 
           ></asp:TextBox><br />Select in&nbsp;<asp:DropDownList ID="DropDownList11" runat="server" 
            
            
            ><asp:ListItem Value="Current Employee">Current Employee</asp:ListItem>
            <asp:ListItem>Previous Employee</asp:ListItem>
            <asp:ListItem Value="Both  Employee"></asp:ListItem>
          </asp:DropDownList>
      </tr>
      <tr>
        <td class="home_tx">Designation</td><td><asp:TextBox ID="TextBox3" runat="server" Width="283px" 
           ></asp:TextBox><br />
        
          Select in
          <asp:DropDownList 
            ID="DropDownList12" runat="server" 
            
            
            
            >
            <asp:ListItem Value="Current Employee"></asp:ListItem>
            <asp:ListItem Value="Previous Employee"></asp:ListItem>
            <asp:ListItem Value="Both  Employee"></asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr>
        <td colspan="2"> <div align="center"><asp:Button ID="Search" runat="server" 
        
        Text="Search" OnClick="Search_Click" />&nbsp;&nbsp; <asp:Label ID="lbresult" runat="server"></asp:Label>
         </div></td>
        </tr>
    </table>   <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
        </asp:SqlDataSource>
		 <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
        </asp:SqlDataSource>
   
    
        
   
  <asp:SqlDataSource ID="AccessDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
        </asp:SqlDataSource> 
   
  
   
        <asp:SqlDataSource ID="AccessDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
        </asp:SqlDataSource>
        </div></td>
          </tr>
        </table></div>
              </asp:Content>
