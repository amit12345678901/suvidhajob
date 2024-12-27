<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employer_Registation.aspx.cs" MasterPageFile="~/Front_Master.master"  Inherits="Employer_Registation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/login.css" rel="stylesheet" type="text/css">
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- banner part -->
    <section class="inner-page-employer-registration">
        <div class="page-title">
            <div class="container">
                <h1>Employer Registration</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Employer Registration</a>
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
                            <li><a href="Employer_Login.aspx">Employer Login</a></li>
                            <li><a href="verticals.aspx">Verticals</a></li>
                            <li><a href="osp.aspx">Our Selection Process</a></li>
                        </ul>
                    </div>
                </div>-->
                <div class="col-sm-10 col-sm-offset-1 inner-part">
                    <div class="main-form">
                        <h3>Employer Registration</h3>
                        <div class="form-horizontal text-left">
                          <div class="form-group">
                            <label class="col-sm-3">Company Name <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" required></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Address  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" row="2" cols="5" required TextMode="MultiLine"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Location</label>
                            <div class="col-sm-9">
                              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" DataSourceID="AccessDataSource2" DataTextField="city_name" DataValueField="city_name"> </asp:DropDownList>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Email ID  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="btn btn-info" Text="Check Email" />          
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Not a valid Email Id."  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                    
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Industry</label>
                            <div class="col-sm-9">
                              <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataSourceID="AccessDataSource1" DataTextField="ind_name" DataValueField="ind_name"> </asp:DropDownList>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Phone</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox4" runat="server" onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
    <asp:Label ID="LabelPhone" runat="server" Text="" ForeColor="Red"></asp:Label>

                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Mobile  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox5" runat="server" onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>

                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Website</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Contact Point  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Designation</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Size of Company  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox9" runat="server"  onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Number of Branches</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox10" runat="server"  onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Number of Employees</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox11" runat="server"  onkeyup="this.value = this.value.replace(/\D/g, '')"></asp:TextBox>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3">Registered By  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="TextBox12" runat="server" ></asp:TextBox>
                            </div>
                          </div>
                        <div class="form-group">
                            <label class="col-sm-3">Enter this code  <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <asp:Image ID="imCaptcha" ImageUrl="~/cap.ashx" runat="server" />
                                <asp:TextBox ID="cap" runat="server" ></asp:TextBox><asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="cap"
            ErrorMessage="You have Entered a Wrong Verification Code!Please Re-enter!!!" OnServerValidate="CAPTCHAValidate"></asp:CustomValidator>
                            </div>
                        </div>
                            
                            
                            <hr>
                            <div class="text-center">
                                <asp:Button ID="Submit" runat="server" class="btn btn-primary" Text="Submit" onclick="Submit_Click" />        
                                <asp:Button ID="Reset" runat="server" class="btn btn-warning" Text="Reset" onclick="Reset_Click" /> 
                            </div>
                            <p>
                                <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mycon %>"
                                    SelectCommand="SELECT [ind_name] FROM [industry_master]">
                                </asp:SqlDataSource>

                                <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mycon %>"
                                    SelectCommand="SELECT [city_name] FROM [city_master]">
                                </asp:SqlDataSource>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
