<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Front_Master.master"  CodeFile="CandidateZone_Login.aspx.cs" Inherits="CandidateZone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                            <img src="../images/logo.png" alt="" class="img-responsive">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" AutoCompleteType="Disabled"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <hr>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click"     Text="Sign in" />   
                                                                       
                            <asp:Button ID="Reset" runat="server" onclick="Reset_Click" Text="Reset" />  
                            <p><asp:Label ID="Label1" runat="server"></asp:Label></p>
                            
                            <div>
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3333FF"             NavigateUrl="PostResume1.aspx"  >New User</asp:HyperLink> 
                                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF3300" NavigateUrl="ForgotPassword_Form.aspx" >Forgot Your Password?</asp:HyperLink>    
                            </div>
                        </div>      
                          
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    
    
    


                  
                  
                      </asp:Content>
