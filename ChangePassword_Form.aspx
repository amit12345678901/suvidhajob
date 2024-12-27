<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword_Form.aspx.cs" MasterPageFile="~/Front_Master.master"  Inherits="ChangePassword_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

<link href="../admin/css/bootstrap.css" rel="stylesheet" type="text/css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><!---------------------------------banner-----------------------------><div id="candidatebg"><div class="aboutblank"></div></div><!-----------------------------------divider-------------------------------------------><div id="dividerbg"></div><!----------------------------------content---------------------------------------->
<div id="contentbg" style="background:#eff0f1;">
<div class="contentblank">
<div class="main-cont">
<div class="abt-lft" style="height:300px;">
<div class="abt-lft-bdy1"><ul>  <li><a href="Overview_Form.aspx" class="side_menu">Overview</a></li>    <li><a href="Candidate_apply_jobs.aspx" class="side_menu">Job Applied</a></li>    <li><a href="Viewprofile_Form.aspx" class="side_menu">View Profile </a></li>    <li><a href="EditProfile_Form.aspx" class="side_menu">Edit Profile </a></li>    <li><a href="cv_upload.aspx" class="side_menu">Add Profile (Word Format) </a></li>    <li><a href="update_cv.aspx" class="side_menu">Edit Profile (Word Format) </a></li>	<li><a href="ChangePassword_Form.aspx" class="side_menu">Change Password </a></li>	<li><a href="Block_Form.aspx" class="side_menu">Block Profile </a></li>    <li class="noborder"><a href="Candidate_Logout.aspx" class="side_menu">Logout</a></li></ul></div></div><div class="abt-rht">   <span class="text"><H2>Change Password</H2></span>    <table class="table table-bordered" style="background:#fff;">      <tr>        <td width="50%" class="home_tx">Old Password </td>        <td width="50%"><asp:TextBox ID="TextBox1" TextMode="Password" runat="server"             ></asp:TextBox></td>      </tr>      <tr>        <td class="home_tx">New Password </td>        <td><asp:TextBox ID="TextBox2" runat="server"                                      TextMode="Password"></asp:TextBox></td>      </tr>      <tr>        <td class="home_tx">Confirm Password </td>        <td><asp:TextBox ID="TextBox3" runat="server"                                  TextMode="Password"></asp:TextBox></td>      </tr>      <tr>        <td colspan="2" align="center"> <asp:Button ID="Change" runat="server" onclick="Change_Click"                        Text="Change Password" />                  <asp:Button ID="Reset" runat="server"                        Text="Reset" OnClick="Reset_Click" />            <asp:Label ID="Label1" runat="server"></asp:Label></td></tr></table>            </div> </div> </div> </div> </asp:Content>
