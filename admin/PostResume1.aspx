<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostResume1.aspx.cs" MasterPageFile="~/MasterPage_Back.master"
  Inherits="PostResume1" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      .align1 {
        position: relative;
      }
    </style>

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
    <LINK href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
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
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!---------------------------------banner----------------------------->


    <!----------------------------------content---------------------------------------->
    <div id="contentbg">
      <div class="contentblank">
        <div class="main-cont">

          <%--<div class="abt-lft" style="height:350px;">
            <div class="abt-lft-bdy">
              <ul>
                <li><a href="CandidateZone_Login1.aspx" class="side_menu">Jobseeker Login</a></li>
                <li><a href="PostResume1.aspx" class="side_menu">Jobseeker Registration</a></li>

              </ul>
            </div>
        </div>--%>
        <div class="abt-lft1"></div>
        <div class="abt-rht1">


          <h2>Post Resume</h2>



          <div align="center">



            <table class="table">
              <asp:ScriptManager ID="ScriptManager1" runat="server">
              </asp:ScriptManager>
              <tr>
                <td>
                  <div align="justify">

                    <table class="table table-bordered">

                      <tr bgcolor="#dfefff">

                        <td colspan="2" bgcolor="#dfefff">
                          <font color="#0066cc" ; size="3px"><strong>Enter Login Information</strong></font>
                        </td>
                      </tr>
                      <tr>
                        <td width="40%" bgcolor="#FFFFFF">User Name&nbsp; <font color="red">*</font>
                        </td>
                        <td width="60%" bgcolor="#FFFFFF" class="align1">
                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                              <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"
                                AutoPostBack="True" autocompletetype="Disabled"></asp:TextBox>
                              <asp:Button ID="Check_User" runat="server" OnClick="Check_User_Click"
                                Text="Check Availability" />
                              <asp:SqlDataSource ID="AccessDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:mycon %>"
                                SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
                              <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

                              <asp:UpdateProgress ID="UpdateProgress1" runat="server"
                                AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                  <img alt="" src="loader.gif"
                                    style="width: 30px; height: 30px; position:absolute; top:5px; right:60px; " />
                                </ProgressTemplate>
                              </asp:UpdateProgress>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </td>
                      </tr>


                      <tr>
                        <td bgcolor="#FFFFFF">Password &nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF">

                          <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"
                            ontextchanged="TextBox2_TextChanged1"></asp:TextBox>
                          <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Confirm Password&nbsp;&nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">

                          <asp:TextBox ID="TextBox70" runat="server" TextMode="Password"></asp:TextBox>
                          <asp:Label ID="Label4" runat="server" Text=""></asp:Label>


                        </td>
                      </tr>
                      <tr>
                        <td colspan="2" bgcolor="#dfefff">
                          <font color="#0066cc" ; size="3px"><strong>Your Personal Details</strong></font>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Name&nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Date of Birth &nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF">
                          <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="1945"></asp:ListItem>
                            <asp:ListItem Value="1946"></asp:ListItem>
                            <asp:ListItem Value="1947"></asp:ListItem>
                            <asp:ListItem Value="1948"></asp:ListItem>
                            <asp:ListItem Value="1949"></asp:ListItem>
                            <asp:ListItem Value="1950"></asp:ListItem>
                            <asp:ListItem Value="1951"></asp:ListItem>
                            <asp:ListItem Value="1952"></asp:ListItem>
                            <asp:ListItem Value="1953"></asp:ListItem>
                            <asp:ListItem Value="1954"></asp:ListItem>
                            <asp:ListItem Value="1955"></asp:ListItem>
                            <asp:ListItem Value="1956"></asp:ListItem>
                            <asp:ListItem Value="1957"></asp:ListItem>
                            <asp:ListItem Value="1958"></asp:ListItem>
                            <asp:ListItem Value="1959"></asp:ListItem>
                            <asp:ListItem Value="1960"></asp:ListItem>
                            <asp:ListItem Value="1961"></asp:ListItem>
                            <asp:ListItem Value="1962"></asp:ListItem>
                            <asp:ListItem Value="1963"></asp:ListItem>
                            <asp:ListItem Value="1964"></asp:ListItem>
                            <asp:ListItem Value="1965"></asp:ListItem>
                            <asp:ListItem Value="1966"></asp:ListItem>
                            <asp:ListItem Value="1967"></asp:ListItem>
                            <asp:ListItem Value="1968"></asp:ListItem>
                            <asp:ListItem Value="1969"></asp:ListItem>
                            <asp:ListItem Value="1970"></asp:ListItem>
                            <asp:ListItem Value="1971"></asp:ListItem>
                            <asp:ListItem Value="1972"></asp:ListItem>
                            <asp:ListItem Value="1973"></asp:ListItem>
                            <asp:ListItem Value="1974"></asp:ListItem>
                            <asp:ListItem Value="1975"></asp:ListItem>
                            <asp:ListItem Value="1976"></asp:ListItem>
                            <asp:ListItem Value="1977"></asp:ListItem>
                            <asp:ListItem Value="1978"></asp:ListItem>
                            <asp:ListItem Value="1979"></asp:ListItem>
                            <asp:ListItem Value="1980"></asp:ListItem>
                            <asp:ListItem Value="1981"></asp:ListItem>
                            <asp:ListItem Value="1982"></asp:ListItem>
                            <asp:ListItem Value="1983"></asp:ListItem>
                            <asp:ListItem Value="1984"></asp:ListItem>
                            <asp:ListItem Value="1985"></asp:ListItem>
                            <asp:ListItem Value="1986"></asp:ListItem>
                            <asp:ListItem Value="1987"></asp:ListItem>
                            <asp:ListItem Value="1988"></asp:ListItem>
                            <asp:ListItem Value="1989"></asp:ListItem>
                            <asp:ListItem Value="1990"></asp:ListItem>
                            <asp:ListItem Value="1991"></asp:ListItem>
                            <asp:ListItem Value="1992"></asp:ListItem>
                            <asp:ListItem Value="1993"></asp:ListItem>
                            <asp:ListItem Value="1994"></asp:ListItem>
                            <asp:ListItem Value="1995"></asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Sex&nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Maritial Status&nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:DropDownList ID="DropDownList10" runat="server">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="Never Married"></asp:ListItem>
                            <asp:ListItem Value="Married"></asp:ListItem>
                            <asp:ListItem Value="Widowed"></asp:ListItem>
                            <asp:ListItem Value="Divorced"></asp:ListItem>
                            <asp:ListItem Value="Separates"></asp:ListItem>
                            <asp:ListItem Value="Others"></asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Email &nbsp; <font color="red">*</font>
                        </td>

                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                              <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Check  Email" />
                              <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ControlToValidate="TextBox8" ErrorMessage="not a valid email id"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                              </asp:RegularExpressionValidator>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </td>
                      </tr>
                      <tr>
                        <td height="28" bgcolor="#FFFFFF">Address &nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF">
                          <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#FFFFFF">Current Location&nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:ListBox ID="ListBox1" runat="server" DataSourceID="AccessDataSource1"
                            DataTextField="city_name" DataValueField="city_name"> </asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Country&nbsp; &nbsp; <font color="red">*</font>
                        </td>

                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox14" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF"><span class="style5">Mobile Number &nbsp; <font color="red">*</font>
                            </span></td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox12" runat="server" AutoCompleteType="Disabled"
                            onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>&nbsp;
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF"><span class="style5">Landline Number </span></td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled"
                            onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox11"
                            ErrorMessage="Landline must be Number" Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                        </td>
                      </tr>
                      <tr bgcolor="#EAEAEA">
                        <td colspan="2" bgcolor="#dfefff">
                          <font color="#0066cc" ; size="3px"><strong>Education Details</strong></font>
                        </td>

                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Academic Qualification &nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF">
                          <asp:ListBox ID="ListBox3" runat="server" DataSourceID="AccessDataSource3"
                            DataTextField="A_Qualification" DataValueField="A_Qualification" SelectionMode="Multiple"
                            Width="244px"></asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">if other</td>

                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox34" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Professional Qualification &nbsp; </td>
                        <td bgcolor="#FFFFFF">

                          <asp:ListBox ID="ListBox4" runat="server" DataSourceID="AccessDataSource4"
                            DataTextField="Professional_Qualification" DataValueField="Professional_Qualification"
                            SelectionMode="Multiple" Width="244px"></asp:ListBox>

                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">If other</td>

                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox22" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td height="11" bgcolor="#FFFFFF"><span>Institute</span></td>
                        <td height="11" bgcolor="#FFFFFF"><span class="style5">
                            <asp:TextBox ID="TextBox46" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="12" bgcolor="#FFFFFF"><span>Year of Graduation
                          </span></td>
                        <td bgcolor="#FFFFFF"><span class="style5">
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="AccessDataSource2"
                              DataTextField="year" DataValueField="year"> </asp:DropDownList>
                        </td>
                      </tr>
                      <tr bgcolor="#EAEAEA">
                        <td colspan="2" bgcolor="#dfefff"><strong>Academic \ Professional
                            Qualification&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                      </tr>
                      <tr>
                        <td height="12" bgcolor="#FFFFFF"><span>Resume Title &nbsp; <font color="red">*</font></span>
                        </td>

                        <td height="12" bgcolor="#FFFFFF"><span class="style5">
                            <asp:TextBox ID="TextBox23" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine">
                            </asp:TextBox>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="25" bgcolor="#FFFFFF"><span>Key Skills &nbsp; <font color="red">*</font></span></td>
                        <td height="25" bgcolor="#FFFFFF"><span class="style5">
                            <asp:TextBox ID="TextBox19" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine">
                            </asp:TextBox>
                          </span></td>
                      </tr>
                      <tr>
                        <td height="25" bgcolor="#FFFFFF"><span>Experience</span></td>
                        <td bgcolor="#FFFFFF"><span class="style5">
                            <asp:DropDownList ID="DropDownList11" runat="server">
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
                          </span></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF" class="style6">Industry</td>
                        <td bgcolor="#FFFFFF" class="style7">
                          <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="AccessDataSource5"
                            DataTextField="ind_name" DataValueField="ind_name"> </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Functional Area </td>
                        <td bgcolor="#FFFFFF" class="align1">


                          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>



                              <asp:DropDownList ID="DropDownList15" runat="server" datasourceid="AccessDataSource8"
                                DataTextField="fun_name" DataValueField="fun_name" AutoPostBack="True"
                                onselectedindexchanged="DropDownList15_SelectedIndexChanged">
                              </asp:DropDownList>

                              <asp:UpdateProgress ID="UpdateProgress2" runat="server"
                                AssociatedUpdatePanelID="UpdatePanel2">
                                <ProgressTemplate>
                                  <img alt="" src="loader.gif"
                                    style="width: 30px; height: 30px; position:absolute; top:5px; right:60px; " />
                                </ProgressTemplate>
                              </asp:UpdateProgress>
                            </ContentTemplate>
                          </asp:UpdatePanel>

                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF"><span id="span_ugopen"><span id="span_ugopen0">Sub functional
                              Area</span></span></td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                              <asp:DropDownList ID="DropDownList9" runat="server"> </asp:DropDownList>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF"><span id="span_ugopen">If &quot;Other&quot;</span></td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>

                        </td>
                      </tr>

                      <tr>
                        <td bgcolor="#FFFFFF">Current Employer</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Current Designation</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Current Employment Period
                          from</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Current Employment Period to</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Job Responsibility</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employer 1</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Designation 1</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox30" runat="server" ontextchanged="TextBox30_TextChanged">
                          </asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 1 Period from</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 1 Period to </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Last Job Responsibility 1</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employer 2</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Designation 2</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 2 Period from</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 2 Period to </td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Last Job Responsibility 2</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employer 3</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Designation 3</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 3 Period from</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Previous Employment 3 Period to</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Last Jobs Responsibility 3</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                        </td>
                      </tr>

                      <tr>
                        <td bgcolor="#FFFFFF">Current CTC</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:DropDownList ID="DropDownList12" runat="server">
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
                            <asp:ListItem Value="41"></asp:ListItem>
                            <asp:ListItem Value="42"></asp:ListItem>
                            <asp:ListItem Value="43"></asp:ListItem>
                            <asp:ListItem Value="44"></asp:ListItem>
                            <asp:ListItem Value="45"></asp:ListItem>
                            <asp:ListItem Value="46"></asp:ListItem>
                            <asp:ListItem Value="47"></asp:ListItem>
                            <asp:ListItem Value="48"></asp:ListItem>
                            <asp:ListItem Value="49"></asp:ListItem>
                            <asp:ListItem Value="50"></asp:ListItem>
                          </asp:DropDownList>
                          <span>Lakhs</span>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Summery</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox48" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#FFFFFF">Language</td>
                        <td bgcolor="#FFFFFF">
                          <div align="left">
                            <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>

                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Read" /> &nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Write" /> &nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Speak" />
                          </div>
                          <br />
                          <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                          <asp:CheckBox ID="CheckBox4" runat="server" Text="Read" /> &nbsp;&nbsp;
                          <asp:CheckBox ID="CheckBox5" runat="server" Text="Write" /> &nbsp;&nbsp;
                          <asp:CheckBox ID="CheckBox6" runat="server" Text="Speak" />
                          <br />
                          <br />
                          <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                          <asp:CheckBox ID="CheckBox7" runat="server" Text="Read" /> &nbsp;&nbsp;
                          <asp:CheckBox ID="CheckBox8" runat="server" Text="Write" /> &nbsp;&nbsp;
                          <asp:CheckBox ID="CheckBox9" runat="server" Text="Speak" />
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Job Type</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:DropDownList ID="DropDownList13" runat="server">
                            <asp:ListItem Value="Select"></asp:ListItem>
                            <asp:ListItem Value="Permanent"></asp:ListItem>
                            <asp:ListItem Value="Temporary/Contractual"></asp:ListItem>
                            <asp:ListItem Value="Either"></asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Employment Status</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:DropDownList ID="DropDownList14" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Full Time</asp:ListItem>
                            <asp:ListItem Value="Part Time"></asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>

                      <tr>
                        <td bgcolor="#FFFFFF">Preferred location <asp:SqlDataSource ID="AccessDataSource7"
                            runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
                            SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
                        </td>

                        <td bgcolor="#FFFFFF">
                          <asp:ListBox ID="lstprefer" runat="server" DataSourceID="AccessDataSource1"
                            DataTextField="city_name" DataValueField="city_name" Height="78px" SelectionMode="Multiple"
                            Width="253px"> </asp:ListBox>
                        </td>
                      </tr>
                      <tr bgcolor="#EAEAEA">
                        <td colspan="2" bgcolor="#dfefff"><strong>Referance</td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Referance Name</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Refrence Company</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Refrence Designation</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Relationship with referrer</td>
                        <td bgcolor="#FFFFFF">
                          <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Reference Phone</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox68" runat="server"
                            onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td bgcolor="#FFFFFF">Reference Email</td>
                        <td bgcolor="#FFFFFF" class="style5">
                          <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="TextBox69" ErrorMessage="Please enter valid email id"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                          </asp:RegularExpressionValidator>
                        </td>
                      </tr>

                      <tr runat="server" visible="false">
                        <td bgcolor="#FFFFFF"> Please Verify this word &nbsp; <font color="red">*</font>
                        </td>
                        <td bgcolor="#FFFFFF" class="style5">


                          <asp:Image ID="imCaptcha" ImageUrl="~/cap.ashx" runat="server" />
                          <br>

                          <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                          <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox71"
                            ErrorMessage="You have Entered a Wrong Verification Code!Please Re-enter!!!"
                            OnServerValidate="CAPTCHAValidate"></asp:CustomValidator>
                        </td>
                      </tr>
                      <div id="Div1" runat="server">
                        <tr bgcolor="#CCCCCC">
                          <td colspan="2" class="style1"><strong>observation</strong></td>
                        </tr>
                        <tr>
                          <td align="right">Coummunication</td>

                          <td>
                            <asp:DropDownList ID="communication" runat="server">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem Value="ex">ex</asp:ListItem>
                              <asp:ListItem Value="a+">a+</asp:ListItem>
                              <asp:ListItem Value="a">a</asp:ListItem>
                              <asp:ListItem Value="b+">b+</asp:ListItem>
                              <asp:ListItem Value="b">b</asp:ListItem>
                              <asp:ListItem Value="c+">c+</asp:ListItem>
                              <asp:ListItem Value="c">c</asp:ListItem>
                              <asp:ListItem Value="d">d</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">Presentation</td>

                          <td>
                            <asp:DropDownList ID="presentation" runat="server">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem Value="ex">ex</asp:ListItem>
                              <asp:ListItem Value="a+">a+</asp:ListItem>
                              <asp:ListItem Value="a">a</asp:ListItem>
                              <asp:ListItem Value="b+">b+</asp:ListItem>
                              <asp:ListItem Value="b">b</asp:ListItem>
                              <asp:ListItem Value="c+">c+</asp:ListItem>
                              <asp:ListItem Value="c">c</asp:ListItem>
                              <asp:ListItem Value="d">d</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">Relevent Experience</td>

                          <td>
                            <asp:DropDownList ID="relivent_exp" runat="server">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem Value="ex">ex</asp:ListItem>
                              <asp:ListItem Value="a+">a+</asp:ListItem>
                              <asp:ListItem Value="a">a</asp:ListItem>
                              <asp:ListItem Value="b+">b+</asp:ListItem>
                              <asp:ListItem Value="b">b</asp:ListItem>
                              <asp:ListItem Value="c+">c+</asp:ListItem>
                              <asp:ListItem Value="c">c</asp:ListItem>
                              <asp:ListItem Value="d">d</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">Remarks</td>

                          <td>
                            <asp:TextBox ID="remarks" TextMode="MultiLine" runat="server" Width="246px"></asp:TextBox>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">Resume posted by</td>

                          <td>
                            <asp:DropDownList ID="rsposted_by" runat="server">

                            </asp:DropDownList>
                          </td>
                        </tr>
                        <tr>
                          <td align="right">Source</td>

                          <td>
                            <asp:DropDownList ID="source" runat="server">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                              <asp:ListItem Value="Reference">Reference</asp:ListItem>
                              <asp:ListItem Value="Forced">Forced</asp:ListItem>
                              <asp:ListItem Value="naukri.com">naukri.com</asp:ListItem>
                              <asp:ListItem Value="headhunting">headhunting</asp:ListItem>
                              <asp:ListItem Value="other portal">other portal</asp:ListItem>
                              <asp:ListItem Value="Candidate Posting">Candidate Posting</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        </tr>
                      </div>
                      <tr>
                        <td colspan="2" bgcolor="#FFFFFF">
                          <div align="center">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />

                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                          </div>
                        </td>
                      </tr>


                    </table>



                    <asp:SqlDataSource ID="AccessDataSource5" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [ind_name] FROM [industry_master]">
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="AccessDataSource2" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [year] FROM [year_master]">
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="AccessDataSource4" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="AccessDataSource3" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="AccessDataSource6" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [ctc] FROM [ctc_master]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="AccessDataSource8" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
                    </asp:SqlDataSource>

                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
    </div>
  </asp:Content>