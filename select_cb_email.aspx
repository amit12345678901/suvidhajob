<%@ Page Language="C#" AutoEventWireup="true" CodeFile="select_cb_email.aspx.cs" Inherits="select_cb_email" MasterPageFile="~/Front_Master.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    Total Cv Select For Emails:- <% =total %>
    <table border="1" cellpadding="2" cellspacing="1" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC" align="center">
        <tr>
            <td class="home_tx">Subjecct </td>
            <td class="style5">
                <asp:TextBox ID="subject" TextMode="MultiLine" runat="server" Height="57px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" align="left">Message</td>
            <td align="left">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <cc1:Editor ID="Editor2" runat="server" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="home_tx">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style5">
                <asp:Button ID="send" Text="Send" runat="server" OnClick="send_Click" /></td>
        </tr>
    </table>
    <p>
        <asp:Button ID="back" runat="server" Text="Back" OnClick="back_Click" />
    </p>
</asp:Content>
