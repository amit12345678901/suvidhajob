<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" CodeFile="Resume_Search_Form.aspx.cs" Inherits="Resume_Search_Form" %>

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


    <link type="text/css" href="datepick/css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="datepick/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="datepick/js/jquery-ui-1.8.19.custom.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_frmdt").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1950:2050'
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $("#ctl00_ContentPlaceHolder1_txtDate,#ctl00_ContentPlaceHolder1_todt").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1950:2050'
            });
        });
    </script>






    <style>
        * {
            margin: 0;
            padding: 0;
            border: 0;
        }

        body {
            font: 13px/15px 'Arial', Arial, Helvetica, sans-serif;
        }

        .spacer {
            clear: both;
            font-size: 0;
            line-height: 0;
            margin: 0;
            padding: 0;
        }

        ul {
            list-style: none;
        }

        .span1 {
            width: 336px;
            float: left;
            margin: 0 31px 0 12px;
        }

        em {
            margin: 0 0 8px 0;
            color: #5d5d5d;
            font-style: normal;
            float: left;
        }

        i {
            color: #000000;
            font-style: normal;
        }

        .green-txt {
            color: #20610d;
        }

        .dt-radio {
            float: left;
            margin: 23px 0 0 0;
        }

        .dt-radio-align {
            margin: 0 0 0 174px;
        }

        .dt-radio label {
            float: left;
            margin: 0 0 0 20px;
            color: #3323cc;
            text-decoration: underline;
        }

        .dt-key {
            width: 944px;
            padding: 18px 18px 5px 18px;
            background: #f4f4f4;
            margin: 0 0 1px 0;
        }

            .dt-key span {
                float: left;
                margin: 5px 5px 0 0;
                width: 160px;
                text-align: right;
            }

        .input1 {
            width: 304px;
            border: 1px solid #a9a9a9;
            padding: 3px 5px;
            float: left;
            margin: 0 5px 8px 0;
        }

        .input2 {
            width: 54px;
            border: 1px solid #a9a9a9;
            padding: 3px 5px;
            float: left;
            margin: 0 0 8px 0;
        }

        .input3 {
            width: 180px;
            border: 1px solid #a9a9a9;
            padding: 3px 5px;
            float: left;
            margin: 0 5px 8px 0;
        }

        .dt-key label {
            float: left;
            margin: 5px 5px 0 0;
            font-size: 11px;
        }

        .dt-exp {
            width: 944px;
            padding: 0px 0px 5px 0px;
        }

            .dt-exp span {
                float: left;
                margin: 3px 5px 0 0;
                width: 178px;
                text-align: right;
            }

        .input2 {
            width: 54px;
            border: 1px solid #a9a9a9;
            padding: 3px 5px;
            float: left;
            margin: 0 0 8px 0;
        }

        .dt-exp-small {
            margin: 4px 5px 0 0;
            float: left;
        }

        .select1 {
            border: 1px solid #a9a9a9;
            padding: 0px 5px;
            float: left;
            margin: 0 8px 8px 0;
        }

        .select2 {
            width: 316px;
            border: 1px solid #a9a9a9;
            padding: 2px 5px;
            float: left;
            margin: 0 8px 8px 0;
        }

        .select3 {
            width: 140px;
            border: 1px solid #a9a9a9;
            padding: 2px 5px;
            float: left;
            margin: 0 5px 8px 0;
        }

        .select4 {
            width: 220px;
            border: 1px solid #a9a9a9;
            padding: 2px 5px;
            float: left;
            margin: 0 5px 8px 0;
        }

        .dt-exp label {
            float: left;
            margin: 5px 5px 0 0;
            font-size: 11px;
        }

        .txt2 {
            font-size: 13px !important;
        }

        .dt-option {
            width: 944px;
            padding: 18px 18px 5px 0px;
            border-top: 1px solid #7f7f7f;
        }

            .dt-option span {
                float: left;
                margin: 3px 5px 0 0;
                width: 178px;
                text-align: right;
            }

        .red-txt {
            color: #eb0800;
            float: left;
            margin: 0 5px 0 0;
        }

        .red-txt2 {
            color: #eb0800;
        }

        .dt-option label {
            float: left;
            margin: 5px 30px 0 0;
        }

        .input-align {
            float: left;
            margin: 4px 2px 0 0;
        }

        .search-btn {
            padding: 5px 7px;
            display: block;
            width: 100px;
            margin: 0 auto;
            cursor: pointer;
            border-radius: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>

    <div style="float: none; margin: 0 auto; width: 1000px;">


        <h3>Basic Details</h3>


        <table class="table table-bordered">
            <tr>
                <td>Any of the Keywords:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input1"></asp:TextBox></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" CssClass="input1" runat="server">
                        <asp:ListItem Value="1">All the  words</asp:ListItem>
                        <asp:ListItem Value="2">Any of the words</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
        <div class="dt-exp">
            <table class="table table-bordered">
                <tr>
                    <td>Total Experience (Years):</td>
                    <td>
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="select1">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                            <asp:ListItem Value="16"></asp:ListItem>
                            <asp:ListItem Value="17"></asp:ListItem>
                            <asp:ListItem Value="18"></asp:ListItem>
                            <asp:ListItem Value="19"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="21"></asp:ListItem>
                            <asp:ListItem Value="22"></asp:ListItem>
                            <asp:ListItem Value="23"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                            <asp:ListItem Value="25"></asp:ListItem>
                            <asp:ListItem Value="26"></asp:ListItem>
                            <asp:ListItem Value="27"></asp:ListItem>
                            <asp:ListItem Value="28"></asp:ListItem>
                            <asp:ListItem Value="29"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="31"></asp:ListItem>
                            <asp:ListItem Value="32"></asp:ListItem>
                            <asp:ListItem Value="33"></asp:ListItem>
                            <asp:ListItem Value="34"></asp:ListItem>
                            <asp:ListItem Value="35"></asp:ListItem>
                            <asp:ListItem Value="36"></asp:ListItem>
                            <asp:ListItem Value="37"></asp:ListItem>
                            <asp:ListItem Value="38"></asp:ListItem>
                            <asp:ListItem Value="39"></asp:ListItem>
                            <asp:ListItem Value="40"></asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="select1">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                            <asp:ListItem Value="16"></asp:ListItem>
                            <asp:ListItem Value="17"></asp:ListItem>
                            <asp:ListItem Value="18"></asp:ListItem>
                            <asp:ListItem Value="19"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="21"></asp:ListItem>
                            <asp:ListItem Value="22"></asp:ListItem>
                            <asp:ListItem Value="23"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                            <asp:ListItem Value="25"></asp:ListItem>
                            <asp:ListItem Value="26"></asp:ListItem>
                            <asp:ListItem Value="27"></asp:ListItem>
                            <asp:ListItem Value="28"></asp:ListItem>
                            <asp:ListItem Value="29"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="31"></asp:ListItem>
                            <asp:ListItem Value="32"></asp:ListItem>
                            <asp:ListItem Value="33"></asp:ListItem>
                            <asp:ListItem Value="34"></asp:ListItem>
                            <asp:ListItem Value="35"></asp:ListItem>
                            <asp:ListItem Value="36"></asp:ListItem>
                            <asp:ListItem Value="37"></asp:ListItem>
                            <asp:ListItem Value="38"></asp:ListItem>
                            <asp:ListItem Value="39"></asp:ListItem>
                            <asp:ListItem Value="40"></asp:ListItem>
                        </asp:DropDownList>
                        (in years)</td>
                </tr>
                <tr>
                    <td>Annual Salary:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="select1">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                            <asp:ListItem Value="16"></asp:ListItem>
                            <asp:ListItem Value="17"></asp:ListItem>
                            <asp:ListItem Value="18"></asp:ListItem>
                            <asp:ListItem Value="19"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="21"></asp:ListItem>
                            <asp:ListItem Value="22"></asp:ListItem>
                            <asp:ListItem Value="23"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                            <asp:ListItem Value="25"></asp:ListItem>
                            <asp:ListItem Value="26"></asp:ListItem>
                            <asp:ListItem Value="27"></asp:ListItem>
                            <asp:ListItem Value="28"></asp:ListItem>
                            <asp:ListItem Value="29"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="31"></asp:ListItem>
                            <asp:ListItem Value="32"></asp:ListItem>
                            <asp:ListItem Value="33"></asp:ListItem>
                            <asp:ListItem Value="34"></asp:ListItem>
                            <asp:ListItem Value="35"></asp:ListItem>
                            <asp:ListItem Value="36"></asp:ListItem>
                            <asp:ListItem Value="37"></asp:ListItem>
                            <asp:ListItem Value="38"></asp:ListItem>
                            <asp:ListItem Value="39"></asp:ListItem>
                            <asp:ListItem Value="40"></asp:ListItem>
                        </asp:DropDownList>
                        to
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="select1">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                            <asp:ListItem Value="16"></asp:ListItem>
                            <asp:ListItem Value="17"></asp:ListItem>
                            <asp:ListItem Value="18"></asp:ListItem>
                            <asp:ListItem Value="19"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="21"></asp:ListItem>
                            <asp:ListItem Value="22"></asp:ListItem>
                            <asp:ListItem Value="23"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                            <asp:ListItem Value="25"></asp:ListItem>
                            <asp:ListItem Value="26"></asp:ListItem>
                            <asp:ListItem Value="27"></asp:ListItem>
                            <asp:ListItem Value="28"></asp:ListItem>
                            <asp:ListItem Value="29"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="31"></asp:ListItem>
                            <asp:ListItem Value="32"></asp:ListItem>
                            <asp:ListItem Value="33"></asp:ListItem>
                            <asp:ListItem Value="34"></asp:ListItem>
                            <asp:ListItem Value="35"></asp:ListItem>
                            <asp:ListItem Value="36"></asp:ListItem>
                            <asp:ListItem Value="37"></asp:ListItem>
                            <asp:ListItem Value="38"></asp:ListItem>
                            <asp:ListItem Value="39"></asp:ListItem>
                            <asp:ListItem Value="40"></asp:ListItem>
                        </asp:DropDownList>
                        in INR</td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" CssClass="select2" runat="server">
                            <asp:ListItem Value="Both">Both</asp:ListItem>
                            <asp:ListItem Value="Male"></asp:ListItem>
                            <asp:ListItem Value="Female"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Marital Status:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="select2">
                            <asp:ListItem Value="Any"></asp:ListItem>
                            <asp:ListItem Value="Never Married"></asp:ListItem>
                            <asp:ListItem Value="Married"></asp:ListItem>
                            <asp:ListItem Value="Widowed"></asp:ListItem>
                            <asp:ListItem Value="Divorced"></asp:ListItem>
                            <asp:ListItem Value="Separated"></asp:ListItem>
                            <asp:ListItem Value="Others"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h3>Employment Details</h3>
                    </td>

                </tr>
                <tr>
                    <td>Functionl Area:</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>


                                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="select2"
                                    DataSourceID="AccessDataSource8" DataTextField="fun_name"
                                    DataValueField="fun_name" AutoPostBack="True"
                                    OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged">
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>Sub Functional Area:</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>


                                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="select2">
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>Industry Type:</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="ddlindustry" runat="server" CssClass="select2"
                                    DataSourceID="AccessDataSource5" DataTextField="ind_name"
                                    DataValueField="ind_name" AutoPostBack="True"
                                    OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged">
                                </asp:DropDownList>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>Employers:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input3"></asp:TextBox>
                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="select3">
                            <asp:ListItem Value="Current Employee">Current Employee</asp:ListItem>
                            <asp:ListItem>Previous Employee</asp:ListItem>
                            <asp:ListItem Value="Both  Employee"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Designation:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input3"></asp:TextBox>
                        <asp:DropDownList
                            ID="DropDownList12" runat="server" CssClass="select3">
                            <asp:ListItem Value="Current Employee"></asp:ListItem>
                            <asp:ListItem Value="Previous Employee"></asp:ListItem>
                            <asp:ListItem Value="Both  Employee"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h3>Educationl Details</h3>
                    </td>

                </tr>
                <tr>
                    <td>Academic Qualification:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="select2"
                            DataSourceID="AccessDataSource1" DataTextField="A_Qualification"
                            DataValueField="A_Qualification">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>Profissional Qualification:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList5" CssClass="select2"
                            runat="server"
                            DataSourceID="AccessDataSource2" DataTextField="Professional_Qualification"
                            DataValueField="Professional_Qualification">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h3>Additional Filters</h3>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <table>
                            <tr>
                                <td>Date Range:</td>
                                <td>
                                    <asp:DropDownList ID="daterange" CssClass="select1" runat="server">
                                        <asp:ListItem Value="1">Post Date</asp:ListItem>
                                        <asp:ListItem Value="2">Edit Date</asp:ListItem>
                                        <asp:ListItem Value="3">Last Log-in Date</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td>From</td>
                                <td>
                                    <asp:TextBox ID="frmdt" CssClass="input3" runat="server"></asp:TextBox></td>
                                <td>To</td>
                                <td>
                                    <asp:TextBox ID="todt" CssClass="input3" runat="server"></asp:TextBox></td>
                                <td>Location:</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input3"></asp:TextBox></td>
                            </tr>
                        </table>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Search" runat="server" Text="Search cv" OnClick="Search_Click" CssClass="search-btn" />&nbsp;&nbsp;
                        <asp:Label ID="lbresult" runat="server"></asp:Label></td>
                </tr>
            </table>


            </div>

        </div>



        <asp:SqlDataSource ID="AccessDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="AccessDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]"></asp:SqlDataSource>




        <asp:SqlDataSource ID="AccessDataSource8" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]"></asp:SqlDataSource>



        <asp:SqlDataSource ID="AccessDataSource5" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]"></asp:SqlDataSource>
</asp:Content>
