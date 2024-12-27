<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_Back.master" EnableEventValidation="false" CodeFile="Resume_Search_Informetion.aspx.cs" Inherits="Resume_Search_Informetion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/style.css" rel="stylesheet" type="text/css">
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
            border: 0;
        }

        .new_h2 {
            float: left;
            margin: 0 0 10px 0;
            font-weight: bold;
            font-size: 20px;
            color: #000;
        }

        .new_h3 {
            float: left;
            margin: 0 0 5px 0;
            font-weight: normal;
            font-size: 15px;
            color: #000;
        }

        .new_h {
            float: left;
            margin: 5px 0 5px 0;
            font-weight: bold;
            font-size: 16px;
            color: #000;
            border-bottom: 2px solid #ffb812;
            width: 100%;
            padding-bottom: 10px;
        }

        .new_hh {
            float: left;
            margin: 20px 0 0px 0;
            font-weight: bold;
            font-size: 24px;
            color: #000;
        }

        .new_h4 {
            float: left;
            margin: 0 0 10px 0;
            font-weight: normal;
            font-size: 14px;
            color: #BB2F2F;
        }

        .nw_img {
            float: left;
            margin: 0 20px 10px 0;
        }

        .nw_cont_d {
            width: 100%px;
            float: left;
        }

        .klp {
            width: 50%;
            float: left;
            margin: 10px 0 10px 0;
        }

        .nw_all {
            width: 90%;
            min-height: 20px;
            padding: 5px;
        }

        .nw_cont_lft {
            margin-right: 5px;
            display: inline-block;
            width: 37%;
            float: left;
            font-size: 15px;
            color: #000;
        }

        .nw_cont_rgt {
            margin-right: 5px;
            display: inline-block;
            width: 60%;
            float: right;
            font-size: 16px;
            color: #504949;
        }

            .nw_cont_rgt span {
                color: #A02603;
            }

        .nw_p {
            padding: 5px;
            font-size: 15px;
            color: #06F;
            text-align: justify;
            margin: 0px 0 10px 0;
            display: block;
        }

        .chk_bx {
            margin: 0 10px 0 0;
        }

        .nw_h2 {
            float: left;
            font-weight: bold;
            font-size: 14px;
            color: #000;
            background: url(images3/star.png) no-repeat left;
            padding-left: 20px;
        }

        .v_span {
            float: left;
            margin: 0 0 0 15px;
            color: #060;
            font: 16px bold Arial;
            line-height: 38px;
        }

        .spacer {
            clear: both;
            font-size: 0;
            line-height: 0;
            margin: 0;
            padding: 0;
        }

        .skill-txt {
            margin: 13px 0 0 0;
        }

        .green-txt {
            color: #336212;
        }

        .verified {
            margin: 19px 0 0 0;
            color: #585951;
        }

            .verified li {
                float: left;
                color: #585951;
                background: url(images3/border.png) right no-repeat;
                margin: 0 11px 0 0;
                padding: 0 11px 0 0;
            }

        ul {
            list-style: none;
        }

        .verified span {
            float: left;
            margin: 0 5px 0 0;
        }

        .verified li:last-child {
            margin: 0;
            background: none;
        }

        .icon-align {
            margin: 2px 5px 0 0 !important;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page_title">Resume Search</div>
    <div align="center">
        <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
            <tr>
                <td width="3%" class="Small_path">
                    <img src="images3/icon_home.png" width="18" height="18" /></td>
                <td width="47%" class="Small_path">Home > Resume Search</td>
                <td width="50%" align="right">Resume Found :
                    <asp:Label ID="resume_found" runat="server"></asp:Label></td>
            </tr>
        </table>
        <br>
        <br>




        <div align="center">


            <asp:GridView ID="GridView1" runat="server"
                HeaderStyle-HorizontalAlign="Center" AutoGenerateColumns="false"
                DataKeyNames="id_txt" OnPageIndexChanging="GridView1_PageIndexChanging"
                OnRowCommand="GridView1_RowCommand"
                AllowPaging="True" PageSize="150000">
                <HeaderStyle ForeColor="Black" Font-Bold="True"
                    BackColor="#CCCCCC"></HeaderStyle>

                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div style="float: none; margin: 10px auto; width: 980px;">



                                <!----------------------------------------------------form--------------------------------------------------->

                                <div class="nw_cont_d">

                                    <h3 class="new_h"></h3>
                                    <br clear="both">


                                    <h2 class="nw_h2"><%# Eval("name_txt") %></h2>
                                    <br clear="both">

                                    <div class="klp">



                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Gender:</div>
                                            <div class="nw_cont_rgt"><%# Eval("sex_txt")%></div>
                                        </div>

                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Date of Birth:</div>
                                            <div class="nw_cont_rgt"><%# Eval("date_txt")%>/<%# Eval("month_txt")%>/<%# Eval("year_txt")%></div>
                                        </div>

                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Salary:</div>
                                            <div class="nw_cont_rgt"><%# Eval("ctc_txt")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Industry:</div>
                                            <div class="nw_cont_rgt"><%# Eval("in_txt")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Farea:</div>
                                            <div class="nw_cont_rgt"><%# Eval("f_n")%></div>
                                        </div>




                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Role:</div>
                                            <div class="nw_cont_rgt"><%# Eval("t_n")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Keyskills:</div>
                                            <div class="nw_cont_rgt"><%# Eval("ks_txt")%></div>
                                        </div>
                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Posting Date:</div>
                                            <div class="nw_cont_rgt"><%# Eval("crt_date")%></div>
                                        </div>
                                        <br clear="both">
                                    </div>
                                    <div class="klp">
                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Experience:</div>
                                            <div class="nw_cont_rgt"><%# Eval("exp_txt")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Academic Qualification:</div>
                                            <div class="nw_cont_rgt"><%# Eval("aq_txt")%></div>
                                        </div>


                                        <div class="nw_all" style="float: left">
                                            <div class="nw_cont_lft">Professional Qualification</div>
                                            <div class="nw_cont_rgt"><%# Eval("pq_txt")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Current Employers:</div>
                                            <div class="nw_cont_rgt"><%# Eval("curr_emp_txt")%></div>
                                        </div>



                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Current Designation:</div>
                                            <div class="nw_cont_rgt"><%# Eval("curr_des_txt")%></div>
                                        </div>


                                        <div class="nw_all">
                                            <div class="nw_cont_lft">Job Responsibility:</div>
                                            <div class="nw_cont_rgt"><%# Eval("job_res_txt")%></div>
                                        </div>
                                    </div>
                                    <div style="margin: 10px 0 10px 0;"><a href="Viewprofile_Form.aspx?canid=<%# Eval("id_txt")%>">
                                        <img src="images3/btn_nw.jpg" width="167" height="38" alt="" style="float: left;" /></a></div>

                                    <br class="spacer" />

                                    <p class="skill-txt"><span class="green-txt"><%# Eval("summery_txt")%></span></p>

                                    <div class="verified">
                                        <span>Verified :</span>
                                        <ul>
                                            <li><span class="icon-align">
                                                <img src="images3/phone.png" /></span>Phone Number &nbsp;  <%# Eval("mob_txt")%></li>
                                            <li><span class="icon-align">
                                                <img src="images3/icon1.png" /></span>Email - id  &nbsp;  <a href='mailto:<%# Eval("email_txt")%>'><%# Eval("email_txt")%></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>



           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           <%--  <asp:Panel ID="pn101" runat="server" Visible="false">
                <asp:GridView ID="GridView2" OnRowCreated="GridView2_RowCreated" runat="server"></asp:GridView>
            </asp:Panel>
        </div>
        &nbsp; &nbsp; Download:
    <asp:ImageButton ID="export_excel" runat="server" OnClick="export_excel_Click" ImageUrl="../images3/download.jpg" ToolTip="Export to Excel"
        Width="52px" />--%>


<asp:GridView ID="GridView1" 
    HeaderStyle-HorizontalAlign="Center"
    DataKeyNames="id_txt" 
    OnPageIndexChanging="GridView1_PageIndexChanging" 
    OnRowCommand="GridView1_RowCommand" 
    OnRowCreated="GridView1_RowCreated" 
    AllowPaging="True" 
    PageSize="5" 
    AutoGenerateColumns="False" 
    Visible="True">

    <HeaderStyle ForeColor="Black" Font-Bold="True" BackColor="#CCCCCC"></HeaderStyle>
    <AlternatingRowStyle BackColor="PaleTurquoise" ForeColor="DarkBlue" Font-Italic="False" />

    <Columns>
        <asp:ButtonField ButtonType="Button" CommandName="Detail" HeaderText="Full CV" 
            ShowHeader="True" Text="Detail" />
        <!-- Add other columns as required -->
    </Columns>

    <PagerSettings Mode="NextPrevious" FirstPageText="<< First" LastPageText="Last >>" />
</asp:GridView>

        <br />
        <br />
</asp:Content>
