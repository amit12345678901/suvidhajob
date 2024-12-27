<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="ForgotPassword_Company.aspx.cs" Inherits="ForgotPassword_Company" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ack Consultancy</title>
    </head>
<body>

        <table width="95%"  border="0" align="center">
          <tr>
            <td class="home_tx"><div align="justify"><form id="form1" runat="server">
              <br />
              <br />
              <br />
              <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                <tr>
                  <td width="50%" class="home_tx">User Name&nbsp;</td>
                  <td width="50%"><asp:TextBox ID="TextBox1" runat="server" 
       ></asp:TextBox></td>
                </tr>
                
                <tr>
                  <td colspan="2" class="home_tx"><div align="center">
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" 
            
            Text="Submit" />                                    
                      <asp:Label ID="Label2" runat="server" ></asp:Label>
                      <asp:Label ID="Label3" runat="server" ></asp:Label>
</div></td>
                  </tr>
              </table> 
  
   

        <div align="center"><br />
          (your user name and password will be sent to your email id)
     
            </div>
              
       <p align="center"> <asp:Label ID="Label1" runat="server" ></asp:Label>
    </p>
            </form></div>
              </td>
          </tr>
        </table>
    </body></html>
   
    
   
