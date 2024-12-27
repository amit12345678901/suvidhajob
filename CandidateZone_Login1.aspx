<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CandidateZone_Login1.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="CandidateZone1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

  <title>Candidate Login | Suvidha Jobs | Suvidhajobs.in, job placement consultancy, consultancy placement, current job vacancies</title>
    <meta name="description" content="Best job placement company in India - suvidhajobs.in. As India's leading staffing & recruitment company">
    <meta name="keywords" content="Suvidhajobs.in, job placement consultancy, consultancy placement, current job vacancies" />
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
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

<link href="css/login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- banner part -->
    <section class="inner-page-jobseeker-login">
        <div class="page-title">
            <div class="container">
                <h1>Jobseeker Login</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Jobseeker Login</a>
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
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="main-form">
                            <img src="../images/logo.png" class="img-responsive">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <hr>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary" Text="Sign in" />
                            <asp:Button ID="Reset" runat="server" class="btn btn-warning" OnClick="Reset_Click" Text="Reset" />
                            <p><asp:Label ID="Label1" runat="server"></asp:Label></p>
                            <a href="ForgotPassword_Form.aspx" title="forgot password">Forgot your password?</a>
                            <div>
                                <a href="PostResume1.aspx" title="signup">New Registration</a>
                                <a href="PostResume1.aspx" title="signup">Sign Up</a>
                            </div>
                        </div>      
                          
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
