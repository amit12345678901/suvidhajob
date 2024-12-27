<%@ Page Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="External-careerdetails.aspx.cs" Inherits="External_careerdetails"  %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        <!-- content part -->
        <section class="content-part">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <h2>Current Opening</h2>
                        <% =jobdtl %>
                    </div>
                </div>
            </div>
        </section>
        <!-- //end content part -->
    </asp:Content>
 