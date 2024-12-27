<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quick_Jobs_Search.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Quick_Jobs_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <table width="80%" border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">      <tr class="home_tx">        <td width="50%">Keywords(s)</td>        <td width="50%"><asp:TextBox ID="TextBox2" runat="server"                         ></asp:TextBox></td>      </tr>      <tr class="home_tx">        <td>Experience</td>        <td><asp:TextBox ID="TextBox3" runat="server"                         ></asp:TextBox></td>      </tr>      <tr class="home_tx">        <td>Location</td>        <td><asp:TextBox ID="TextBox4" runat="server"             ></asp:TextBox></td>      </tr>      <tr class="home_tx">        <td>Functional Area</td>        <td><asp:TextBox ID="TextBox1" runat="server"             ></asp:TextBox></td>      </tr>      <tr class="home_tx">        <td colspan="2">   <div align="center"><asp:Button ID="SEARCH" runat="server" OnClick="SEARCH_Click"                         Text="SEARCH" />               </div></td>        </tr>    </table> <div align="center">    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>   </div>			</asp:Content>
