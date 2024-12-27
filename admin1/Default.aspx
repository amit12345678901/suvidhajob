<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

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
<LINK href="../css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;	
}

-->
</style><body>
<div align="center">
  <table width="1000px" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr>
    <td valign="top"><table width="1000" border="0" cellpadding="0" cellspacing="0">
      <tr>
        
        <td width="1000" height="151" valign="top" background="images/header1.jpg">&nbsp;</td>      </tr>
     
      <tr><td height="12" bgcolor="#FFFFFF"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="500px" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
        
          <tr>
            <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_system_administrator.jpg" width="358" height="27" /></td>
          </tr>
        </table><br><br><br><br><br><br>
          <table width="95%"  border="0" align="center">
          <tr>
            <td><div align="center">  <form id="form1" runat="server">
    <p>&nbsp;        </p>
    <table width="60%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="50%" class="home_tx">User Name</td>
        <td width="50%"><asp:TextBox ID="uname" runat="server" 
            
            
            autocompletetype="Disabled"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Password</td>
        <td><asp:TextBox ID="password" runat="server" 
            
            
            TextMode="Password"></asp:TextBox></td>
      </tr>
      <tr>
        <td colspan="2"> <div align="center"><asp:Button ID="Button1" runat="server" 
       
        Text="Enter" OnClick="Button1_Click" />
         </div></td>
        </tr>
    </table>    
   
    <div align="center">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
    </div>  
   
   
            </form></div>
              </td>
          </tr>
        </table>
        <br /></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#666666">&nbsp;</td>
  </tr>
</table> </div> 
</body>
</html>
