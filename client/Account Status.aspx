<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account Status.aspx.cs" Inherits="Account_Status" Title="Untitled Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
 <form id="form1" runat="server">
Total Cv Search Number:- <% =total %><br />
   <br />
 <asp:GridView ID="GridView1" runat="server" 
          AllowPaging="true" PageSize="20" 
        onrowcreated="GridView1_RowCreated" onpageindexchanging="GridView1_PageIndexChanging">  
        <AlternatingRowStyle ForeColor="#666699" />
            <Columns>    
        <asp:TemplateField HeaderText="Log-In Date" >
        <ItemTemplate>
        <asp:Label ID="odate" runat="server" Text='<%# Eval("date1") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Number of Show Cv" >
        <ItemTemplate>
        <asp:Label ID="search_count" runat="server" Text='<%# Eval("searh_num") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Log-in Number" >
        <ItemTemplate>
        <asp:Label ID="log_count" runat="server" Text='<%# Eval("login_time") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <p>
       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
<br /><br />
Spend:- <% =totalspend %> <br />

Remaining Cv Search Number:- <% =remain %> <br /> <br />



</form>
</body>
</html>

