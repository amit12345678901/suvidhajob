<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_UpdateProfile.aspx.cs" MasterPageFile="~/Front_Master.master"  Inherits="Company_UpdateProfile" %>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><!---------------------------------banner-----------------------------><div id="employerbg"><div class="aboutblank"></div></div><!-----------------------------------divider-------------------------------------------><div id="dividerbg"></div><!----------------------------------content----------------------------------------><div id="contentbg"><div class="contentblank"><div class="main-cont"><div class="abt-lft" style="height:400px;"><div class="abt-lft-bdy"><ul>   <li><a href="Company_main.aspx">Overview</a></li>    <li><a href="post_vaca_add.aspx" >Add Vacancy</a></li>    <li><a href="Active_Vacancy.aspx" >Reactive Vacancy</a></li>    <li><a href="Company_Apply_Informetion.aspx" > Vacancy Status</a></li>    <li><a href="Resume_Search_Form.aspx" >Resume Search</a></li>    <li><a href="Selected_Resume.aspx" >Selected Resume Folderwise</a></li>	<li><a href="AddFolder.aspx" >Add Folder </a></li>	<li><a href="Company_UpdateProfile.aspx" >Update Profile </a></li>	<li><a href="ChangePassword_Company.aspx" >Change Password </a></li>    <li class="noborder"><a href="EmployerLogout.aspx" >Logout</a></li></ul></div></div><div class="abt-rht">   <p><span class="text"><H2>Update Profile</H2></span>    <br />                                    <table width="100%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">               <tr>                 <td class="home_tx">Company Name </td>                 <td><asp:TextBox ID="cname" runat="server" Width="250px"             style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">City</td>                 <td><asp:TextBox ID="city" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx"><p>Address</p></td>                 <td><asp:TextBox ID="address" runat="server"         Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Email </td>                 <td><asp:TextBox ID="email" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Catagory </td>                 <td><asp:TextBox ID="t_n2" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <asp:Panel ID="pn25" runat="server" Visible="false">               <tr>                 <td class="home_tx">Sub Functional Area </td>                 <td><asp:TextBox ID="t_no2" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               </asp:Panel>               <tr>                 <td class="home_tx">phone </td>                 <td><asp:TextBox ID="phone" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Mobile</td>                 <td><asp:TextBox ID="mobile" runat="server"         Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Company Profile</td>                 <td><asp:TextBox ID="c_profile" runat="server"         Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Designation</td>                 <td><asp:TextBox ID="designation" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Companny Size </td>                 <td><asp:TextBox ID="size1" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Branches</td>                 <td><asp:TextBox ID="branches" runat="server"         Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Employee Length</td>                 <td><asp:TextBox ID="empl" runat="server"         Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td class="home_tx">Website </td>                 <td><asp:TextBox ID="website" runat="server"             Width="250px" style=""></asp:TextBox></td>               </tr>               <tr>                 <td colspan="2"><div align="center">                   <asp:Button ID="update" runat="server"                 Text="Update" OnClick="update_Click" />                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div></td>                </tr>      </table>        <br /></td>  </tr></table> </div></div></div></div>                     </asp:Content>
