<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job_Catagories_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" EnableEventValidation="false"   Inherits="Job_Catagories_Informetion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .contentDef{
            padding: 10px 15px;
            background: #ff7e0e;
            color: #fff;
            font-size: 24px;
            margin-bottom: 20px;
        }
    </style>
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><div class="banner2">
<!-- banner part -->
    <section class="inner-page">
        <div class="page-title">
            <div class="container">
                <h1>Job by Industry</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Job by Industry</a>
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
                
                <div class="inner-part">
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                             <h2 class="contentDef">Current Opening</h2>
                         <% =jobdtl %>  
                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                      </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>

    
</asp:Content>