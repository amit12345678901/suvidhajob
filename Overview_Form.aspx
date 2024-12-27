<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Overview_Form.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Overview_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><!---------------------------------banner----------------------------->
<!----------------------------------content---------------------------------------->
<div id="contentbg" style="background:#eff0f1;">
<div class="contentblank">
<div class="main-cont">
<div class="abt-lft" style="height:300px;">
<div class="abt-lft-bdy1">
<ul>  <li><a href="Overview_Form.aspx" class="side_menu">Overview</a></li>    <li><a href="Candidate_apply_jobs.aspx" class="side_menu">Job Applied</a></li>    <li><a href="Viewprofile_Form.aspx" class="side_menu">View Profile </a></li>    <li><a href="EditProfile_Form.aspx" class="side_menu">Edit Profile </a></li>    <li><a href="cv_upload.aspx" class="side_menu">Add Profile (Word Format) </a></li>    <li><a href="update_cv.aspx" class="side_menu">Edit Profile (Word Format) </a></li>	<li><a href="ChangePassword_Form.aspx" class="side_menu">Change Password </a></li>	<li><a href="Block_Form.aspx" class="side_menu">Block Profile </a></li>    <li class="noborder"><a href="Candidate_Logout.aspx" class="side_menu">Logout</a></li></ul>
</div>
</div>
<div class="abt-rht">   <h2>Overview</h2>                                              

  <table class="table table-bordered" style="background:#fff;">                                        <tr>                      <td width="35%" height="25" valign="baseline">Name </td>                      <td width="65%"><% =arr[1] %></td>                    </tr>                    <tr>                      <td valign="baseline">Email </td>                    <td>                     <% =arr[2] %></td>                    </tr>                    <tr>                      <td height="25">Current                                                     Location</td>                      <td><span>                       <% =arr[3] %>                      </span></td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Landline Phone</td>                      <td><% =arr[4] %>            </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Mobile</td>                      <td>                    <% =arr[5] %>    </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Industry</td>                      <td><% =arr[6] %>            </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Functional&nbsp; Area</td>                      <td><% =arr[7] %>            </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Sub Functional Area</td>                      <td><% =arr[13] %>            </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Role</td>                      <td><% =arr[14] %>            </td>                    </tr>                    <tr>                      <td height="25" valign="baseline">Year of&nbsp; Experience </td>                      <td><% =arr[8] %>          </td>                    </tr>                    <tr>                      <td valign="baseline">Academic Qalification</td>                      <td><% =arr[9] %></td>                    </tr>
    <tr>
      <td colspan="2"><h4>My Resume</h4></td>
      </tr>
    <tr>
      <td valign="baseline">Account  Create</td>
      <td><% =arr[11] %></td>
    </tr>
    <tr>
      <td valign="baseline">Current Status</td>
      <td><% =arr[12] %></td>
    </tr>
  </table>
           <asp:SqlDataSource             ID="AccessDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"             SelectCommand="SELECT [city_name] FROM [city_master]">        </asp:SqlDataSource>                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>           </div></div></div></div>             </asp:Content>
