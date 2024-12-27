<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employer_Login.aspx.cs" Inherits="Employer_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Ack</title>

</head>
<body>

       <form id="form1" runat="server">
              <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                <tr>
                  <td width="50%" class="home_tx">User Name</td>
                  <td width="50%">                    <asp:TextBox ID="TextBox1" runat="server" 
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                <tr>
                  <td class="home_tx">Password</td>
                  <td><asp:TextBox ID="TextBox2" runat="server" 
            
             
            TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                  <td colspan="2"><div align="center">
                    <asp:Button ID="Signin" runat="server" OnClick="Signin_Click" 
           
            Text="Sign in" />                  
                    <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" 
      
        Text="Reset" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  </div></td>
                  </tr>
              </table>
  </form>      
</body>
</html>
