<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job_Catagories_more.aspx.cs" MasterPageFile="~/Front_Master.master"    Inherits="Job_Catagories_more" %>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><!---------------------------------banner-----------------------------><div id="candidatebg"><div class="aboutblank"></div></div><!-----------------------------------divider-------------------------------------------><div id="dividerbg"></div><!----------------------------------content----------------------------------------><div id="contentbg"><div class="contentblank"><div class="main-cont"><div class="abt-lft" style="height:350px;"><div class="abt-lft-bdy"></div></div><div class="abt-rht">   <p><span class="text"><H2>Job By Category</H2></span>    <br />            <br /><div align="center">      <asp:GridView ID="GridView1" runat="server" AllowPaging="True"         AutoGenerateColumns="False" DataKeyNames="in_txt"         DataSourceID="AccessDataSource1" PageSize="20"                                 onselectedindexchanged="GridView1_SelectedIndexChanged"             onrowcommand="GridView1_RowCommand" ForeColor="Black">    <Columns>    <asp:ButtonField ButtonType="link" CommandName="Apply"          DataTextField="in_txt" HeaderText="Industry" ControlStyle-Font-Underline="false"          SortExpression="ProductName" />    </Columns>    </asp:GridView>            <asp:SqlDataSource ID="AccessDataSource1" runat="server"                     ConnectionString="<%$ ConnectionStrings:mycon %>"                     SelectCommand="SELECT  Distinct[in_txt] FROM [post_vaca]  where hidden_txt=0"></asp:SqlDataSource>                     </div></div></div></div></div>          </asp:Content>
