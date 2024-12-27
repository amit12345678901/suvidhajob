<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Addsys_update.aspx.cs" Inherits="Addsys_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Suvidha Jobs - Administrator</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<LINK href="../placement/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #CCCCCC;
}
.style2 {color: #003399}
-->
</style>
</head>
<body>
<form id="frm" runat="server">
<asp:ScriptManager ID="scp" runat="server"></asp:ScriptManager>

 By :- <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                 <ContentTemplate> 
                    <asp:DropDownList ID="page_name" DataTextField="name1" 
                          DataValueField="id" AutoPostBack="true" runat="server"  onselectedindexchanged="page_name_SelectedIndexChanged1"
                          DataSourceID="SqlDataSource1">               
                      </asp:DropDownList>            
                    </ContentTemplate>
             </asp:UpdatePanel>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>   
<asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
        
         
        DataKeyNames="id" onpageindexchanging="GridView1_PageIndexChanging" 
        AllowPaging="True" PageSize="15">
        
        <Columns>
           <asp:ButtonField ButtonType="Image" CommandName="Modifie" HeaderText="Modify" ImageUrl="~/images/edit1.JPEG"
                ShowHeader="True" Text="Modify" />
           
           <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete the item?');'yes,no'"
               
                                
                                
                             ImageUrl="~/images/delete.JPEG"
                               />
           </ItemTemplate></asp:TemplateField>
           
        </Columns>
         
    </asp:GridView>  </ContentTemplate>
             </asp:UpdatePanel><br /><br />
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    SelectCommand="SELECT id,name1 FROM [page_name]"></asp:SqlDataSource>
</form>
</body>
</html>
