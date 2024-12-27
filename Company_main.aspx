<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_main.aspx.cs" MasterPageFile="~/Front_Master.master"  Inherits="Company_main" %><asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><!---------------------------------banner-----------------------------><div id="employerbg"><div class="aboutblank"></div></div><!-----------------------------------divider-------------------------------------------><div id="dividerbg"></div><!----------------------------------content----------------------------------------><div id="contentbg"><div class="contentblank"><div class="main-cont"><div class="abt-lft" style="height:400px;"><div class="abt-lft-bdy"><ul>   <li><a href="Company_main.aspx">Overview</a></li>    <li><a href="post_vaca_add.aspx" >Add Vacancy</a></li>    <li><a href="Active_Vacancy.aspx" >Reactive Vacancy</a></li>    <li><a href="Company_Apply_Informetion.aspx" > Vacancy Status</a></li>    <li><a href="Resume_Search_Form.aspx" >Resume Search</a></li>    <li><a href="Selected_Resume.aspx" >Selected Resume Folderwise</a></li>	<li><a href="AddFolder.aspx" >Add Folder </a></li>	<li><a href="Company_UpdateProfile.aspx" >Update Profile </a></li>	<li><a href="ChangePassword_Company.aspx" >Change Password </a></li>    <li class="noborder"><a href="EmployerLogout.aspx" >Logout</a></li></ul></div></div><div class="abt-rht">   <p><span class="text"><H2>Employer Zone</H2></span>    <br />                                                                      <div align="center"><br />                <br />                <br />                <br />                <br />            <h1>  Welcome to our website. </h1></div>                                                      </div></div></div></div></asp:Content>
