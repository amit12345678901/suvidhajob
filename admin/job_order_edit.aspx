<%@ Page Language="C#" MasterPageFile="~/Masterpage_Back.master" AutoEventWireup="true" CodeFile="job_order_edit.aspx.cs" Inherits="admin_job_order_edit"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu-v.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

ddsmoothmenu.init({
	mainmenuid: "smoothmenu2", //Menu DIV id
	orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
	//customtheme: ["#804000", "#482400"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>


<link type="text/css" href="datepick/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
<script type="text/javascript" src="datepick/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="datepick/js/jquery-ui-1.8.19.custom.min.js"></script>


<script type="text/javascript">
$(function () {
$("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_postdt").datepicker({
changeMonth: true,
changeYear: true,
yearRange: '1950:2050'
});
});
</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<table width="95%"  border="0" align="center">
              <tr>
<td><div align="center"> 
    <br />
  
    <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8" >
      <tr>
        <td bgcolor="#4b8df8">&nbsp;</td>
      </tr>
       <asp:Panel ID="pn_admin" runat="server">
      <tr>
        <td bgcolor="#FFFFFF">
        
        <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="15" bordercolor="#CCCCCC" class="text">
    
   
<tr>
                  <td width="43%" align="right" >Company Name</td>
                  <td width="7%">&nbsp;</td>
                  <td width="50%">                   
                      <asp:DropDownList ID="cmp_name" runat="server"> </asp:DropDownList>
               
                </td>
      </tr>
                 <tr>
                  <td width="43%" align="right">Position</td>
                  <td width="7%">&nbsp;</td>
                  <td width="50%">                    
           <asp:TextBox ID="pos" runat="server" 
           ></asp:TextBox> </td>
                </tr>
             </tr>
            <tr>
        <td align="right" >Location</td>
        <td>&nbsp;</td>
        <td><asp:TextBox ID="loc" runat="server" 
           ></asp:TextBox></td>
      </tr>
      
      <tr>
        <td align="right" >Consultant</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="conslt" runat="server">
        
        </asp:DropDownList></td>
      </tr>
        <asp:Panel ID="pn_acnt" runat="server" Visible="false">
       <tr>
        <td align="right" >Accountant</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="acnt" runat="server">
        
        </asp:DropDownList></td>
      </tr>
      
      </asp:Panel>
      </asp:Panel>
       <tr >
        <td align="right" >Status</td>
        <td>&nbsp;</td>
        <td><asp:DropDownList ID="status" runat="server">
        <asp:ListItem Value="Open">Open</asp:ListItem>
        <asp:ListItem Value="Up">Up</asp:ListItem>
        <asp:ListItem Value="Join">Join</asp:ListItem>
        <asp:ListItem Value="Process">Process</asp:ListItem>
        <asp:ListItem Value="Offeres">Offeres</asp:ListItem>
        <asp:ListItem Value="Closed">Closed</asp:ListItem>
        <asp:ListItem Value="Hold">Hold</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
     
        
      <tr>
        <td colspan="3" ><div align="center">
        
        
          
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div></td>
      </tr>
    </table>
    
    
        </td>
      </tr>
      <tr>
        <td bgcolor="#f5f5f5" align="center" height="50px"><asp:ImageButton ID="SEARCH" 
                runat="server" ImageUrl="images/submit.jpg"  Width="71px" Height="34px" 
                onclick="save_Click"/></td>
      </tr>
    </table>
         <br /><br /> <br /><br />
         
         <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand" 
        onrowcreated="GridView1_RowCreated" 
        DataKeyNames="id" 
        onpageindexchanging="GridView1_PageIndexChanging" AllowPaging="True" 
        PageSize="20" >
        
        <Columns>
            <asp:TemplateField HeaderText="Company Name"><ItemTemplate> <%# Eval("co_name_txt2")%>     </ItemTemplate></asp:TemplateField>
            
                   <asp:TemplateField HeaderText="Acountant"><ItemTemplate> <%# Eval("uname")%>     </ItemTemplate></asp:TemplateField>
                   <asp:TemplateField HeaderText="Consultant"><ItemTemplate> <%# Eval("uname1")%>     </ItemTemplate></asp:TemplateField>
                 <asp:TemplateField HeaderText="Position"><ItemTemplate> <%# Eval("pos")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Location"><ItemTemplate> <%# Eval("loc")%>   </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Status"><ItemTemplate>  <%# Eval("status")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Post Date"><ItemTemplate> <asp:Label ID="lbdt" Text='<%# Eval("post_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
          <asp:TemplateField HeaderText="Last Edit Date"><ItemTemplate> <asp:Label ID="lbdt1" Text='<%# Eval("edit_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
          
          <asp:ButtonField ButtonType="Button" CommandName="Modifie"  HeaderText="Modify" 
                ShowHeader="True" Text="Modify" />
          
          
           <asp:TemplateField HeaderText="Remove"><ItemTemplate>
               
           <asp:Button ID="b2"  runat="server" Text="Delete"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete?');'yes,no'"/>
                               </ItemTemplate></asp:TemplateField>
        </Columns>
         
    </asp:GridView>
    
    
    
    
    
      <asp:GridView ID="GridView2" runat="server" onrowcommand="GridView2_RowCommand" 
        onrowcreated="GridView2_RowCreated" 
        DataKeyNames="id" 
        onpageindexchanging="GridView2_PageIndexChanging" AllowPaging="True" 
        PageSize="20" >
        
        <Columns>
            <asp:TemplateField HeaderText="Company Name"><ItemTemplate> <%# Eval("co_name_txt2")%>     </ItemTemplate></asp:TemplateField>
            
                   <asp:TemplateField HeaderText="Consultant"><ItemTemplate> <%# Eval("uname")%>     </ItemTemplate></asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Position"><ItemTemplate> <%# Eval("pos")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Location"><ItemTemplate> <%# Eval("loc")%>   </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Status"><ItemTemplate>  <%# Eval("status")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Post Date"><ItemTemplate> <asp:Label ID="lbdt" Text='<%# Eval("post_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
           <asp:TemplateField HeaderText="Last Edit Date"><ItemTemplate> <asp:Label ID="lbdt1" Text='<%# Eval("edit_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
          
          <asp:ButtonField ButtonType="Button" CommandName="Modifie"  HeaderText="Modify" 
                ShowHeader="True" Text="Modify" />
          
          
           <asp:TemplateField HeaderText="Remove"><ItemTemplate>
               
           <asp:Button ID="b2"  runat="server" Text="Delete"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete?');'yes,no'"/>
                               </ItemTemplate></asp:TemplateField>
        </Columns>
         
    </asp:GridView>
    
    
    
    
    
    
    
     <asp:GridView ID="GridView3" runat="server" onrowcommand="GridView3_RowCommand" 
        onrowcreated="GridView3_RowCreated" 
        DataKeyNames="id" 
        onpageindexchanging="GridView3_PageIndexChanging" AllowPaging="True" 
        PageSize="20" >
        
        <Columns>
            <asp:TemplateField HeaderText="Company Name"><ItemTemplate> <%# Eval("co_name_txt2")%>     </ItemTemplate></asp:TemplateField>
            
                   <asp:TemplateField HeaderText="Accountant"><ItemTemplate> <%# Eval("uname")%>     </ItemTemplate></asp:TemplateField>
                
                 <asp:TemplateField HeaderText="Position"><ItemTemplate> <%# Eval("pos")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Location"><ItemTemplate> <%# Eval("loc")%>   </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Status"><ItemTemplate>  <%# Eval("status")%>     </ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="Post Date"><ItemTemplate> <asp:Label ID="lbdt" Text='<%# Eval("post_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
           <asp:TemplateField HeaderText="Last Edit Date"><ItemTemplate> <asp:Label ID="lbdt1" Text='<%# Eval("edit_date") %>'  runat="server"></asp:Label>    </ItemTemplate></asp:TemplateField>
          
          <asp:ButtonField ButtonType="Button" CommandName="Modifie"  HeaderText="Modify" 
                ShowHeader="True" Text="Modify" />
          
          
           <asp:TemplateField HeaderText="Remove"><ItemTemplate>
               
           <asp:Button ID="b2"  runat="server" Text="Delete"  
                                CommandName="Delete1" 
                                
                                CommandArgument='<%# Eval("id") %>' 
                                OnClientClick="javascript:return confirm('Do you really want to delete?');'yes,no'"/>
                               </ItemTemplate></asp:TemplateField>
        </Columns>
         
    </asp:GridView>
    
    
    
         
</asp:Content>

