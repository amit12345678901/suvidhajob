<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Front_Master.master"  CodeFile="Block_Form.aspx.cs"  Inherits="Block_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <!---------------------------------banner-----------------------------><div id="candidatebg"><div class="aboutblank"></div></div><!-----------------------------------divider-------------------------------------------><div id="dividerbg"></div><!----------------------------------content---------------------------------------->
<div id="contentbg" style="background:#eff0f1;"><div class="contentblank"><div class="main-cont"><div class="abt-lft" style="height:400px;"><div class="abt-lft-bdy"><ul>  <li><a href="Overview_Form.aspx" class="side_menu">Overview</a></li>    <li><a href="Candidate_apply_jobs.aspx" class="side_menu">Job Applied</a></li>    <li><a href="Viewprofile_Form.aspx" class="side_menu">View Profile </a></li>    <li><a href="EditProfile_Form.aspx" class="side_menu">Edit Profile </a></li>    <li><a href="cv_upload.aspx" class="side_menu">Add Profile (Word Format) </a></li>    <li><a href="update_cv.aspx" class="side_menu">Edit Profile (Word Format) </a></li>	<li><a href="ChangePassword_Form.aspx" class="side_menu">Change Password </a></li>	<li><a href="Block_Form.aspx" class="side_menu">Block Profile </a></li>    <li class="noborder"><a href="Candidate_Logout.aspx" class="side_menu">Logout</a></li></ul></div></div><div class="abt-rht">   <p><span class="text"><H2>Block Account</H2></span>    <br />                      <table width="95%"  border="0" align="center">          <tr>            <td><div align="center">                   <p>        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>    </p>            <p>        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>        <asp:Button ID="YES" runat="server" onclick="YES_Click"                          Text="YES" />    </p>            			</div>              </td>          </tr>        </table>         </div></div></div></div>           </asp:Content>
