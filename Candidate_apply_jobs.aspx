<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Front_Master.master" CodeFile="Candidate_apply_jobs.aspx.cs" Inherits="Candidate_apply_jobs" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

<!----------------------------------content---------------------------------------->
<div id="contentbg" style="background:#eff0f1;"><div class="contentblank"><div class="main-cont"><div class="abt-lft" style="height:400px; background-color:#FFF;"><div class="abt-lft-bdy1"><ul>  <li><a href="Overview_Form.aspx" class="side_menu">Overview</a></li>    <li><a href="Candidate_apply_jobs.aspx" class="side_menu">Job Applied</a></li>    <li><a href="Viewprofile_Form.aspx" class="side_menu">View Profile </a></li>    <li><a href="EditProfile_Form.aspx" class="side_menu">Edit Profile </a></li>    <li><a href="cv_upload.aspx" class="side_menu">Add Profile (Word Format) </a></li>    <li><a href="update_cv.aspx" class="side_menu">Edit Profile (Word Format) </a></li>	<li><a href="ChangePassword_Form.aspx" class="side_menu">Change Password </a></li>	<li><a href="Block_Form.aspx" class="side_menu">Block Profile </a></li>    <li class="noborder"><a href="Candidate_Logout.aspx" class="side_menu">Logout</a></li></ul></div></div><div class="abt-rht">   <p><span class="text"><H2>Job Applied</H2></span>         	 <table>          <tr>            <td>
<div align="center">                  <asp:GridView ID="GridView1" runat="server" class="table table-bordered"></asp:GridView>    <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>   </div>            </td>          </tr>      </table>                                          </div></div>        </div></div>                                                   </asp:Content>
