<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Addsys_Edit.aspx.cs" Inherits="Addsys_Edit" %>

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
<table width="75%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
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
                
                   <asp:Panel ID="side_panel" runat="server">
                 <tr>
                  <td width="50%" class="home_tx">Side Position</td>
                  <td width="50%"><asp:DropDownList ID="side_pos" runat="server">
                  <asp:ListItem Value="1">1</asp:ListItem>
                  <asp:ListItem Value="2">2</asp:ListItem>
                  <asp:ListItem Value="3">3</asp:ListItem>
                  <asp:ListItem Value="4">4</asp:ListItem>
                  <asp:ListItem Value="5">5</asp:ListItem>
                  <asp:ListItem Value="6">6</asp:ListItem>
                  <asp:ListItem Value="7">7</asp:ListItem>
                  <asp:ListItem Value="8">8</asp:ListItem>
                  <asp:ListItem Value="9">9</asp:ListItem>
                  <asp:ListItem Value="10">10</asp:ListItem>
                  <asp:ListItem Value="11">11</asp:ListItem>
                  <asp:ListItem Value="12">12</asp:ListItem>
                  <asp:ListItem Value="13">13</asp:ListItem>
                  <asp:ListItem Value="14">14</asp:ListItem>
                  <asp:ListItem Value="15">15</asp:ListItem>
                  <asp:ListItem Value="16">16</asp:ListItem>
                  
                  <asp:ListItem Value="17">17</asp:ListItem>
                  <asp:ListItem Value="18">18</asp:ListItem>
                  <asp:ListItem Value="19">19</asp:ListItem>
                  <asp:ListItem Value="20">20</asp:ListItem>
                   <asp:ListItem Value="11">21</asp:ListItem>
                  <asp:ListItem Value="12">22</asp:ListItem>
                  <asp:ListItem Value="13">23</asp:ListItem>
                  <asp:ListItem Value="14">24</asp:ListItem>
                  <asp:ListItem Value="15">25</asp:ListItem>
                  <asp:ListItem Value="16">26</asp:ListItem>
                  
                  <asp:ListItem Value="17">27</asp:ListItem>
                  <asp:ListItem Value="18">28</asp:ListItem>
                  <asp:ListItem Value="19">29</asp:ListItem>
                  <asp:ListItem Value="20">30</asp:ListItem>
                  </asp:DropDownList> </td>
                  </tr>
                  </asp:Panel>
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
                    <asp:Button ID="update" runat="server"  
           
            Text="Update" onclick="update_Click" Width="49px" />&nbsp;&nbsp;&nbsp;
            <br /> 
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      
                  </div></td>
                  </tr>
         
                  </table>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                    SelectCommand="SELECT id,name1 FROM [page_name]"></asp:SqlDataSource>
                  
</form>
</body>
</html>