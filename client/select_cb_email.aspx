<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="select_cb_email.aspx.cs" Inherits="select_cb_email" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
 <form id="form1" runat="server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager>
 
 Total Cv Select For Emails:- 

 <table border=1 cellpadding="2" cellspacing="1" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC" align=center>
       
        <tr>
        <td class="home_tx"> Subjecct </td>
         <td class="style5"> <asp:TextBox ID="subject" TextMode="MultiLine" runat="server" 
                 Height="57px" Width="211px"></asp:TextBox>  </td>
         </tr>
        
        <tr>
            <td class="style6" align="left">
                Message</td>
            <td align="left">
                    
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <cc1:Editor ID="Editor2" runat="server" />
                        
                    </ContentTemplate>
                </asp:UpdatePanel>
    </td>
        </tr>
        
       
         <tr>
        <td class="home_tx"> <asp:Label ID="Label1" runat="server"></asp:Label> </td>
         <td class="style5"> 
           <asp:Button ID="send" Text="Send" runat="server" onclick="send_Click"
                  /></td>
         </tr>
        
        </table>

</form>
</body>
</html>

