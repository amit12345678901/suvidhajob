<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume_Search_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Resume_Search_Informetion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!---------------------------------banner----------------------------->
    <div id="employerbg">
        <div class="aboutblank"></div>
    </div>
    <!-----------------------------------divider------------------------------------------->
    <div id="dividerbg"></div>
    <!----------------------------------content---------------------------------------->
    <div id="contentbg">
        <div class="contentblank">
            <div class="main-cont">
                <div class="abt-lft" style="height: 400px;">
                    <div class="abt-lft-bdy">
                        <ul>
                            <li><a href="Company_main.aspx">Overview</a></li>
                            <li><a href="post_vaca_add.aspx">Add Vacancy</a></li>
                            <li><a href="Active_Vacancy.aspx">Reactive Vacancy</a></li>
                            <li><a href="Company_Apply_Informetion.aspx">Vacancy Status</a></li>
                            <li><a href="Resume_Search_Form.aspx">Resume Search</a></li>
                            <li><a href="Selected_Resume.aspx">Selected Resume Folderwise</a></li>
                            <li><a href="AddFolder.aspx">Add Folder </a></li>
                            <li><a href="Company_UpdateProfile.aspx">Update Profile </a></li>
                            <li><a href="ChangePassword_Company.aspx">Change Password </a></li>
                            <li class="noborder"><a href="EmployerLogout.aspx">Logout</a></li>
                        </ul>
                    </div>
                </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="abt-rht">
                    <asp:Button ID="send" Text="Email Send" Visible="false" runat="server" OnClick="send_Click" />
                    &nbsp;&nbsp;            
                    <asp:Button ID="sms_send" Text="Sms Send" runat="server" Visible="false" OnClick="sms_send_Click" />
                    &nbsp;&nbsp;                   
                    <table width="95%" border="0" align="center">
                        <tr>
                            <td>
                                <div align="justify">
                                    <asp:Label ID="email_found" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                                    <asp:Button ID="selall" runat="server" Visible="false" Text="Select All" OnClick="selall_Click" />
                                    &nbsp;&nbsp;                        
                                    <asp:Button ID="deselall" runat="server" Visible="false" Text="Deselect All" OnClick="deselall_Click" />
                                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="id_txt" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" GridLines="None" OnRowCreated="GridView1_RowCreated" AllowPaging="True" EmptyDataText="Sorry no resume Found, Please Try Again" PageSize="1000">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Label ID="lbid" runat="server" Visible="false" Text='<%# Eval("id_txt") %>'></asp:Label>
                                                    <asp:CheckBox ID="ch" Visible="false" runat="server" />
                                                    <br />
                                                    <asp:Panel ID="icon" Visible="false" runat="server">
                                                        <asp:Image ID="ImageButton1" runat="server" Width="25px" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" ImageUrl="~\\view_cv.jpg" />
                                                    </asp:Panel>
                                                    <b>
                                                        <asp:LinkButton ID="rs_select" Text="Resume  selected by Folder wise" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="Select1" />
                                                    </b>
                                                    <br />
                                                    <b>
                                                        <asp:LinkButton ID="rs_detail" Text="Full  CB" runat="server" Font-Underline="false" CommandArgument='<%# Container.DataItemIndex  %>' CommandName="Detail" />
                                                    </b>
                                                    <br />
                                                    NAME:-
                                                    <asp:Label ID="name1" runat="server" ForeColor="Red" Text='<%# Eval("name_txt") %>'></asp:Label><br />
                                                    INDUSTRY:-
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("in_txt") %>'></asp:Label><br />
                                                    ACADEMIC QUALIFICATION:-
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("aq_txt") %>'></asp:Label><br />
                                                    KEYSKILL:-
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ks_txt") %>'></asp:Label><br />
                                                    EXPERIENCE:-
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("exp_txt") %>'></asp:Label><br />
                                                    SALARY (lakh per annum):-
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ctc_txt") %>'></asp:Label><br />
                                                    INDUSTRY:-
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("in_txt") %>'></asp:Label><br />
                                                    LOCATION:-
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("cloc_txt") %>'></asp:Label><br />
                                                    Resume Viewed:-
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("resume_view_txt") %>'></asp:Label><br />
                                                    Posting Date:-
                                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("crt_date") %>'></asp:Label><br />
                                                    Update Date:-
                                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("update_date") %>'></asp:Label><br />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
</asp:Content>

