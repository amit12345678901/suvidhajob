<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume_Search_Informetion.aspx.cs"  Inherits="Resume_Search_Informetion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
 <form id="form1" runat="server">
        <table width="95%"  border="0" align="center">
          <tr>
            <td><div align="justify"> 
            
             Resume Found :-  <asp:Label ID="email_found" runat="server"></asp:Label>
   <br /><br />
   
                    <asp:Button ID="selall" runat="server" Text="Select All"  onclick="selall_Click" /> &nbsp;&nbsp; 
                        <asp:Button ID="deselall" runat="server"  Text="Deselect All" 
                            onclick="deselall_Click" />
      
                <br />
            
    <asp:GridView ID="GridView1" runat="server" 
        
       
        DataKeyNames="id_txt"  
        onrowcommand="GridView1_RowCommand" onrowcreated="GridView1_RowCreated" 
        EmptyDataText="Sorry no resume Found, Please Try Again" >
        <Columns>
        
         <asp:TemplateField HeaderText="Checked"><ItemTemplate>
           <asp:CheckBox ID="ch" runat="server"  />   
           </ItemTemplate></asp:TemplateField>
            <asp:ButtonField ButtonType="Button" CommandName="Select1" 
                HeaderText="Resume  Selected" ShowHeader="True" Visible="false" Text="Select" />
            <asp:ButtonField ButtonType="Button" CommandName="Detail" HeaderText="Full  CB" 
                ShowHeader="True" Text="Detail" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
              </td>
          </tr>
        </table>
        
        <br />
         <asp:Button ID="send" Text="Email Send" runat="server" 
                 onclick="send_Click" />
        
         </form>
</body>
</html>

