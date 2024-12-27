<%@ Page Language="C#" AutoEventWireup="true" CodeFile="send_sms.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="send_sms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   <asp:ScriptManager ID="ScriptManager1" runat="server">    </asp:ScriptManager>  Total Cv Select For Emails:- <% =total %> <table border=1 cellpadding="2" cellspacing="1" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC" align=center>               <tr>        <td class="home_tx"> Message </td>         <td class="style5"> <asp:TextBox ID="subject" TextMode="MultiLine" runat="server" onkeypress="return MaxLength(this, 140);" onblur="Limit(this,140)"                  Height="57px" Width="211px"></asp:TextBox>  </td>         </tr>                                             <tr>        <td class="home_tx"> <asp:Label ID="Label1" runat="server"></asp:Label> </td>         <td class="style5">            <asp:Button ID="send" Text="Send" runat="server" onclick="send_Click"                  /></td>         </tr>                </table>    </asp:Content>
