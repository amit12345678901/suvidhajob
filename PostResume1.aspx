<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostResume1.aspx.cs" MasterPageFile="~/Front_Master.master"
    Inherits="PostResume1" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="css/login.css" rel="stylesheet" type="text/css">
        <!-- <link href="css/postresume.css" rel="stylesheet" type="text/css"> -->


        <title>Post Resume | Suvidha Jobs | job seeker website, job recruitment website, Placement Agency, Manpower
            consultancy</title>
        <meta name="description" content="Best job placement company in India - suvidhajobs.in. ">
        <meta name="keywords"
            content="job seeker website, job recruitment website, Placement Agency, Manpower consultancy" />
        <meta name="robots" content="index, follow" />
        <meta name="author" content="Suvidha Placements Ltd">
        <meta name="geo.region" content="IN" />
        <meta name="distribution" content="Global" />
        <meta http-equiv="expires" content="never" />
        <meta name="publisher" content="suvidhajobs.in" />


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

        <!-- banner part -->
        <section class="inner-page-jobseeker-registration">
            <div class="page-title">
                <div class="container">
                    <h1>Jobseeker Registration</h1>
                    <!-- <nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Jobseeker Registration</a>
                </nav>-->
                    <br><br><br><br>
                </div>
            </div>
        </section>
        <!-- /end banner part -->

        <!-- inner content --->
        <section class="inner-content">
            <div class="container">
                <div class="row">
                    <!-- <div class="col-sm-3">
                    <div class="widget-pt">
                        <ul>                            
                            <li><a href="CandidateZone_Login1.aspx">Jobseeker Login</a></li>   
                            <li><a href="PostResume1.aspx">Jobseeker Registration</a></li>
                        </ul>
                    </div>
                </div>-->
                    <div class="col-sm-12 inner-part">
                        <div class="col-sm-12 ">
                            <!-- main-form -->
                            <div class="main-form">
                                <h3>Post Resume</h3>
                                <!-- form-horizontal text-left -->
                                <div class="form-group-row">
                                    <div class="form-group">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    </div>
                                    <h4>Enter Login Information</h4>
                                    <!-- <div class="form-group-row"> -->
                                    <div class="form-group">
                                        <label class="col-sm-3">User Name <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server"
                                                        OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"
                                                        autocompletetype="Disabled"></asp:TextBox>
                                                    <asp:Button ID="Check_User" runat="server"
                                                        OnClick="Check_User_Click" class="btn btn-primary"
                                                        Text="Check Availability" />
                                                    <asp:SqlDataSource ID="AccessDataSource1" runat="server"
                                                        ConnectionString="<%$ ConnectionStrings:mycon %>"
                                                        SelectCommand="SELECT [city_name] FROM [city_master]">
                                                    </asp:SqlDataSource>
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
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Password <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"
                                                ontextchanged="TextBox2_TextChanged1"></asp:TextBox>
                                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3">Confrim Password <span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="TextBox70" runat="server" TextMode="Password">
                                                </asp:TextBox>
                                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <h4>Personal Details</h4>
                                    <div class="form-group">
                                        <label class="col-sm-3">Full Name <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Date of Birth <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <div class="row">
                                                <div class="col-xs-4">
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
                                                </div>
                                                <div class="col-xs-4">
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
                                                </div>
                                                <div class="col-xs-4">
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
                                                        <asp:ListItem Value="1996"></asp:ListItem>
                                                        <asp:ListItem Value="1997"></asp:ListItem>
                                                        <asp:ListItem Value="1998"></asp:ListItem>
                                                        <asp:ListItem Value="1999"></asp:ListItem>
                                                        <asp:ListItem Value="2000"></asp:ListItem>
                                                        <asp:ListItem Value="2001"></asp:ListItem>
                                                        <asp:ListItem Value="2002"></asp:ListItem>
                                                        <asp:ListItem Value="2003"></asp:ListItem>
                                                        <asp:ListItem Value="2004"></asp:ListItem>
                                                        <asp:ListItem Value="2005"></asp:ListItem>
                                                        <asp:ListItem Value="2006"></asp:ListItem>
                                                        <asp:ListItem Value="2007"></asp:ListItem>
                                                        <asp:ListItem Value="2008"></asp:ListItem>
                                                        <asp:ListItem Value="2009"></asp:ListItem>
                                                        <asp:ListItem Value="2010"></asp:ListItem>
                                                        <asp:ListItem Value="2011"></asp:ListItem>
                                                        <asp:ListItem Value="2012"></asp:ListItem>
                                                        <asp:ListItem Value="2013"></asp:ListItem>
                                                        <asp:ListItem Value="2014"></asp:ListItem>
                                                        <asp:ListItem Value="2015"></asp:ListItem>
                                                        <asp:ListItem Value="2016"></asp:ListItem>
                                                        <asp:ListItem Value="2017"></asp:ListItem>
                                                        <asp:ListItem Value="2018"></asp:ListItem>
                                                        <asp:ListItem Value="2019"></asp:ListItem>
                                                        <asp:ListItem Value="2020"></asp:ListItem>
                                                        <asp:ListItem Value="2021"></asp:ListItem>
                                                        <asp:ListItem Value="2022"></asp:ListItem>
                                                        <asp:ListItem Value="2023"></asp:ListItem>
                                                        <asp:ListItem Value="2024"></asp:ListItem>
                                                        <asp:ListItem Value="2025"></asp:ListItem>
                                                        <asp:ListItem Value="2026"></asp:ListItem>
                                                        <asp:ListItem Value="2027"></asp:ListItem>
                                                        <asp:ListItem Value="2028"></asp:ListItem>
                                                        <asp:ListItem Value="2029"></asp:ListItem>
                                                        <asp:ListItem Value="2030"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Sex <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                                <asp:ListItem Value="Female">Female</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Maritial Status <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList10" runat="server">
                                                <asp:ListItem Value="Select"></asp:ListItem>
                                                <asp:ListItem Value="Never Married"></asp:ListItem>
                                                <asp:ListItem Value="Married"></asp:ListItem>
                                                <asp:ListItem Value="Widowed"></asp:ListItem>
                                                <asp:ListItem Value="Divorced"></asp:ListItem>
                                                <asp:ListItem Value="Separates"></asp:ListItem>
                                                <asp:ListItem Value="Others"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Email id <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                <ContentTemplate>
                                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click"
                                                        class="btn btn-success" Text="Check  Email" />
                                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                                        runat="server" ControlToValidate="TextBox8"
                                                        ErrorMessage="not a valid email id"
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                                    </asp:RegularExpressionValidator>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Address <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current Location <span
                                                style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="AccessDataSource1"
                                                DataTextField="city_name" DataValueField="city_name"></asp:ListBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Country <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox14" runat="server" AutoCompleteType="Disabled">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Mobile Number <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox12" runat="server" AutoCompleteType="Disabled"
                                                onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Mobile Number2</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox11" runat="server" AutoCompleteType="Disabled"
                                                onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox11"
                                                ErrorMessage="mobile must be Number" Operator="DataTypeCheck"
                                                Type="Integer">
                                            </asp:CompareValidator>
                                        </div>
                                    </div>
                                    <h4>Education Details</h4>
                                    <div class="form-group">
                                        <label class="col-sm-3">Academic Qualification <span
                                                style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:ListBox ID="ListBox3" runat="server" DataSourceID="AccessDataSource3"
                                                DataTextField="A_Qualification" DataValueField="A_Qualification"
                                                SelectionMode="Multiple"></asp:ListBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">if other</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox34" runat="server" AutoCompleteType="Disabled">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Professional Qualification <span
                                                style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:ListBox ID="ListBox4" runat="server" DataSourceID="AccessDataSource4"
                                                DataTextField="Professional_Qualification"
                                                DataValueField="Professional_Qualification" SelectionMode="Multiple">
                                            </asp:ListBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Year of passing <span style="color:red">*</span></label>
                                        <asp:DropDownList ID="yearofpassing" runat="server">
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
                                            <asp:ListItem Value="1996"></asp:ListItem>
                                            <asp:ListItem Value="1997"></asp:ListItem>
                                            <asp:ListItem Value="1998"></asp:ListItem>
                                            <asp:ListItem Value="1999"></asp:ListItem>
                                            <asp:ListItem Value="2000"></asp:ListItem>
                                            <asp:ListItem Value="2001"></asp:ListItem>
                                            <asp:ListItem Value="2002"></asp:ListItem>
                                            <asp:ListItem Value="2003"></asp:ListItem>
                                            <asp:ListItem Value="2004"></asp:ListItem>
                                            <asp:ListItem Value="2005"></asp:ListItem>
                                            <asp:ListItem Value="2006"></asp:ListItem>
                                            <asp:ListItem Value="2007"></asp:ListItem>
                                            <asp:ListItem Value="2008"></asp:ListItem>
                                            <asp:ListItem Value="2009"></asp:ListItem>
                                            <asp:ListItem Value="2010"></asp:ListItem>
                                            <asp:ListItem Value="2011"></asp:ListItem>
                                            <asp:ListItem Value="2012"></asp:ListItem>
                                            <asp:ListItem Value="2013"></asp:ListItem>
                                            <asp:ListItem Value="2014"></asp:ListItem>
                                            <asp:ListItem Value="2015"></asp:ListItem>
                                            <asp:ListItem Value="2016"></asp:ListItem>
                                            <asp:ListItem Value="2017"></asp:ListItem>
                                            <asp:ListItem Value="2018"></asp:ListItem>
                                            <asp:ListItem Value="2019"></asp:ListItem>
                                            <asp:ListItem Value="2020"></asp:ListItem>
                                            <asp:ListItem Value="2021"></asp:ListItem>
                                            <asp:ListItem Value="2022"></asp:ListItem>
                                            <asp:ListItem Value="2023"></asp:ListItem>
                                            <asp:ListItem Value="2024"></asp:ListItem>
                                            <asp:ListItem Value="2025"></asp:ListItem>
                                            <asp:ListItem Value="2026"></asp:ListItem>
                                            <asp:ListItem Value="2027"></asp:ListItem>
                                            <asp:ListItem Value="2028"></asp:ListItem>
                                            <asp:ListItem Value="2029"></asp:ListItem>
                                            <asp:ListItem Value="2030"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3">If other</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox22" runat="server" AutoCompleteType="Disabled">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Year of Graduation <span
                                                style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList5" runat="server"
                                                DataSourceID="AccessDataSource2" DataTextField="year"
                                                DataValueField="year">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <h4>Current Professional Details</h4>
                                    <div class="form-group">
                                        <label class="col-sm-3">Resume Title <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox23" runat="server" AutoCompleteType="Disabled"
                                                TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Key Skills<span style="color:red">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox19" runat="server" AutoCompleteType="Disabled"
                                                TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Experience <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
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
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Industry</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList8" runat="server"
                                                DataSourceID="AccessDataSource5" DataTextField="ind_name"
                                                DataValueField="ind_name"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Functional Area</label>
                                        <div class="col-sm-9">
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownList15" runat="server"
                                                        datasourceid="AccessDataSource8" DataTextField="fun_name"
                                                        DataValueField="fun_name" AutoPostBack="True"
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
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Sub functional Area</label>
                                        <div class="col-sm-9">
                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownList9" runat="server">
                                                    </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">If Other</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current Employer</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current Designation</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current Employment Period from</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current Employment Period to</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Job Responsibility</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3">Previous Employer 1</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Previous Designation 1</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox30" runat="server"
                                                ontextchanged="TextBox30_TextChanged">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Previous Employment 1 Period from</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Current CTC <span style="color:red">*</span></label>
                                        <div class="col-sm-9">
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
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Summery</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox48" runat="server" TextMode="MultiLine">
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Language</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>

                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Read" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="Write" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Speak" />
                                            <br />
                                            <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Text="Read" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox5" runat="server" Text="Write" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox6" runat="server" Text="Speak" />
                                            <br />
                                            <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                                            <asp:CheckBox ID="CheckBox7" runat="server" Text="Read" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox8" runat="server" Text="Write" /> &nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox9" runat="server" Text="Speak" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Job Type</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList13" runat="server">
                                                <asp:ListItem Value="Select"></asp:ListItem>
                                                <asp:ListItem Value="Work from Office"></asp:ListItem>
                                                <asp:ListItem Value="Work from Home"></asp:ListItem>
                                                <asp:ListItem Value="Hybrid"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Employment Status</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList14" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Full Time</asp:ListItem>
                                                <asp:ListItem Value="Part Time"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Preferred location <asp:SqlDataSource
                                                ID="AccessDataSource7" runat="server"
                                                ConnectionString="<%$ ConnectionStrings:mycon %>"
                                                SelectCommand="SELECT [city_name] FROM [city_master]">
                                            </asp:SqlDataSource></label>
                                        <div class="col-sm-9">
                                            <asp:ListBox ID="lstprefer" runat="server" DataSourceID="AccessDataSource1"
                                                DataTextField="city_name" DataValueField="city_name" Height="78px"
                                                SelectionMode="Multiple" Width="253px"> </asp:ListBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Referance Name</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Referance Company</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Referance Designation</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Relationship with referer</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Referance Phone</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox68" runat="server"
                                                onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Referance Email</label>
                                        <div class="col-sm-9">
                                            <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                                runat="server" ControlToValidate="TextBox69"
                                                ErrorMessage="Please enter valid email id"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                            </asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3">Please Verify this word &nbsp; <font color="red">*
                                            </font></label>
                                        <div class="col-sm-9">
                                            <asp:Image ID="imCaptcha" ImageUrl="~/cap.ashx" runat="server" />
                                            <br>

                                            <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                                            <asp:CustomValidator ID="CustomValidator2" runat="server"
                                                ControlToValidate="TextBox71"
                                                ErrorMessage="You have Entered a Wrong Verification Code!Please Re-enter!!!"
                                                OnServerValidate="CAPTCHAValidate"></asp:CustomValidator>
                                        </div>
                                    </div>

                                    <div>
                                        <asp:FileUpload ID="FileUploadControl" runat="server" />
                                        <asp:Button ID="UploadButton" runat="server" Text="Upload"
                                            onclick="UploadButton_Click" />
                                        <asp:Label ID="StatusLabel" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="form-group">

                                        <div class="col-sm-12">
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click"
                                                Text="Submit" />

                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>














        <asp:SqlDataSource ID="AccessDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="AccessDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [year] FROM [year_master]">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="AccessDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="AccessDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="AccessDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [ctc] FROM [ctc_master]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="AccessDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [fun_name] FROM [fun]">
        </asp:SqlDataSource>



    </asp:Content>