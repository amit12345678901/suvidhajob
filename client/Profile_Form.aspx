<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile_Form.aspx.cs"   Inherits="Profile_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     
    <table width="100%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="40%" class="home_tx">Name </td>
        <td width="60%">
            <% =arr[0] %></td>
      </tr>
      <tr>
        <td class="home_tx">Date of Birth </td>
        <td><% =arr[1] %>
          <% =arr[2] %>
         <% =arr[3] %></td>
      </tr>
      <tr>
        <td class="home_tx">Sex</td>
        <td><% =arr[4] %></td>
      </tr>
      <tr>
        <td class="home_tx">Marital Status</td>
       <td> <% =arr[5] %></td>
      </tr>
      <tr>
        <td class="home_tx">Email</td>
        <td><% =arr[6] %></td>
      </tr>
      <tr>
        <td class="home_tx">Address</td>
        <td><% =arr[7] %></td>
      </tr>
      <tr>
        <td class="home_tx">Country</td>
        <td><% =arr[8] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; Location</td>
        <td><% =arr[9] %></td>
      </tr>
      <tr>
        <td class="home_tx">Telephone </td>
        <td><% =arr[10] %></td>
      </tr>
      <tr>
        <td class="home_tx">Mobile</td>
        <td>          
            <% =arr[11] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>ACADEMIC/ PROFESSIONAL QUALIFICATION</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Academic qualification</td>
        <td><% =arr[12] %></td>
      </tr>
      <tr>
        <td class="home_tx">profesinal qualification</td>
        <td><% =arr[13] %></td>
      </tr>
      <tr>
        <td class="home_tx">Inistitute</td>
        <td><% =arr[14] %></td>
      </tr>
      <tr>
        <td class="home_tx">Year of Graduation</td>
        <td><% =arr[15] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>RESUME SUMMERY</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Resume Title</td>
        <td><% =arr[16] %></td>
      </tr>
      <tr>
        <td class="home_tx">Key Skill</td>
        <td><% =arr[17] %></td>
      </tr>
      <tr>
        <td class="home_tx">Experience</td>
        <td><% =arr[18] %></td>
      </tr>
      <tr>
        <td class="home_tx">Industry</td>
        <td><% =arr[19] %></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area</td>
        <td><% =arr[20] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current Employers </td>
        <td><% =arr[21] %></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><% =arr[22] %></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><% =arr[23] %></td>
      </tr>
      <tr>
        <td class="home_tx">Period </td>
        <td><% =arr[24] %></td>
      </tr>
      <tr>
        <td class="home_tx">Summery</td>
        <td><% =arr[25] %></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Language Known</td>
        <td><% =arr[29] %>
        
                    <% =arr[32] %>
          <% =arr[33] %>         
         <% =arr[34] %>          
          <br />
          <% =arr[30] %>
          <% =arr[35] %>
          <% =arr[36] %>
          <% =arr[37] %>         
          <br />
        <% =arr[31] %>  
          <% =arr[38] %> 
          <% =arr[39] %>
          <% =arr[40] %>
        
          
          
                   </td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>DESIRED&nbsp; JOB</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Job Type</td>
        <td><% =arr[26] %></td>
      </tr>
      <tr>
        <td class="home_tx">Employment Status </td>
        <td><% =arr[27] %></td>
      </tr>
      <tr>
        <td class="home_tx">Prefered Location</td>
        <td><% =arr[28] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>DOWNLOAD&nbsp; CV</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Click For Cv</td>
        <td><a href="<% =view1 %>" target="_blank">Click here</a> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                                                   
      </tr>
    </table>

   
 </form>
</body>
</html>