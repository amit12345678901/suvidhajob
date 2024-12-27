<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword_Form.aspx.cs" MasterPageFile="~/Front_Master.master"   Inherits="ForgotPassword_Form" %>
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
    <section class="inner-page">
        <div class="page-title">
            <div class="container">
                <h1>Forgot Password</h1>
               <!-- <nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Forgot Password</a>
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
                <!--<div class="col-sm-3">
                    <div class="widget-pt">
                        <ul>                            
                            <li><a href="CandidateZone_Login1.aspx">Jobseeker Login</a></li>   
                            <li><a href="PostResume1.aspx">Jobseeker Registration</a></li>
                        </ul>
                    </div>
                </div>-->
                <div class="col-sm-12 inner-part">
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="main-form">
                          <img src="../images/logo.png" alt="" class="img-responsive">
                          <p>Please enter your Username or email address below.</p>
                          <asp:TextBox ID="TextBox1" placeholder="User Name" runat="server"></asp:TextBox>
                          <asp:TextBox ID="TextBox2" runat="server" placeholder="Or Email ID"></asp:TextBox>         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Id is not proper form.</asp:RegularExpressionValidator>
                          <hr>
                            <asp:Button ID="Submit" runat="server" class="btn btn-warning" onclick="Submit_Click" Text="Submit" />
                          <div>
                            <asp:Label ID="Label2" runat="server" ></asp:Label>              
                            <asp:Label ID="Label3" runat="server" ></asp:Label>          
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                          </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    </asp:Content>
