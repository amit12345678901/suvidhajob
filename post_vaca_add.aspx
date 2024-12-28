﻿<%@ Page Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="post_vaca_add.aspx.cs"
  Inherits="post_vaca_add" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() { dataLayer.push(arguments); }
      gtag('js', new Date());

      gtag('config', 'UA-1730637-1');
    </script>

  </asp:Content>

  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!---------------------------------banner----------------------------->
    <div id="employerbg">
      <div class="aboutblank"></div>
    </div><!-----------------------------------divider------------------------------------------->
    <div id="dividerbg"></div><!----------------------------------content---------------------------------------->
    <div id="contentbg">
      <div class="contentblank">
        <div class="main-cont">
          <div class="abt-lft" style="height:400px;">
            <div class="abt-lft-bdy">
              <ul>
                <li><a href="Company_main.aspx">Overview</a></li>
                <li><a href="post_vaca_add.aspx">Add Vacancy</a></li>
                <li><a href="Active_Vacancy.aspx">Reactive Vacancy</a></li>
                <li><a href="Company_Apply_Informetion.aspx"> Vacancy Status</a></li>
                <li><a href="Resume_Search_Form.aspx">Resume Search</a></li>
                <li><a href="Selected_Resume.aspx">Selected Resume Folderwise</a></li>
                <li><a href="AddFolder.aspx">Add Folder </a></li>
                <li><a href="Company_UpdateProfile.aspx">Update Profile </a></li>
                <li><a href="ChangePassword_Company.aspx">Change Password </a></li>
                <li class="noborder"><a href="EmployerLogout.aspx">Logout</a></li>
              </ul>
            </div>
          </div>
          <div class="abt-rht">
            <p><span class="text">
                <H2>Add Vacancy</H2>
              </span> <br />
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table width="95%" border="0" align="center">
              <tr>
                <td valign="top">
                  <div align="justify">
                    <table width="100%" border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
                      <tr>
                        <td width="50%" valign="top" class="home_tx">
                          <div align="left">Client Name &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td width="50%">
                          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Client Profile&nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Designation &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Contact Point&nbsp; </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Address</div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">City</div>
                        </td>
                        <td>
                          <asp:ListBox ID="ListBox1" runat="server" DataSourceID="AccessDataSource2"
                            DataTextField="city_name" DataValueField="city_name" SelectionMode="Multiple">
                          </asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">&nbsp;</td>
                        <td> <span
                            style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                            (Press Ctrl key to choose more than one)</span></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Country</div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox8" runat="server" Height="22px"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Phone &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox9"
                            ErrorMessage="Phone number must be numeric." Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Fax</div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox10"
                            ErrorMessage="Fax number must be numeric." Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Email &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="TextBox11" ErrorMessage="Please enter valied email id."
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                          </asp:RegularExpressionValidator>
                        </td>
                      </tr>
                      <tr bgcolor="#E4E4E4">
                        <td height="20" colspan="2" class="home_tx"></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Industry &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:ListBox ID="ListBox5" runat="server" DataSourceID="AccessDataSource1"
                            DataTextField="ind_name" DataValueField="ind_name" SelectionMode="Multiple" Width="244px">
                          </asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">&nbsp;</td>
                        <td> (<span
                            style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">Press
                            Ctrl key to choose more than one)</span></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Functional Area &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td>
                          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                              <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True"
                                onselectedindexchanged="DropDownList15_SelectedIndexChanged" Height="27px"
                                Width="242px"> </asp:DropDownList>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Sub Functional Area </td>
                        <td>
                          <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                              <asp:ListBox ID="ListBox6" runat="server" SelectionMode="Multiple" Width="244px">
                              </asp:ListBox>
                            </ContentTemplate>
                          </asp:UpdatePanel>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Job Position <font color="red">*</font>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Keywords</td>
                        <td>
                          <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Reporting to </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Job Tit</td>
                        <td>
                          <asp:TextBox ID="jobtl" runat="server" Width="244px"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Job Specification </td>
                        <td>
                          <asp:TextBox ID="jobspc" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                            onkeyup="Javascript:CharactersCount5();" MaxLength="250"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">Other Benefits </td>
                        <td>
                          <asp:TextBox ID="benetits" runat="server" TextMode="MultiLine" Height="71px" Width="244px"
                            onkeyup="Javascript:CharactersCount6();" MaxLength="250"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Candidate Profile </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Job Responsibility</div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox18" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Number of Vacancy</div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox19" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Gender</div>
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Both</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Year of Experience &nbsp; <font color="red">*</font>
                          </div>
                        </td>
                        <td class="home_tx">Min. <asp:TextBox ID="TextBox20" runat="server" Width="40"></asp:TextBox> -
                          Max <asp:TextBox ID="TextBox21" runat="server" Width="40"></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox20"
                            ErrorMessage="Min. experience must be numeric." Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                          <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox21"
                            ErrorMessage="Max. experience must be numeric." Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Job Type</div>
                        </td>
                        <td>
                          <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>PERMANENT</asp:ListItem>
                            <asp:ListItem>TEMPORERY</asp:ListItem>
                          </asp:DropDownList>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Academy Qualification &nbsp; <font
                                color="red">*</font>
                            </font>
                          </div>
                        </td>
                        <td>
                          <asp:ListBox ID="ListBox3" runat="server" DataSourceID="AccessDataSource3"
                            DataTextField="A_Qualification" DataValueField="A_Qualification" SelectionMode="Multiple"
                            Width="244px"></asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">&nbsp;</td>
                        <td><span
                            style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                            (Press Ctrl key to choose more than one)</span></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Professional Qualification &nbsp; <font
                                color="red">*</font>
                            </font>
                          </div>
                        </td>
                        <td>
                          <asp:ListBox ID="ListBox4" runat="server" DataSourceID="AccessDataSource4"
                            DataTextField="Professional_Qualification" DataValueField="Professional_Qualification"
                            SelectionMode="Multiple" Width="244px"></asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">&nbsp;</td>
                        <td><span
                            style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                            (Press Ctrl key to choose more than one)</span></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Age Between</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">&nbsp;</td>
                        <td> <span
                            style="color: rgb(0, 0, 0); font-family: verdana; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.328125px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                            (eg 30-35 years)</span></td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Salary Specification (Per Annum) &nbsp;
                              <font color="red">*</font>
                            </font>
                          </div>
                        </td>
                        <td>Min&nbsp; <asp:TextBox ID="TextBox25" runat="server" Width="41px"></asp:TextBox> &nbsp;
                          Max&nbsp; <asp:TextBox ID="sal_max" runat="server" Width="41px"></asp:TextBox> (Lakh)
                          <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="TextBox25"
                            ErrorMessage="Salary must be numeric." Operator="DataTypeCheck" Type="Integer">
                          </asp:CompareValidator>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Turn Around Time</font>
                          </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">
                            <font style="FONT: 8pt/13pt verdana; COLOR: black">Job Location &nbsp; <font color="red">*
                              </font>
                            </font>
                          </div>
                        </td>
                        <td>
                          <asp:ListBox ID="ListBox2" runat="server" DataSourceID="AccessDataSource2"
                            DataTextField="city_name" DataValueField="city_name" SelectionMode="Multiple">
                          </asp:ListBox>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td><span
                            style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(230, 230, 230); display: inline !important; float: none;">
                            (Press Ctrl key to choose more than one)</span></td>
                      </tr>
                      <asp:Panel ID="pn103" runat="server" Visible="false">
                        <tr>
                          <td valign="top" class="home_tx">
                            <div align="left">Job Status &nbsp; <font color="red">*</font>
                            </div>
                          </td>
                          <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem>Urgent</asp:ListItem>
                              <asp:ListItem>Normal</asp:ListItem>
                            </asp:DropDownList>
                          </td>
                        </tr>
                      </asp:Panel>
                      <tr>
                        <td valign="top" class="home_tx">
                          <div align="left">Job Code </div>
                        </td>
                        <td>
                          <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2">
                          <div align="center">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit"
                              Width="77px" /> <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                          </div>
                        </td>
                      </tr>
                    </table>
                    <asp:SqlDataSource ID="AccessDataSource1" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [ind_name] FROM [industry_master]"> </asp:SqlDataSource>
                    <asp:SqlDataSource ID="AccessDataSource2" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
                    <asp:SqlDataSource ID="AccessDataSource3" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="AccessDataSource4" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>"
                      SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="AccessDataSource8" runat="server"
                      ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
                    </asp:SqlDataSource>
                  </div>
                </td>
              </tr>
            </table>
            </td>
            </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </asp:Content>