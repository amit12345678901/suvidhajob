<%@ Page Language="C#" CodeFile="Employer_Login.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Employer_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title>Employer Login | Suvidha Jobs | Top Placement Agency, Top Placement Company, Top Placement Agency, Steel Placement Agency, capital market placement</title>
    <meta name="description" content="suvidhajobs.in, one of the best recruiting company, handles various types of employment solutions.">
    <meta name="keywords" content="Top Placement Agency, Top Placement Company, Top Placement Agency, Steel Placement Agency, capital market placement" />
	<meta name="robots" content="index, follow" />
    <meta name="author" content="Suvidha Placements Ltd">
    <meta name="geo.region" content="IN" />
	<meta name="distribution" content="Global" />
	<meta http-equiv="expires" content="never" />
	<meta name="publisher" content="suvidhajobs.in" />

<link href="/css/login.css" rel="stylesheet" type="text/css">
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
    
    <!-- banner part -->
    <section class="inner-page-employer-login">
        <div class="page-title">
            <div class="container">
                <h1>Employer Login</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Employer Login</a>
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
                <div class="col-sm-12 inner-part">
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="main-form">
                          <img src="../images/logo.png" alt="" class="img-responsive">
                          <asp:TextBox ID="TextBox1" placeholder="User Name" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                          <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                          <hr>
                            <asp:Button ID="Signin"  runat="server" class="btn btn-primary" OnClick="Signin_Click" Text="Sign in" />
                            <asp:Button ID="Reset"  class="btn btn-warning" runat="server" OnClick="Reset_Click" Text="Reset" />
                            <p><asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
                          <a href="ForgotPassword_Company.aspx" title="forgot password">Forgot your password?</a>
                          <div>
                            <a href="Employer_Registation.aspx" title="signup">New Registration</a>
                            <a href="Employer_Registation.aspx" title="signup">Sign Up</a>
                          </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
