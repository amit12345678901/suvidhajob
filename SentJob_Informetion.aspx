<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SentJob_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="SentJob_Informetion" %>

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
    <table width="95%" border="0" align="center">
        <tr>
            <td height="350px"></td>
        </tr>
        <tr>
            <td height="50px">
                <p align="center" style="font: 30px Calibri; color: Black;">JOB APPLICATION SUCCESSFUL.</p>
            </td>
        </tr>
        <tr>
            <td height="50px">
                <p align="center" style="font: 15px Calibri; color: Black;"><a href="Overview_Form.aspx">Got to your overview page </a></p>
            </td>
        </tr>
        <tr>
            <td height="350px"></td>
        </tr>
    </table>
    <br />
</asp:Content>
