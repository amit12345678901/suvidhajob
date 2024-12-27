<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imp_news.aspx.cs" Inherits="admin_imp_news" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table width="85%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                
                <tr>
                  <td width="50%" class="home_tx">News</td>
                  <td width="50%">                    <asp:TextBox ID="news" TextMode="MultiLine" runat="server" 
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                
                
                
                 <tr>
                  <td colspan="2"><div align="center">
                    <asp:Button ID="Add" runat="server"   Text="Submit" onclick="Add_Click" />
            <br /> 
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  </div></td>
                  </tr>
                  </table>
                  <br /><br />
                  <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" HorizontalAlign="Center"
        onrowcreated="GridView1_RowCreated"  AllowPaging="true" PageSize="10" DataKeyNames="id" onpageindexchanging="GridView1_PageIndexChanging">
        
        
       <Columns>
        
                     <asp:TemplateField HeaderText="Subject"><ItemTemplate>
       <asp:Label ID="lbdt2" runat="server" Text='<%# Eval("news") %>'></asp:Label>
                     </ItemTemplate></asp:TemplateField>
                   
            <asp:ButtonField ButtonType="Image" HeaderText="Edit"  CommandName="Modifie"    ImageUrl="~/images/edit1.JPEG"
                ShowHeader="True"  />
         
           <asp:TemplateField HeaderText="Delete"><ItemTemplate>
           <asp:ImageButton ID="im" runat="server" Width="30px" Height="30px"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete?');'yes,no'" ImageUrl="~/images/delete.JPEG"
                               />
           </ItemTemplate></asp:TemplateField>
           
             
        </Columns>
         
        <AlternatingRowStyle ForeColor="#666699" />
         
    </asp:GridView>
    </div>
    </form>
</body>
</html>
