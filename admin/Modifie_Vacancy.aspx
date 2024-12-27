<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifie_Vacancy.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Modifie_Vacancy" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
    <link href="css/style.css" rel="stylesheet" type="text/css">
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



    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount() {
            var CharLength = '<%=cprofile.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_cprofile');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>



    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount1() {
            var CharLength = '<%=des.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_des');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar1');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>



    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount2() {
            var CharLength = '<%=jp.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_jp');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar2');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>


    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount3() {
            var CharLength = '<%=cprofile1.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_cprofile1');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar3');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>


    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount5() {
            var CharLength = '<%=jobspc.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_jobspc');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar5');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>


    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount6() {
            var CharLength = '<%=keyword.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_benetits');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar6');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>

    <script type="text/javascript">
        //This function is used to display the number of characters left and percentage graph
        function CharactersCount4() {
            var CharLength = '<%=jobr.MaxLength %>';
    var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_jobr');
    var lblCount = document.getElementById('ctl00_ContentPlaceHolder1_lblChar4');



    var colorwidth = txtMsg.value.length;

    if (txtMsg.value.length > CharLength) {
        txtMsg.value = txtMsg.value.substring(0, CharLength);
    }
    lblCount.innerHTML = CharLength - txtMsg.value.length;
    if (colorwidth >= 1) {
        divcolor.width = (colorwidth * 1.05) + "px";
        divcolor.bgColor = 'red';
        divcolor.height = 6 + "px";
    }
    else {
        divcolor.width = 1 + "px";
        divcolor.bgColor = '#9ED40A';
    }
}
    </script>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager id="tsm1" runat="server"></asp:ToolkitScriptManager>
    <div class="page_title">Edit Vacancy</div>
    <div align="center">
        <br>
        <table width="95%" border="0" align="center">
            <tr>
                <td>
                    <div align="justify">
                        <p>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </p>

                        <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8">
                            <tr>
                                <td bgcolor="#4b8df8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFFF" align="center">
                                    <br />
                                    <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
                                        <tr>
                                            <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Job Details:<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
                                                <tr>
                                                    <td width="3%" class="Small_path">
                                                        <img src="images/icon_home.png" width="18" height="18" /></td>
                                                    <td width="47%" class="Small_path">Home > Vacancy &gt; Edit Vacancy</td>
                                                    <td width="50%"></td>
                                                </tr>
                                            </table>
                                            </strong></td>
                                        </tr>
                                    </table>
                                    <table width="95%" border="1" align="center" cellpadding="10" cellspacing="2" bordercolor="#E8E8E8" class="text" bgcolor="#F7F7F7">
                                        <div id="comp_ind" runat="server">
                                            <tr>
                                                <td width="43%">Industry<font color="red">*</font></td>
                                                <td width="50%">
                                                    <asp:ListBox ID="ListBox5" runat="server" SelectionMode="Multiple"
                                                        Width="244px"></asp:ListBox>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td width="43%">&nbsp;</td>
                                                <td width="50%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>Functional Area &nbsp;<font color="red">*</font></td>
                                                <td>
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True"
                                                                OnSelectedIndexChanged="DropDownList15_SelectedIndexChanged">
                                                            </asp:DropDownList>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Sub Functional Area </td>
                                                <td>
                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                            <asp:ListBox ID="ListBox6" runat="server"
                                                                SelectionMode="Multiple" Width="244px"></asp:ListBox>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>
                                        </div>
                                        <tr>
                                            <td>Job Position</td>
                                            <td>
                                                <asp:TextBox ID="rep" runat="server" Width="269px" TextMode="MultiLine"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Job Specification</td>
                                            <td>
                                                <asp:TextBox ID="jp" runat="server" TextMode="MultiLine" Height="71px" Width="255px" onkeyup="Javascript:CharactersCount2();" MaxLength="70"></asp:TextBox>
                                                &nbsp;&nbsp;
                        <asp:Label ID="lblChar2" runat="server" Text="70" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Keyskills</td>
                                            <td>
                                                <asp:TextBox ID="keyword" runat="server" TextMode="MultiLine" Width="272px" onkeyup="Javascript:CharactersCount6();" MaxLength="250"></asp:TextBox>
                                                <asp:Label ID="lblChar6" runat="server" Text="250" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <div id="divbenifit" runat="server" visible="false">
                                            <tr>
                                                <td valign="top">
                                                    <div></div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:TextBox ID="jobtl" runat="server" Width="280px" Visible="False"></asp:TextBox>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <div>Job Specification </div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:TextBox ID="jobspc" runat="server" TextMode="MultiLine" Height="71px" Width="255px" onkeyup="Javascript:CharactersCount5();" MaxLength="250"></asp:TextBox>
                                                        &nbsp;&nbsp;
                          <asp:Label ID="lblChar5" runat="server" Text="250" ForeColor="Red"></asp:Label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <div></div>
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:TextBox ID="benetits" runat="server" TextMode="MultiLine" Height="71px"
                                                            Width="255px" onkeyup="Javascript:CharactersCount6();" MaxLength="250"
                                                            Visible="False"></asp:TextBox>
                                                        &nbsp;&nbsp;
                                                    </div>
                                                </td>
                                            </tr>
                                        </div>
                                        <tr>
                                            <td>Job Title</td>
                                            <td>
                                                <asp:TextBox ID="tat" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Candidate Profile</td>
                                            <td>
                                                <asp:TextBox ID="cprofile1" runat="server" TextMode="MultiLine" Height="71px" Width="255px" onkeyup="Javascript:CharactersCount3();" MaxLength="200"></asp:TextBox>
                                                &nbsp;&nbsp;
                        <asp:Label ID="lblChar3" runat="server" Text="200" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>Job Description</td>
                                            <td>
                                                <asp:TextBox ID="jobr" runat="server" TextMode="MultiLine" Height="71px" Width="255px" onkeyup="Javascript:CharactersCount4();" MaxLength="200"></asp:TextBox>
                                                &nbsp;&nbsp;
                        <asp:Label ID="lblChar4" runat="server" Text="200" ForeColor="Red"></asp:Label></td>
                                        </tr>
                                        <div id="opening" runat="server">
                                            <tr>
                                                <td>Number of Vacancy</td>
                                                <td>
                                                    <asp:TextBox ID="vacancy" runat="server"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>Gender</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>Both</asp:ListItem>
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                    </asp:DropDownList></td>
                                            </tr>
                                        </div>
                                        <tr>
                                            <td>Year Of&nbsp; Experience</td>
                                            <td>Min<asp:TextBox ID="minexp" runat="server" Width="40px"></asp:TextBox>
                                                &nbsp;Max<asp:TextBox ID="maxexp" runat="server" Width="40px"></asp:TextBox>
                                                <br />
                                                <asp:CompareValidator ID="CompareValidator3" runat="server"
                                                    ControlToValidate="minexp" ErrorMessage="MUST BE IN NUMBER."
                                                    Operator="DataTypeCheck"
                                                    Type="Integer"></asp:CompareValidator>
                                                <br />
                                                <asp:CompareValidator ID="CompareValidator4" runat="server"
                                                    ControlToValidate="maxexp" ErrorMessage="MUST BE NUMBER FIELD."
                                                    Operator="DataTypeCheck"
                                                    Type="Integer"></asp:CompareValidator></td>
                                        </tr>
                                        <div id="JOBTYPE1" runat="server">
                                            <tr>
                                                <td>Job Type</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>Permanent</asp:ListItem>
                                                        <asp:ListItem>On Contract Basis</asp:ListItem>
                                                        <asp:ListItem>Part Time</asp:ListItem>
                                                    </asp:DropDownList></td>
                                            </tr>
                                        </div>
                                        <tr>
                                            <td>Academic Qualification</td>
                                            <td>
                                                <asp:ListBox ID="ListBox3" runat="server"
                                                    SelectionMode="Multiple" Width="244px"></asp:ListBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">(Press Ctrl key to choose more than one)</span></td>
                                        </tr>
                                        <tr>
                                    </font></td>
                                <td>
                                    <div>Professional Qualification &nbsp;</div>
                                    <td valign="top">

                                        <asp:ListBox ID="ListBox4" runat="server" SelectionMode="Multiple"
                                            Width="244px"></asp:ListBox>

                                    </td>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<td valign="top">

                                    <span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">(Press Ctrl key to choose more than one)</span></td>
                                    <td>&nbsp;</td>
                            </tr>

                            <div id="divage" runat="server">
                                <tr>
                                    <td>Age Between</td>
                                    <td>
                                        <asp:TextBox ID="ab" runat="server"></asp:TextBox></td>
                                </tr>
                            </div>
                            <tr>
                                <td>Salary Specification  (Per Annum) </td>
                                <td>Min
                                    <asp:TextBox ID="TextBox25" runat="server" Width="41px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max<asp:TextBox ID="sal_max" runat="server" Width="41px"></asp:TextBox>
                                    (Lakh)</td>
                            </tr>
                            <div id="div20" runat="server" visible="false">
                            </div>

                            <tr>
                                <td>Job Location<font color="red">*</font></td>
                                <td>
                                    <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple" Width="244px"></asp:ListBox>
                                </td>
                            </tr>
                            <div id="locdiv" runat="server">

                                <tr>
                                    <td>&nbsp;</td>
                                    <td>

                                        <span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">(Press Ctrl key to choose more than one)</span></td>
                                </tr>
                                <tr>
                                    <td>Job Code</td>
                                    <td>
                                        <asp:TextBox ID="jobcode" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                            </div>
                            <td>Posting Date</td>
                            <td>
                                <asp:TextBox ID="post_date" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="CEPostDate" runat="server" Format="dd/MM/yyyy" TargetControlID="post_date"></asp:CalendarExtender>
                            </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" Visible="False" /></td>
            </tr>
        </table>
        <br />
        <div id="comp_div" runat="server">
            <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
                <tr>
                    <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Company Detail</strong><strong>s:</strong></td>
                </tr>
            </table>
            <table width="95%" border="1" align="center" cellpadding="40" cellspacing="2" bordercolor="#E8E8E8" class="text" bgcolor="#F7F7F7">
                <tr id="compdiv" runat="server" visible="false">
                    <td width="43%">Company Name</td>
                    <td width="50%">
                        <asp:DropDownList ID="cmpname" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td width="43%">Company Name </td>
                    <td width="50%">
                        <asp:TextBox ID="cname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Company Profile</td>
                    <td>
                        <asp:TextBox ID="cprofile" runat="server" onkeyup="Javascript:CharactersCount();" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblChar" runat="server" ForeColor="Red" Text="200"></asp:Label></td>
                </tr>
            </table>
            <br />
        </div>
        <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
            <tr>
                <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Contact Detail</strong><strong>s:</strong></td>
            </tr>
        </table>
        <table width="95%" border="1" align="center" cellpadding="40" cellspacing="2" bordercolor="#E8E8E8" class="text" bgcolor="#F7F7F7">
            <tr>
                <td width="43%">Contact Person</td>
                <td width="50%">
                    <asp:TextBox ID="cp" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Designation</td>
                <td>
                    <asp:TextBox ID="des" runat="server" onkeyup="Javascript:CharactersCount1();" TextMode="MultiLine" MaxLength="50"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                      <asp:Label ID="lblChar1" ForeColor="Red" runat="server" Text="50"></asp:Label></td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="add" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Fax</td>
                <td>
                    <asp:TextBox ID="fax" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server"
                        ControlToValidate="fax" ErrorMessage="FAX IT MUST IN NUMBER"
                        Operator="DataTypeCheck"
                        Type="Integer"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
            </tr>
            </td>
                      <td>&nbsp;</td>
            </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Visible="False"></asp:ListBox></td>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="country" runat="server" Visible="False"></asp:TextBox></td>
                        </tr>
        </table>

        <br />
        </td>
              </tr>
              <tr>
                  <td height="50" align="center" bgcolor="#f5f5f5">
                      <asp:ImageButton ID="SEARCH" runat="server" ImageUrl="images/submit.jpg" Width="71px" Height="34px" OnClick="Button1_Click" /></td>
              </tr>
        </table>
    <p align="center">


        <asp:SqlDataSource ID="AccessDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]"></asp:SqlDataSource>


        <asp:SqlDataSource ID="AccessDataSource4" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="AccessDataSource3" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="AccessDataSource8" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]"></asp:SqlDataSource>

        <asp:CheckBox ID="CheckBox1" runat="server" Visible="false" />
        <asp:SqlDataSource ID="AccessDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]"></asp:SqlDataSource>



    </p>
</asp:Content>
