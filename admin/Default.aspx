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
	background-color:#2e363f;
}
-->
</style>
<LINK href="css/style.css" rel="stylesheet" type="text/css">
<body >

<div align="center">         <p>&nbsp;</p>
          <p>&nbsp;</p>
<p>&nbsp;</p><form id="form1" runat="server">
  <br />
  <br />
  <br />
  <br />
  <br />
          <br />
          <br />
          <br />
          <table width="400"  border="0" align="center">
          <tr>
            <td height="50" bgcolor="#49cced" align="center"><p><strong>System Administrator
            </strong></p></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" align="center">
    <p>&nbsp;        </p>
    <p>&nbsp;</p>
    <table width="80%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#dadada">
      <tr>
        <td width="100" height="30" bgcolor="#eeeeee" align="center">User Name</td>
        <td><asp:TextBox ID="uname" runat="server"
            
            
            autocompletetype="Disabled" style=" border:#ffffff solid 0px; width:190px; height:28px;"
            ></asp:TextBox></td>
      </tr>
    </table>
    <br />
    <table width="80%" border="1" align="center" cellpadding="5" cellspacing="0" bordercolor="#dadada">
      <tr>
        <td width="100" height="30" bgcolor="#eeeeee"  align="center">Password</td>
        <td><asp:TextBox ID="password" runat="server" style=" border:#ffffff solid 0px; width:190px; height:28px;" 
            
            
            TextMode="Password"></asp:TextBox></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div align="center">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
   
</div>  
   
   
           </td>
          </tr>
          <tr>
            <td bgcolor="#f5f5f5"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%">&nbsp;</td>
                <td width="50%" height="42" align="right">
               <asp:ImageButton ID="SEARCH" runat="server" ImageUrl="images/login.png" OnClick="Button1_Click"/>    &nbsp;&nbsp;&nbsp; 
               
             </td>
              </tr>
            </table></td>
          </tr>
</table> </form>
</div>
</body>
</html>
