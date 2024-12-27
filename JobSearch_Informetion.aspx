<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSearch_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="JobSearch_Informetion" %><asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <span class="text">Search Result</span><br />  <br />  <br />         <div align="center">     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>       <asp:GridView ID="GridView1" runat="server" EmptyDataText="Sorry no result." BackColor="#e4e4e4"                onrowcommand="GridView1_RowCommand"                DataKeyNames="pv_id_txt"         onselectedindexchanged="GridView1_SelectedIndexChanged"         onrowcreated="GridView1_RowCreated">    <Columns>    <asp:ButtonField ButtonType="Button" CommandName="Apply"                 HeaderText="For Apply" ShowHeader="True" Text="Apply Now" /> <asp:ButtonField ButtonType="Button" CommandName="Detail"                 HeaderText="About Job" Text="Details" />    </Columns>	 <AlternatingRowStyle BackColor="#cdcdcd" ForeColor="Black" />    </asp:GridView>           </div>              <br />  <br />         </asp:Content>
