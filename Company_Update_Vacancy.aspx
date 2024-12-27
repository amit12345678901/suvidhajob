<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Update_Vacancy.aspx.cs" MasterPageFile="~/Front_Master.master"  Inherits="Company_Update_Vacancy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    <asp:GridView ID="GridView1" runat="server"                          AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging"         onrowcommand="GridView1_RowCommand" onrowcreated="GridView1_RowCreated"         DataKeyNames="pv_id_txt">        <Columns>            <asp:ButtonField ButtonType="Button" CommandName="mod" HeaderText="Modify"                 ShowHeader="True" Text="Modify" />            <asp:ButtonField ButtonType="Button" CommandName="Delete1" HeaderText="Status"                 ShowHeader="True" Text="Block" />        </Columns>    </asp:GridView>    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>   </asp:Content>
