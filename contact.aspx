<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

 <title>Contact | Suvidha Jobs | Placement company, Placement consultants, Suvidha Placements Ltd Suvidha placements Limited, Suvidhajobs.in, job placement consultancy</title>
    <meta name="description" content="Best job placement company in India - suvidhajobs.in. As India's leading staffing & recruitment company, We take pleasure to provide every "Convenience" of Recruitment Needs to our client companies.">
    <meta name="keywords" content="Contact | Placement company, Placement consultants, Suvidha Placements Ltd Suvidha placements Limited, Suvidhajobs.in, job placement consultancy" />
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- banner part -->
    <section class="inner-page-contact">
        <div class="page-title">
            <div class="container">
                <h1>Contact</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Contact Us</a>
                </nav>-->
                <br><br><br><br>
            </div>
        </div>
    </section>
    <!-- /end banner part -->
    
    <!-- content part -->
    <section class="content-part">
        <div class="container">
            <div class="row">
<!--                <div class="col-sm-8 col-sm-offset-2">-->
                <div class="col-sm-7 ">
                    
                    <div id="contact-page-map" class="white-container" style="position: relative; overflow: hidden;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3683.078682688831!2d88.41062081496032!3d22.61353678516171!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4cca66da8422b842!2sSuvidha+Placements+Limited!5e0!3m2!1sen!2s!4v1463731539610" width="100%" height="100%" frameborder="0" style="border: 0" allowfullscreen></iframe>
                    <br><br>
                    </div>
                    <div class="white-container mb0">
						<div class="row">
							<div class="col-sm-6">
								<h5 class="bottom-line mt10">Corporate Office</h5>

								<address>
									Suvidha Placements Limited<br>
                                Diamond Arcade, Unit No. 615, <br>
                                1/72, Cal Jessore Road, <br>
                                ( Shyam Nagar Road ) <br>
                                Near Diamond Plaza  <br>
                                Kolkata-700055
								</address>

								<p>
									Phone: +91 33 <a href="tel:03340648237">40648237</a> <br>
									Corporate: <a href="mailto:contact@suvidhajobs.in">contact@suvidhajobs.in</a><br>
                                    Candidate: <a href="mailto:cvdrop@suvidhajobs.in">cvdrop@suvidhajobs.in</a><br>
                                    Website: <a href="www.suvidhajobs.in">www.suvidhajobs.in</a>
								</p>
							</div>

							<div class="col-sm-6">
								<h5 class="bottom-line mt10">Associates</h5>

								<address>
                                
								Sanjay Residency<br>
                                101, 3/135, 1st Cross, <br>
                                Opp Road Chemmanur Jewellary, <br>
                                Mear KMF Factory, Marathahalli <br>
                                Bangalore - 560037
								</address>

								
							</div>
						</div>
					</div>
                    
                                        
                    
                    
                </div>
                <!--<div class="col-sm-4 col-sm-offset-1">-->
                <div class="col-sm-4 page-sidebar">
					<aside>
						<div class="widget sidebar-widget white-container contact-form-widget">
							<h5 class="widget-title">Send Us a Message</h5>

							<div class="widget-content">
								<p></p>

								<form class="mt30">
									<div class="form-group">
                                         <asp:TextBox ID="txtName" runat="server" class="form-control" required="required" placeholder="Name"></asp:TextBox>
									
									</div>

									<div class="form-group">
                                         <asp:TextBox ID="txtMail" runat="server" class="form-control" required="required" placeholder="Email"></asp:TextBox>
<asp:RegularExpressionValidator 
    ID="revEmail" 
    runat="server" 
    ControlToValidate="txtMail" 
    CssClass="text-danger"
    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
    ErrorMessage="Please enter a valid email address.">
</asp:RegularExpressionValidator>

										
									</div>

									<div class="form-group">
										 <asp:TextBox ID="txtSubject" runat="server" class="form-control" required="required" placeholder="Subject"></asp:TextBox>
									</div>

									<div class="form-group">
                                         <asp:TextBox ID="txtHelp" runat="server" TextMode="MultiLine" required="required" Height="77px" Width="302px" class="form-control" placeholder="How can we help you?"></asp:TextBox>
										
									</div>
                                 <asp:Button ID="btnSubmit" class="btn btn-default" runat="server" Text="Send Message" OnClick="btnSubmit_Click" /> 
                               </br>  <asp:Label ID="lblMessage"  runat="server" Visible="false"></asp:Label>
								</form>
							</div>
						</div>
					</aside>
				</div>
                <br><br>
                <div class="col-sm-4 page-sidebar">
					<aside>
						<div class="widget sidebar-widget white-container contact-form-widget">
							<h5 class="widget-title">Wants to reach us, Please Follows</h5>

							<div class="widget-content">
								<ul style="list-style-type: disc;    margin: 16px;">
                                 <font size="1px">
                                  <li><strong>From Ultadanga</strong> : 221, 223, DN-8 Bus</li>
								   <li><strong>From Shyambazar</strong> : 219, 3C/1, 30D, 30E, DN9 Bus </li>
								   <li><strong>From Airport</strong> : DN8, 223 Bus</li>
								   <li><strong>From DumDum Station</strong> : White Mini Bus , Auto to NagerBazar and then to Shyamnagar</li>
								   <li><strong>From Belgachia</strong> : 3C/1 , 30D , 30E , DN9 , Auto to Lake Town and then to Shyamnagar </li>
								   <li><strong>From Baguihati</strong> : Take Direct auto to Shyamnagar </li>
                                   </font>
                                   </ul></p>

								
							</div>
						</div>
					</aside>
				</div>
            </div>
        </div>
    </section>
    <!-- //end content part -->

                        
                
</asp:Content>
