<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Urgent_Jobs_Search_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Urgent_jobs_Search_Informetion" %><asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   <span class="text">Urgent Requirement</span><br />  <br />               <br />   <div align="center">    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>    </div>    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" BackColor="#e4e4e4"       EmptyDataText="Sorry not available"                  onrowcancelingedit="GridView1_RowCancelingEdit"         onselectedindexchanged="GridView1_SelectedIndexChanged"         DataKeyNames="pv_id_txt" onrowediting="GridView1_RowEditing" AllowPaging="True" PageSize="10"         onrowcreated="GridView1_RowCreated" onpageindexchanging="GridView1_PageIndexChanging">        <Columns>            <asp:ButtonField ButtonType="Button" CommandName="Apply" Text="Apply  Now"  HeaderText="Apply Now"/>            <asp:ButtonField ButtonType="Button" CommandName="Detail"                 HeaderText="Job Details" ShowHeader="True" Text="Details" />        </Columns>		<AlternatingRowStyle BackColor="#cdcdcd" ForeColor="Black" />    </asp:GridView>               </asp:Content>
