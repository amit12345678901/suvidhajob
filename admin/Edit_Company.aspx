<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Company.aspx.cs" MasterPageFile="~/MasterPage_Back.master"
  Inherits="Edit_Comppany" %>

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
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
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
      * {
        margin: 0;
        padding: 0;
      }

      body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
      }

      .page_title {
        font-size: 24px;
        font-weight: bold;
        color: #333;
        margin-bottom: 20px;
      }

      .table {
        width: 100%;
        margin-bottom: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      }

      .table-bordered {
        border: 1px solid #ccc;
      }

      .Small_path {
        color: #888;
        font-size: 14px;
      }

      .Small_path a {
        text-decoration: none;
        color: #007bff;
      }

      .Small_path a:hover {
        text-decoration: underline;
      }

      .button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
      }

      .button:hover {
        background-color: #0056b3;
      }

      .centered-content {
        width: 100%;
        max-width: 1000px;
        margin: 0 auto;
      }

      .centered-table {
        width: 100%;
        margin: 0 auto;
        padding: 20px;
      }

      .table th,
      .table td {
        padding: 10px;
        text-align: left;
      }

      .table th {
        background-color: #f1f1f1;
      }

      .table .Small_path {
        font-size: 14px;
      }
    </style>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page_title">Edit Company</div>
    <div align="center" style="width:1000px;">
      <table class="table table-bordered">
        <tr>
          <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
          <td width="47%" class="Small_path">Home > Company &gt; Edit Company</td>
          <td width="50%" align="right"> <a href="Employer_Registation.aspx?cat=<%= Request.QueryString[" cat"] %>">Add
              Clients</a></td>
        </tr>
      </table>
      <table Class="table table-bordered" style="width:1000px;">
        <tr>
          <td>
            <div align="center">

              <asp:ScriptManager ID="scrpt" runat="server"></asp:ScriptManager>

              <asp:GridView ID="GridView1" runat="server" HeaderStyle-HorizontalAlign="Center"
                CssClass="table table-bordered" AllowPaging="True" DataKeyNames="id_txt"
                onpageindexchanging="GridView1_PageIndexChanging" onrowcommand="GridView1_RowCommand"
                onrowcreated="GridView1_RowCreated" PageSize="150000">
                <HeaderStyle ForeColor="Black" Font-Bold="True" BackColor="#CCCCCC"></HeaderStyle>
                <alternatingrowstyle backcolor="PaleTurquoise" forecolor="DarkBlue" font-italic="false" />
<Columns>

               <asp:ButtonField DataTextField="id_txt" HeaderText="Code" CommandName="Modifie" />
<asp:ButtonField DataTextField="Client_number" HeaderText="Client Number" CommandName="Modifie" />
<asp:ButtonField DataTextField="start_date" HeaderText="Date" CommandName="Modifie" />
<asp:ButtonField DataTextField="co_name_txt2" HeaderText="Company Name" CommandName="Modifie" />
<asp:ButtonField DataTextField="Username_txt" HeaderText="User Name" CommandName="Modifie" />



        
                  <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                      <asp:Label ID="lbid2" runat="server" Visible="false" Text='<%# Eval("id_txt") %>'></asp:Label>

                      <asp:CheckBox ID="ch3" runat="server" />
                    </ItemTemplate>
                  </asp:TemplateField>

  <asp:TemplateField HeaderText="Authorised">
                    <ItemTemplate>
                      <asp:CheckBox ID="authch" runat="server" Checked='<%# Eval("auth_txt") %>' />
                    </ItemTemplate>
                  </asp:TemplateField>



                </Columns>
              </asp:GridView>
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              <br />
              <asp:Button ID="update" runat="server" Text="Delete" onclick="update_Click" />


            </div>
          </td>
        </tr>
      </table>




  </asp:Content>