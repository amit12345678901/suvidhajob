<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewprofile_Form.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Viewprofile_Form" %>

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

 
  <p><span class="text"><H2>View Profile</H2></span>
    <br />
    
    
<table width="100%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="40%" class="home_tx">Name </td>
        <td width="60%">
            <% =arr[0] %></td>
      </tr>
      <tr>
        <td class="home_tx">Date of Birth </td>
        <td><% =arr[1] %> /
          <% =arr[2] %> /
         <% =arr[3] %></td>
      </tr>
      <tr>
        <td class="home_tx">Sex</td>
        <td><% =arr[4] %></td>
      </tr>
      <tr>
        <td class="home_tx">Marital Status</td>
       <td> <% =arr[5] %></td>
      </tr>
      <tr>
        <td class="home_tx">Email</td>
        <td><% =arr[6] %></td>
      </tr>
      <tr>
        <td class="home_tx">Address</td>
        <td><% =arr[7] %></td>
      </tr>
      <tr>
        <td class="home_tx">Country</td>
        <td><% =arr[8] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; Location</td>
        <td><% =arr[9] %></td>
      </tr>
      <tr>
        <td class="home_tx">Telephone </td>
        <td><% =arr[10] %></td>
      </tr>
      <tr>
        <td class="home_tx">Mobile</td>
        <td>          
            <% =arr[11] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>ACADEMIC/ PROFESSIONAL QUALIFICATION</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Academic qualification</td>
        <td><% =arr[12] %></td>
      </tr>
      <tr>
        <td class="home_tx">profesinal qualification</td>
        <td><% =arr[13] %></td>
      </tr>
      <tr>
        <td class="home_tx">Inistitute</td>
        <td><% =arr[14] %></td>
      </tr>
      <tr>
        <td class="home_tx">Year of Graduation</td>
        <td><% =arr[15] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>RESUME SUMMERY</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Resume Title</td>
        <td><% =arr[16] %></td>
      </tr>
      <tr>
        <td class="home_tx">Key Skill</td>
        <td><% =arr[17] %></td>
      </tr>
      <tr>
        <td class="home_tx">Experience</td>
        <td><% =arr[18] %></td>
      </tr>
      <tr>
        <td class="home_tx">Industry</td>
        <td><% =arr[19] %></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area</td>
        <td><% =arr[20] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current Employers </td>
        <td><% =arr[21] %></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><% =arr[22] %></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><% =arr[23] %></td>
      </tr>
      <tr>
        <td class="home_tx">Period </td>
        <td><% =arr[24] %></td>
      </tr>
      <tr>
        <td class="home_tx">Summery</td>
        <td><% =arr[25] %></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Language Known</td>
        <td><% =arr[29] %>
        
                    <% =arr[32] %>
          <% =arr[33] %>         
         <% =arr[34] %>          
          <br />
          <% =arr[30] %>
          <% =arr[35] %>
          <% =arr[36] %>
          <% =arr[37] %>         
          <br />
        <% =arr[31] %>  
          <% =arr[38] %> 
          <% =arr[39] %>
          <% =arr[40] %>
        
          
          
          </td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>DESIRED&nbsp; JOB</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Job Type</td>
        <td><% =arr[26] %></td>
      </tr>
      <tr>
        <td class="home_tx">Employment Status </td>
        <td><% =arr[27] %></td>
      </tr>
      <tr>
        <td class="home_tx">Prefered Location</td>
        <td><% =arr[28] %></td>
      </tr>
      
        <tr>
        <td class="home_tx">Click For Cv</td>
        <td><asp:LinkButton ID="downcv" runat="server" Text="Click Here" onclick="downcv_Click"></asp:LinkButton> &nbsp; &nbsp; <asp:Label ID="Label1" runat="server"></asp:Label></td>
                                                    </td>
      </tr>
    </table>    
    <br /></div>
</div>
</div>
</div>
   
  
  </asp:Content>