<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post_vaca_add.aspx.cs" MasterPageFile="~/MasterPage_Back.master"
  Inherits="post_vaca_add" %>


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



    <script type="text/javascript">
      //This function is used to display the number of characters left and percentage graph
      function CharactersCount() {
        var CharLength = '<%=TextBox3.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox3');
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
        var CharLength = '<%=TextBox4.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox4');
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
        var CharLength = '<%=TextBox14.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox14');
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
        var CharLength = '<%=TextBox17.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox17');
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
      function CharactersCount555() {
        var CharLength = '<%=TextBox15.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox15');
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
        var CharLength = '<%=TextBox14.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox14');
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
      function CharactersCount4() {
        var CharLength = '<%=TextBox18.MaxLength %>';
        var txtMsg = document.getElementById('ctl00_ContentPlaceHolder1_TextBox18');
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


    <style type="text/css">
      .style1 {
        height: 27px;
      }

      .style2 {
        height: 72px;
      }
    </style>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="page_title">Add Vacancy</div>
    <div align="center">
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#eeeeee">
        <tr>
          <td width="3%" class="Small_path"><img src="images/icon_home.png" width="18" height="18" /></td>
          <td width="47%" class="Small_path">Home > Vacancy &gt; Add Vacancy</td>
          <td width="50%" align="right" class="Small_path"></td>
        </tr>
      </table><br>
      <asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>

      <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#4b8df8">
        <tr>
          <td bgcolor="#4b8df8">&nbsp;</td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF" align="center">

            <br />
            <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
              <tr>
                <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Job Details:</strong></td>
              </tr>
            </table>
            <table width="95%" border="1" align="center" cellpadding="10" cellspacing="2" bordercolor="#E8E8E8"
              class="text" bgcolor="#F7F7F7">
              <div id="comp_ind" runat="server">
                <tr>
                  <td width="50%" valign="top">
                    <div>Industry &nbsp;<font color="red">*</font>
                    </div>
                  </td>
                  <td width="50%">
                    <div>
                      <asp:ListBox ID="ListBox5" runat="server" DataSourceID="AccessDataSource1"
                        DataTextField="ind_name" DataValueField="ind_name" SelectionMode="Multiple" Width="244px">
                      </asp:ListBox>
                    </div>
                  </td>
                </tr>

                <tr>
                  <td width="50%" valign="top">&nbsp;</td>
                  <td width="50%">&nbsp;
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <div>Functional Area &nbsp;<font color="red">*</font>
                    </div>
                  </td>
                  <td>
                    <div>
                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                          <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True"
                            onselectedindexchanged="DropDownList15_SelectedIndexChanged" Height="22px" Width="244px">
                          </asp:DropDownList>
                        </ContentTemplate>
                      </asp:UpdatePanel>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top">Sub Functional Area </td>
                  <td>
                    <div>
                      <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                          <asp:ListBox ID="ListBox6" runat="server" SelectionMode="Multiple" Width="244px">
                          </asp:ListBox>
                        </ContentTemplate>
                      </asp:UpdatePanel>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top">&nbsp;</td>
                  <td><span
                      style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                      (Press Ctrl key to choose more than one)</span></td>
                </tr>
              </div>
              <tr>
                <td valign="top">Job Title </td>
                <td>
                  <asp:TextBox ID="jobtl" runat="server" Width="244px"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td valign="top">Job Details &nbsp;<font color="red">*</font>
                </td>
                <td>
                  <div>

                    <asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                      onkeyup="Javascript:CharactersCount6();" MaxLength="70"></asp:TextBox>
                    &nbsp;&nbsp;
                  </div>
                </td>
              </tr>
              <!-- <tr>
                <td valign="top">Job Specification </td>
                <td>
                  <asp:TextBox ID="jobspc" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                    onkeyup="Javascript:CharactersCount5();" MaxLength="250"></asp:TextBox>
                </td>
              </tr> -->
              <tr>
                <td valign="top">Keyskills</td>
                <td>
                  <div>
                    <asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" Width="400px" Height="61px"
                      onkeyup="Javascript:CharactersCount555();" MaxLength="500"></asp:TextBox>
                    <asp:Label ID="lblChar6" runat="server" Text="500" ForeColor="Red"></asp:Label>
                  </div>
                </td>
              </tr>
              <tr>
                <td valign="top">
                  <div> </div>
                </td>
                <td>
                  <div>
                  </div>
                </td>
              </tr>
              <div id="divbenifit" runat="server" visible="false">
                <tr>
                  <td valign="top">
                    <div> </div>
                  </td>
                  <td>
                    <div>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <div> </div>
                  </td>
                  <td>
                    <div>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;
                      <asp:Label ID="lblChar5" runat="server" Text="250" ForeColor="Red"></asp:Label>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <div>Other Benefits </div>
                  </td>
                  <td>
                    <div>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="benetits" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                        onkeyup="Javascript:CharactersCount6();" MaxLength="500"></asp:TextBox>
                      &nbsp;&nbsp;
                    </div>
                  </td>
                </tr>
              </div>
              <!-- <tr>
                <td valign="top">
                  <div>Candidate Profile </div>
                </td>
                <td>
                  <div>

                    <asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                      onkeyup="Javascript:CharactersCount3();" MaxLength="400"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblChar3" runat="server" Text="400" ForeColor="Red"></asp:Label>
                  </div>
                </td>
              </tr> -->
              <!-- <tr>
                <td valign="top">
                  <div>Job Description</div>
                </td>
                <td>
                  <div>

                    <asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                      onkeyup="Javascript:CharactersCount4();" MaxLength="400"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblChar4" runat="server" Text="400" ForeColor="Red"></asp:Label>
                  </div>
                </td>
              </tr> -->
              <div id="opening" runat="server">
                <tr>
                  <td valign="top">Number of Vacancy(Opening)</td>
                  <td>
                    <div>
                      <asp:TextBox ID="TextBox19" runat="server" MaxLength="10" Width="244px"></asp:TextBox>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <div>Gender</div>
                  </td>
                  <td>
                    <div>
                      <asp:DropDownList ID="DropDownList2" runat="server" Width="244px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Both</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                    </div>
                  </td>
                </tr>
              </div>
              <tr>
                <td valign="top">
                  <div>Year of Experience &nbsp;</div>
                </td>
                <td>
                  <div>Min.
                    <asp:TextBox ID="TextBox20" runat="server" Width="40"></asp:TextBox>
                    - Max
                    <asp:TextBox ID="TextBox21" runat="server" Width="40"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox20"
                      ErrorMessage="Min. experience must be numeric." Operator="DataTypeCheck" Type="Integer">
                    </asp:CompareValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox21"
                      ErrorMessage="Max. experience must be numeric." Operator="DataTypeCheck" Type="Integer">
                    </asp:CompareValidator>
                  </div>
                </td>
              </tr>
              <div id="JOBTYPE1" runat="server">
                <tr>
                  <td valign="top">Job Type</td>
                  <td>
                    <div>
                      <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="244px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Permanent</asp:ListItem>
                        <asp:ListItem>On Contract Basis</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                      </asp:DropDownList>
                    </div>
                  </td>
                </tr>
              </div>
              <tr>
                <td valign="top">
                  <div>Academy Qualification &nbsp;</div>
                </td>
                <td>
                  <div>
                    <asp:ListBox ID="ListBox3" runat="server" DataSourceID="AccessDataSource3"
                      DataTextField="A_Qualification" DataValueField="A_Qualification" SelectionMode="Multiple"
                      Width="244px"></asp:ListBox>
                  </div>
                </td>
              </tr>
              <tr>
                <td valign="top">&nbsp;</td>
                <td><span
                    style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                    (Press Ctrl key to choose more than one)</span></td>
              </tr>
              <tr>
                <td valign="top">
                  <div>Professional Qualification &nbsp;</div>
                </td>
                <td>
                  <div>

                    <asp:ListBox ID="ListBox4" runat="server" DataSourceID="AccessDataSource4"
                      DataTextField="Professional_Qualification" DataValueField="Professional_Qualification"
                      SelectionMode="Multiple" Width="244px"></asp:ListBox>

                  </div>
                </td>
              </tr>
              <tr>
                <td valign="top">
                  <asp:TextBox ID="TextBox16" runat="server" Width="244px" Visible="False"></asp:TextBox>
                </td>
                <td><span
                    style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                    (Press Ctrl key to choose more than one)</span></td>
              </tr>
              <div id="divage" runat="server">
                <tr>
                  <td valign="top">Age Between</td>
                  <td>
                    <div>
                      <asp:TextBox ID="TextBox24" runat="server" Width="244px"></asp:TextBox>
                      <br />
                      <span
                        style="color: rgb(0, 0, 0); font-family: verdana; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.328125px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                        (eg 30-35 years)</span>
                    </div>
                  </td>
                </tr>
              </div>
              <tr>
                <td valign="top" class="style1">
                  <div>Salary Specification (Per Annum)
                    &nbsp;</div>
                </td>
                <td class="style1">
                  <div>
                    Min <asp:TextBox ID="TextBox25" runat="server" Width="41px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Max<asp:TextBox ID="sal_max" runat="server" Width="41px">
                    </asp:TextBox>
                    (Lakh)

                  </div>
                </td>
              </tr>
              <div id="div25" runat="server" visible="false">
                <tr>
                  <td valign="top">
                    <div></div>
                  </td>
                  <td>
                    <div>
                      <asp:TextBox ID="TextBox26" runat="server" Visible="False"></asp:TextBox>
                    </div>
                  </td>
                </tr>
              </div>

              <tr>
                <td valign="top">Job Location&nbsp;
                  &nbsp;</td>
                <td>
                  <div>
                    <asp:ListBox ID="ListBox2" runat="server" DataSourceID="AccessDataSource2" DataTextField="city_name"
                      DataValueField="city_name" SelectionMode="Multiple" Width="244px"> </asp:ListBox>
                  </div>
                </td>
              </tr>
              <tr>
                <td valign="top">&nbsp;</td>
                <td><span
                    style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                    (Press Ctrl key to choose more than one)</span></td>
              </tr>
              <div id="locdiv" runat="server">
                <tr>
                  <td valign="top">
                    <div>Job Code </div>
                  </td>
                  <td>
                    <div>
                      <asp:TextBox ID="TextBox28" runat="server" Width="244px"></asp:TextBox>
                    </div>
                  </td>
                </tr>
              </div>
              <asp:Panel ID="jobsin" Visible="false" runat="server">
                <tr>
                  <td valign="top">
                    <div>Job In </div>
                  </td>
                  <td>
                    <div>
                      <asp:DropDownList ID="jobin" runat="server">
                        <asp:ListItem Value="2">Out Side</asp:ListItem>
                        <asp:ListItem Value="1">In Side</asp:ListItem>
                      </asp:DropDownList>
                    </div>
                  </td>
                </tr>
              </asp:Panel>
            </table>
            <br />
            <br />

            <div id="comp_div" runat="server">

              <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
                <tr>
                  <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Company Detail</strong><strong>s:</strong></td>
                </tr>
              </table>
              <table width="95%" border="1" align="center" cellpadding="10" cellspacing="2" bordercolor="#E8E8E8"
                class="text" bgcolor="#F7F7F7">
                <tr id="compdiv" runat="server" visible="false">
                  <td width="50%">Select Company Name &nbsp;</td>
                  <td width="50%">
                    <asp:DropDownList ID="cmpname" runat="server"></asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td width="50%">Company Name &nbsp;</td>
                  <td width="50%">
                    <asp:TextBox ID="TextBox2" runat="server" Width="265px"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                  <td>Company Profile &nbsp;</td>
                  <td>
                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server"
                      onkeyup="Javascript:CharactersCount();" MaxLength="200"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblChar" runat="server" Text="200" ForeColor="Red"></asp:Label>
                  </td>
                </tr>
              </table>
            </div>
            <br />
            <br />
            <table width="95%" border="0" align="center" cellpadding="10" cellspacing="0">
              <tr>
                <td height="40" bgcolor="#EBEBEB"><strong>&nbsp;Contact Detail</strong><strong>s:</strong></td>
              </tr>
            </table>
            <table width="95%" border="1" align="center" cellpadding="10" cellspacing="2" bordercolor="#E8E8E8"
              class="text" bgcolor="#F7F7F7">
              <tr>
                <td width="50%">Contact Point &nbsp;</td>
                <td width="50%">
                  <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td>Designation &nbsp;</td>
                <td>
                  <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"
                    onkeyup="Javascript:CharactersCount1();" MaxLength="50"></asp:TextBox>
                  &nbsp;&nbsp;
                  <asp:Label ID="lblChar1" runat="server" Text="50" ForeColor="Red"></asp:Label>
                </td>
              </tr>
              <tr>
                <td>Address</td>
                <td>
                  <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td>Phone &nbsp;</td>
                <td>
                  <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td>Fax</td>
                <td>
                  <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td>Email &nbsp;</td>
                <td>
                  <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="TextBox11" ErrorMessage="Please enter valied email id."
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                </td>
              </tr>
              <tr runat="server" id="citydiv2" runat="server" visible="false">
                <td class="style2">City</td>
                <td class="style2">
                  <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple"> </asp:ListBox>
                </td>
              </tr>
              <tr runat="server" id="citydiv1" visible="false">
                <td>&nbsp;</td>
                <td><span
                    style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                    (Press Ctrl key to choose more than one)</span></td>
              </tr>
              <tr runat="server" id="countdiv" visible="false">
                <td>Country</td>
                <td>
                  <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
              </tr>
            </table>


            <p>
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            </p> <br />
          </td>
        </tr>
        <tr>
          <td height="50" align="center" bgcolor="#f5f5f5">
            <asp:ImageButton ID="SEARCH" runat="server" ImageUrl="images/submit.jpg" Width="71px" Height="34px"
              OnClick="Button1_Click" />
          </td>
        </tr>
      </table>
      <asp:SqlDataSource ID="AccessDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
        SelectCommand="SELECT [ind_name] FROM [industry_master] where [ind_name] is not null ORDER BY [ind_name] ASC">
      </asp:SqlDataSource>


      <asp:SqlDataSource ID="AccessDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
        SelectCommand="SELECT [city_name] FROM [city_master]">
      </asp:SqlDataSource>
      <asp:SqlDataSource ID="AccessDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
        SelectCommand="SELECT [fun_name] FROM [fun]">
      </asp:SqlDataSource>

      <asp:SqlDataSource ID="AccessDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
        SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
      </asp:SqlDataSource>

      <asp:SqlDataSource ID="AccessDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
        SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
      </asp:SqlDataSource>


    </div>



  </asp:Content>