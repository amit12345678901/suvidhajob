<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Front_Master.master"   CodeFile="career.aspx.cs" Inherits="_aboutus" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
     <title>Career | Suvidha Jobs | Top Placement Agency, Steel Placement Agency, capital market placement, job consultancy</title>
    <meta name="description" content="A complete range of customized and integrated services to our clients like Executive Search, Retained Search, Contingency Search, Advertisement Management on behalf of the client, Reference Checks, Basic Recruitment Training">
    <meta name="keywords" content="Top Placement Agency, Steel Placement Agency, capital market placement, job consultancy" />
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

    </asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
    
    <!-- banner part -->
    <section class="inner-page-career">
        <div class="page-title">
            <div class="container">
                <h1>Career</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Career</a>
                </nav>-->
                <br><br><br><br>
            </div>
        </div>
    </section>
    <!-- /end banner part -->
    
    <!-- content part -->
    <section class="content-part">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                   
                    <%= crview %> 
                    <p><asp:Label ID="Label1" runat="server"></asp:Label> </p>
                </div>
            </div>
        </div>
    </section>
    <!-- //end content part -->
        
    </asp:Content>
