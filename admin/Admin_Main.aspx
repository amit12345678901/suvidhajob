<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Main.aspx.cs" MasterPageFile="~/MasterPage_Back.master"
  Inherits="Admin_Main" %>


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
    <LINK href="css/style.css" rel="stylesheet" type="text/css">
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
<style>

th, td {
    text-align: center; /* Centers the text horizontally */
    padding: 10px; /* Adds some space inside the cells */
    border: 1px solid #ddd; /* Adds border to the table cells */
}

th {
    background-color: #f4f4f4; /* Background color for header */
}

tr:nth-child(even) {
    background-color: #f9f9f9; /* Alternating row colors */
}

button {
    display: block;
    margin: 20px auto; /* Centers the button horizontally */
    padding: 10px 15px;
    background-color: #4CAF50; /* Green background */
    color: white;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    font-size: 16px;
}

button:hover {
    background-color: #45a049; /* Darker green on hover */
}


/* Define the custom styles for the btnBind button */
.btnBind {
    background-color: #3b82f6; /* Blue background */
    color: white; /* White text */
    font-weight: bold; /* Bold text */
    padding: 10px 20px; /* Add padding */
    border-radius: 8px; /* Rounded corners */
    border: none; /* Remove the border */
    cursor: pointer; /* Change cursor to pointer */
    font-size: 16px; /* Set font size */
    transition: background-color 0.3s; /* Smooth transition for hover effect */
}

/* Change background color when the button is hovered */
.btnBind:hover {
    background-color: #1d4ed8; /* Darker blue on hover */
}

/* Focus styles to improve accessibility */
.btnBind:focus {
    outline: none; /* Remove default outline */
    box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.5); /* Add custom focus outline */
}


</style>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page_title">Dashboard</div>
    <div align="center">
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
        <tr>
          <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
          <td width="47%" class="Small_path">Home > Dashboard</td>
          <td width="50%"></td>
        </tr>
      </table>

      <br />
 <table width="95%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
        <tr bgcolor="#f4f4f4">
            <th>Total Client</th>
            <th>Total CVs</th>
            <th>Total Internal Jobs Posting</th>
            <th>Total External Jobs Posting</th>
            <th>Total Consultant</th>
            <th>Total User</th>
        </tr>
        <tr class="text-center">
            <td><%= TotalClients %></td>
            <td><%= TotalCVs %></td>
            <td><%= TotalInternalJobs %></td>
            <td><%= TotalExternalJobs %></td>
            <td><%= TotalConsultants %></td>
            <td><%= TotalUsers %></td>
        </tr>
    </table>
<br />

<asp:Button 
    ID="btnBind" 
    runat="server" 
    Text="Load Data" 
    OnClick="btnBind_Click" 
    CssClass="btnBind" 
/>


      <p>&nbsp;</p>

      <asp:Panel ID="admin_pn" runat="server">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="100%" height="70" bgcolor="#27a9e3">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Administrator</td>
                  <td width="50%" align="right" class="dashbord_text_bid"><a href="Admin_Edit.aspx?cat=admin">
                      <%=admns %>
                    </a> </td>
                </tr>
              </table>
            </td>
            <td width="4%">&nbsp;</td>
            <td width="48%" bgcolor="#28b779">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Accountant </td>
                  <td align="right" class="dashbord_text_bid"> <a href="Admin_Edit.aspx?cat=acnt">
                      <%=acnt %>
                    </a>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="30" bgcolor="#2195c9">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Admin_Edit.aspx?cat=admin"> VIEW MORE</A></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
            <td bgcolor="#17a668">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Admin_Edit.aspx?cat=acnt"> VIEW MORE</a></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="70" bgcolor="#b655cb">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Consultant </td>
                  <td align="right" class="dashbord_text_bid"> <a href="Admin_Edit.aspx?cat=conslt">
                      <%=consult %>
                    </a> </td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
            <td bgcolor="#ffb848">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Office Co-ordinator </td>
                  <td align="right" class="dashbord_text_bid"><a href="Admin_Edit.aspx?cat=Coordinator">
                      <%=coordinator %>
                    </a> </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="35" bgcolor="#852b99">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Admin_Edit.aspx?cat=conslt"> VIEW MORE</a></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
            <td bgcolor="#da9627">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Admin_Edit.aspx?cat=Coordinator"> VIEW MORE</a>
                  </td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="35">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="70" bgcolor="#9797c7">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Candidate </td>
                  <td align="right" class="dashbord_text_bid"> <a href="Edit_Candidate.aspx">
                      <%=cand %>
                    </a></td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
            <td bgcolor="#99CC00">
              <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="50%" class="dashbord_text_small">Active Job Posting </td>
                  <td align="right" class="dashbord_text_bid"> <a href="Edit_Vacancy.aspx?cat=inter">
                      <%=jobs %>
                    </a> </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="35" bgcolor="#666699">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Edit_Candidate.aspx"> VIEW MORE</a></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
            <td bgcolor="#7da600">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Edit_Vacancy.aspx?cat=inter"> VIEW MORE</a></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="35">&nbsp;</td>
            <td>
              &nbsp;</td>
            <td>
              &nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="#ffb848">
              <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
                <tr>
                  <td class="dashbord_text_small" width="50%">
                    Client
                  </td>
                  <td align="right" class="dashbord_text_bid">
                    <a href="Edit_Company.aspx">
                      <%=client %>
                    </a>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="35" bgcolor="#666699">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="85%" class="dashbord_text_MORE"><a href="Edit_Company.aspx"> VIEW MORE</a></td>
                  <td width="15%" align="center"><img src="images/ARROW.png" width="20" height="20" border="0" /></td>
                </tr>
              </table>
            </td>
            <td>&nbsp;</td>
        </table>
    </div>
    </asp:Panel>
  </asp:Content>