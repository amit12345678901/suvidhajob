<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Vacancy.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Edit_Vacancy" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="JavaScript" type="text/JavaScript">
<!--
    function MM_reloadPage(init) {  //reloads the window if Nav4 resized
        if (init == true) with (navigator) {
            if ((appName == "Netscape") && (parseInt(appVersion) == 4)) {
                document.MM_pgW = innerWidth; document.MM_pgH = innerHeight; onresize = MM_reloadPage;
            }
        }
        else if (innerWidth != document.MM_pgW || innerHeight != document.MM_pgH) location.reload();
    }
    MM_reloadPage(true);
    //-->
    </script>
    <link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
    <link rel="stylesheet" type="text/css" href="ddsmoothmenu-v.css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page_title">Edit Vacancy</div>
    <div align="center">
        <table class="table table-bordered" style="background: #fff;">
            <tr>
                <td width="3%" class="Small_path">
                    <img src="images/icon_home.png" width="18" height="18" /></td>
                <td width="97%" class="Small_path">Home > Vacancy &gt; Edit Vacancy</td>

            </tr>
        </table>
        <br>
        <asp:Panel ID="pninter" runat="server">
            <a href="post_vaca_add.aspx?cat=inter">Add Internal Vacancy</a>
        </asp:Panel>
        <asp:Panel ID="pnexter" runat="server">
            <a href="post_vaca_add.aspx?cat=exter">Add External Vacancy</a>
            &nbsp;&nbsp;&nbsp;
            <a href="Edit_Vacancy.aspx?cat=exter&type=hot-opening">Hot Opening</a>

        </asp:Panel>
        <br />

        <table>
            <tr>
                <td>


                    <div align="center" style="width: 1000px; background: #fff;">
                        <asp:GridView ID="GridView1" runat="server" HeaderStyle-HorizontalAlign="Center"
                            CssClass="table table-bordered"
                            AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                            OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated"
                            DataKeyNames="pv_id_txt" AutoGenerateColumns="False">
                            <HeaderStyle ForeColor="Black" Font-Bold="True"
                                BackColor="#CCCCCC"></HeaderStyle>
                            <AlternatingRowStyle BackColor="PaleTurquoise"
                                ForeColor="DarkBlue"
                                Font-Italic="false" />
                            <Columns>

                                <asp:ButtonField ButtonType="link" CommandName="mod"
                                    ControlStyle-Font-Underline="false" DataTextField="cname_txt"
                                    HeaderText="Company name">
                                    <ControlStyle Font-Underline="False"></ControlStyle>
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="link"
                                    CommandName="mod" ControlStyle-Font-Underline="false" DataTextField="in_txt"
                                    HeaderText="Industry">
                                    <ControlStyle Font-Underline="False"></ControlStyle>
                                    <ItemStyle />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="link"
                                    CommandName="mod" ControlStyle-Font-Underline="false" DataTextField="fun_name"
                                    HeaderText="Functional Area">
                                    <ControlStyle Font-Underline="False"></ControlStyle>
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="link"
                                    CommandName="mod" ControlStyle-Font-Underline="false" DataTextField="rep_txt"
                                    HeaderText="Position">
                                    <ControlStyle Font-Underline="False"></ControlStyle>
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="link" CommandName="mod"
                                    ControlStyle-Font-Underline="false" DataTextField="loc_txt"
                                    HeaderText="Location">

                                    <ControlStyle Font-Underline="False"></ControlStyle>
                                </asp:ButtonField>

                                <asp:TemplateField HeaderText="Posting Date">
                                    <ItemTemplate>

                                        <asp:Label ID="lbdt" runat="server" Text='<%# Eval("post_date") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="home page">
                                    <ItemTemplate>
                                        <asp:Label ID="lbid" runat="server" Visible="false" Text='<%# Eval("pv_id_txt") %>'></asp:Label>
                                        <asp:Label ID="lbid5" runat="server" Visible="false" Text='<%# Eval("category") %>'></asp:Label>
                                        <asp:CheckBox ID="ch3" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>

                                        <asp:Button ID="b2" runat="server" Text="Delete"
                                            CommandName="Delete1"
                                            CommandArgument='<%# Eval("pv_id_txt") %>'
                                            OnClientClick="javascript:return confirm('Do you really want to delete?');'yes,no'" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Button" CommandName="view1" HeaderText="View"
                                    ShowHeader="True" Text="View" />
                                <asp:ButtonField ButtonType="Button" CommandName="mod" HeaderText="Edit"
                                    ShowHeader="True" Text="Edit" />

                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
</asp:Content>
