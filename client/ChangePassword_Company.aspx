<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/cvsearch_master.master" CodeFile="ChangePassword_Company.aspx.cs" Inherits="ChangePassword_Company" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="80%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="50%" class="home_tx">Old&nbsp; Password </td>
        <td width="50%"><asp:TextBox ID="TextBox1" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">New&nbsp; Password </td>
        <td><asp:TextBox ID="TextBox2" runat="server" 
            
             
            TextMode="Password"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Confirm&nbsp; Password </td>
        <td><asp:TextBox ID="TextBox3" runat="server" 
            
         
            TextMode="Password"></asp:TextBox></td>
      </tr>
      <tr>
        <td colspan="2"> <div align="center"><asp:Button ID="Change" runat="server" onclick="Change_Click" 
           
            Text="Change Password" />        
          <asp:Button ID="Reset" runat="server" 
           
            Text="Reset" OnClick="Reset_Click" /><br /><asp:Label ID="Label1" runat="server"></asp:Label>
         </div></td>
        </tr>
    </table>  
   
</asp:Content>

