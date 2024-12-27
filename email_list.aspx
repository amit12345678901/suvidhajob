<%@ Page Language="C#"  CodeFile="email_list.aspx.cs" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" Inherits="placement_email_list" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <div>    <asp:GridView ID="GridView1" runat="server" AllowPaging="true" EmptyDataText="Sorry, No Record" PageSize="25" RowStyle-VerticalAlign="Top" onpageindexchanging="GridView1_PageIndexChanging"  Width="414px"></asp:GridView>               </div>   </asp:Content>
