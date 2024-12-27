<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Addver_expire_management.aspx.cs" Inherits="Addver_expire_management" %>

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
Date wise &nbsp;&nbsp; <asp:DropDownList ID="date1"  runat="server" 
        AutoPostBack="true" onselectedindexchanged="date1_SelectedIndexChanged" 
                        >
                           <asp:ListItem>Select</asp:ListItem>
                           <asp:ListItem>Expired</asp:ListItem>
                          <asp:ListItem>1 Month</asp:ListItem>
                          <asp:ListItem>2 Month</asp:ListItem>
                          <asp:ListItem>3 Month</asp:ListItem>
                          <asp:ListItem>6 Month</asp:ListItem>
                          <asp:ListItem>9 Month</asp:ListItem>
                          <asp:ListItem>12 Month</asp:ListItem>
                          </asp:DropDownList>

<asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
        
         
        DataKeyNames="a.id" onpageindexchanging="GridView1_PageIndexChanging" 
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
            <asp:TemplateField HeaderText="Page Name" >
        <ItemTemplate>
        
        <asp:Label ID="name1" runat="server" Text='<%# Eval("page_name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
         <asp:TemplateField HeaderText="Page Position" >
        <ItemTemplate>
        
        <asp:Label ID="catagorioe12" runat="server" Text='<%# Eval("page_position") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
         <asp:TemplateField HeaderText="Starting Date" >
        <ItemTemplate>
        
        <asp:Label ID="sdate1" runat="server" Text='<%# Eval("st_date") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Expire Date" >
        <ItemTemplate>
        
        <asp:Label ID="edate1" runat="server" Text='<%# Eval("en_date") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Remaining Days" >
        <ItemTemplate>
        
        <asp:Label ID="remain" runat="server" Text='<%# Eval("en_date") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
         
    </asp:GridView><br /><br />
</form>
</body>
</html>