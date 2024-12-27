<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Real_AboutUs_Edit.aspx.cs" Inherits="Real_AboutUs_Edit" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">. 
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
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #CCCCCC;
}
-->
</style>
</head>
<body>
   <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr>
    <td valign="top"><table width="1000" border="0" cellpadding="0" cellspacing="0">
      <tr>
       
        <td width="1000" height="151" valign="top" background="images/header1.jpg">&nbsp;</td>
      </tr>
            <tr><td height="12" bgcolor="#FFFFFF"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="1000" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="234" valign="top"><br />
            <br />
            <table width="228" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td></td>
              </tr>
              <tr>
                <td height="136"><div align="center">
                    <table width="90%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC">
                      <tr>
                        <td width="17%"><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td width="83%" class="home_tx"><div align="left"><a href="Admin_Main.aspx" class="side_menu">Overview</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td width="83%" class="home_tx"><a href="Admin_Add.aspx" class="side_menu">Add User</a></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Admin_Edit.aspx" class="side_menu">Modify User </a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Logout.aspx" class="side_menu">Logout</a></div></td>
                      </tr>
                    </table>
                    <div><br />
                    </div>
                    <table width="90%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC" bordercolordark="#FFFFFF" bordercolorlight="#CCCCCC">
                      <tr bgcolor="#E9E9E9">
                        <td colspan="2"><div align="center"><span class="Heading_txt">Placement Division</span></div></td>
                      </tr>
                      <tr>
                        <td width="17%"><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td width="83%" class="home_tx"><a href="AboutUs_Edit.aspx" class="side_menu">Edit Profile</a></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="PostResume1.aspx" class="side_menu">Add Candidtate</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Edit_Candidate.aspx" class="side_menu">Modify Candidate</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Resume_Search_Form.aspx" class="side_menu">Resume Search</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Employer_Registation.aspx" class="side_menu">Add Company</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Edit_Company.aspx" class="side_menu">Modify Company</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="post_vaca_add.aspx" class="side_menu">Add Vacancy</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Edit_Vacancy.aspx" class="side_menu">Edit Vacancy</a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="placed_candidate.aspx" class="side_menu">Add Placed Candidate </a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Placed_Candidate_update.aspx" class="side_menu">Edit Placed Candidate </a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="add_client.aspx" class="side_menu">Add Clients</a> </div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="client_update.aspx" class="side_menu">Modify Clients </a></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><img src="../Image/arrow-1.gif" width="7" height="5" /></div></td>
                        <td class="side_menu"><div align="left"><a href="Company_Apply_Informetion.aspx" class="side_menu">Job applied by Candidate</a></div></td>
                      </tr>
                    </table>
                    <span class="Heading_txt"> </span><br />
                    
                    <span class="Heading_txt"> </span><br />
                    
                    <span class="Heading_txt"> </span><br />
                    
                </div></td>
              </tr>
              <tr>
                <td> </td>
              </tr>
              <tr>
                <td><span class="top_menu"> <br />
                      </span></td>
              </tr>
          </table></td>
        <td width="10" valign="top"><div align="center"><span class="top_menu"><br />
                  <br />
                  <br />
                  <br />
                  <img src="../placement/Image/t3.jpg" width="7" height="404" /></span></div></td>
        <td width="756" valign="top"><table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Edit Profile</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_edit_profile.jpg" width="358" height="27" /></td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td valign="top"><div align="justify">   <form id="form1" runat="server">
    
    <br>
    <table width="95%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="17%"><div align="left" class="home_tx">First Page
        </div></td>
        <td width="83%"><asp:TextBox ID="TextBox1" runat="server" 
        
        
        MaxLength="254" TextMode="MultiLine" Rows="5" Columns="60"></asp:TextBox></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <asp:Button ID="First" runat="server" 
            
            Text="First_Page_Update " OnClick="First_Click" />                
        </div></td>
        </tr>
    </table>
    <br>
    <table width="95%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="17%" class="home_tx">Second&nbsp; Page</td>
        <td width="83%"><asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
     
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>                 
                    <cc1:Editor ID="Editor1" runat="server" />                   
                </ContentTemplate>
            </asp:UpdatePanel>        
    
     
          </td>
      </tr>
      <tr>
        <td colspan="2"><div align="center"><asp:Button ID="Second" runat="server" 
            
            Text="Second_Page_Update" OnClick="Second_Click" />
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </div></td>
        </tr>
    </table>
   
   <div align="center">                </div>
                </form>
                   
                 
                </div></td>
              </tr>
            </table>          </td>
      </tr>
    </table>    
    </td>
  </tr>
  <tr>
    <td bgcolor="#666666">&nbsp;</td>
  </tr>
</table>  
</body>
</html>

