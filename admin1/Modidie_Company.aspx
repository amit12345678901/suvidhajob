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
<table>
        <td width="756" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Modify Company</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_modify_company.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify"> 
                <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <p>
        
    </p>
    <table width="90%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="51%" class="home_tx">Company Name &nbsp;<font color="red">*</font></td>
        <td width="49%"><asp:TextBox ID="cname" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">User Name &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="uname" runat="server" 
             ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Password &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="password" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Client&nbsp; Number </td>
        <td><asp:TextBox ID="c_no" runat="server" 
            
           
            ReadOnly="True"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Branch </td>
        <td><asp:TextBox ID="branch" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">City &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="city" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><p>Address &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="address" runat="server" 
      ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Email &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="email" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area </td>
        <td><asp:TextBox ID="t_n2" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Sub Functional Area</td>
        <td><asp:TextBox ID="t_no2" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Phone </td>
        <td><asp:TextBox ID="phone" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><p>Mobile &nbsp;<font color="red">*</font></td>
        <td><asp:TextBox ID="mobile" runat="server" 
        ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><p>Company Profile</p></td>
        <td><asp:TextBox ID="c_profile" runat="server" 
       ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><asp:TextBox ID="designation" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Size </td>
        <td><asp:TextBox ID="size1" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><p>Branches</p></td>
        <td><asp:TextBox ID="branches" runat="server" 
       ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"><p>Employee Length</p></td>
        <td><asp:TextBox ID="empl" runat="server" 
       ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Website</td>
        <td><asp:TextBox ID="website" runat="server" 
            ></asp:TextBox></td>
      </tr>
     
      <tr>
        <td class="home_tx">Login Authorise</td>
        <td>
          <asp:CheckBox ID="auth_txt" runat="server" 
            />          </td>
      </tr>
     
       
      <tr>
        <td class="home_tx">Resume Search Authorise</td>
        <td><asp:CheckBox ID="rs_auth" runat="server" 
      />        </td>
      </tr>
      
             
      <tr>
        <td class="home_tx">Job Posting Authorise</td>
        <td><asp:CheckBox ID="jp_auth" runat="server" 
      />        </td>
      </tr>
      
      <tr>
                  <td class="home_tx" align="left" valign="top">Closing Date </td>
                  <td class="style1"><div align="left"><asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>    
                    <asp:Calendar ID="stdate" runat="server" Visible="False" 
                          onselectionchanged="stdate_SelectionChanged"></asp:Calendar> 
                    <asp:Label ID="lbstdate" ForeColor="Black" runat="server"></asp:Label>                 
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">PickDate...</asp:LinkButton>
                     </ContentTemplate>
             </asp:UpdatePanel>
                  </div></td>
                </tr>
                
                <asp:Panel ID="pn8" runat="server" Visible="false">
                 <tr>
                  <td width="50%" class="home_tx">Remark </td>
                  <td width="50%">                    
                      <asp:TextBox ID="remarks" runat="server" TextMode="MultiLine" 
            
            
           
            AutoCompleteType="Disabled" ></asp:TextBox></td>
                </tr>
                </asp:Panel>
      <tr>
        <td class="home_tx">Developed&nbsp;By </td>
        <td><asp:TextBox ID="dev" runat="server" 
           ></asp:TextBox></td>
      </tr>
    </table>
    
    <div align="center">
    
      <br />
      <asp:Button ID="update" runat="server" 
       
        Text="update" onclick="update_Click" /></div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      </asp:Content>

