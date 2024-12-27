<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Addsys_add.aspx.cs" Inherits="Addsys_add" %>

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
<LINK href="../placement/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #CCCCCC;
}
.style2 {color: #003399}
-->
</style>
</head>
<body>
<form id="frm" runat="server">

    <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2">
    
    
   
             
                <tr>
                  <td width="50%" class="home_tx"> Page Name</td>
                  <td width="50%">   
                  <asp:DropDownList ID="page_name" DataTextField="name1" 
                          DataValueField="id"  runat="server" 
                          DataSourceID="SqlDataSource1">               
                      </asp:DropDownList>
                      
                                                </td>
                </tr>
                
                <tr>
                  <td width="50%" class="home_tx"> Pogision</td>
                  <td width="50%">                  
                      <asp:DropDownList ID="page_position" runat="server">
                      <asp:ListItem Value="Select">Select</asp:ListItem>
                      <asp:ListItem Value="TOP">TOP</asp:ListItem>
                      <asp:ListItem Value="LEFT">LEFT</asp:ListItem>
                      <asp:ListItem Value="RIGHT">RIGHT</asp:ListItem>
                       <asp:ListItem Value="BUTTON">BUTTON</asp:ListItem>
                      </asp:DropDownList>
                                                </td>
                </tr>
                
                <tr>
                  <td width="50%" class="home_tx"> Client Name</td>
                  <td width="50%">                    <asp:TextBox ID="cl_name" runat="server" TextMode="MultiLine" 
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                 <tr>
                  <td width="50%" class="home_tx"> Website Name</td>
                  <td width="50%">                    <asp:TextBox ID="website" runat="server" TextMode="MultiLine" 
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                <tr>
                  <td width="50%" class="home_tx"> Start Date</td>
                  <td width="50%">                    <asp:Calendar ID="stdate" runat="server" Visible="False" 
                          onselectionchanged="stdate_SelectionChanged"></asp:Calendar> <asp:Label ID="lbstdate" runat="server"></asp:Label>                 <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">PickDate...</asp:LinkButton></td>
                </tr>
                <tr>
                  <td width="50%" class="home_tx"> End Date</td>
                  <td width="50%">     <asp:Calendar ID="endate" runat="server" Visible="False" 
                          onselectionchanged="endate_SelectionChanged"></asp:Calendar> <asp:Label ID="lbenddate" runat="server"></asp:Label>                 <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">PickDate...</asp:LinkButton>               </td>
                </tr>
                 <tr>
                  <td width="50%" class="home_tx"> Width</td>
                  <td width="50%">                    <asp:TextBox ID="width" runat="server"  
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                 <tr>
                  <td width="50%" class="home_tx"> Height</td>
                  <td width="50%">                    <asp:TextBox ID="height" runat="server"  
            
            
           
            AutoCompleteType="Disabled"></asp:TextBox></td>
                </tr>
                
                  <tr>
        <td class="home_tx"> Picture Upload </td>
         <td class="style5">
             <asp:FileUpload ID="FileUpload1" runat="server" /></td>
             <td class="style5"><% =path1 %>
             </td>
         </tr> 
         
         <tr>
                  <td colspan="2"><div align="center">
                    <asp:Button ID="Add" runat="server"  
           
            Text="Add" onclick="Add_Click" Width="49px" />&nbsp;&nbsp;&nbsp;
            <br /> 
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      
                  </div></td>
                  </tr>
         
                  </table>
                  
                  <br />
                  <table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                <tr>
                  <td width="50%" class="home_tx"> Photo Position</td>
                  <td width="50%"> Size (px)    </td>
                  
                  </tr>
         <tr>
                  <td width="50%" class="home_tx"> Top</td>
                  <td width="50%"> Width:- 570     Height:- 118  </td>
                  
                  </tr>
                  <tr>
                  <td width="50%" class="home_tx"> Center </td>
                  <td width="50%"> Width:- 220   Height:- 282    </td>
                  
                  </tr>
                  
                   <tr>
                  <td width="50%" class="home_tx"> Left </td>
                  <td width="50%"> Width:- 220   Height:- 150    </td>
                  
                  </tr>
                  
                   <tr>
                  <td width="50%" class="home_tx"> Right</td>
                  <td width="50%"> Width:-209    Height:-135    </td>
                  
                  </tr>
                  
                  </table>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    SelectCommand="SELECT id,name1 FROM [page_name]"></asp:SqlDataSource>
                  </form>
</body>
</html>
