<%@ Page Language="C#" AutoEventWireup="true" CodeFile="our_client.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="our_client" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <span class="text">Our Clients</span><br />  <br />               <br />   <div align="center">             <asp:DataList ID="DataList1" runat="server"   Width="100%"         RepeatColumns="3" TabIndex="6" RepeatDirection="Horizontal" >                   <ItemTemplate>                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("cname") %>'></asp:Label>                               </ItemTemplate>                     </asp:DataList>       <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">Previous</asp:LinkButton>    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click1" >Next</asp:LinkButton>    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>        <br />    <asp:Label ID="Label1" runat="server"></asp:Label></div></asp:Content>
