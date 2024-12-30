<%@ Page Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="External-career.aspx.cs" Inherits="External_career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"> </script>
<script type="text/javascript" src="js/script.js"></script>
   <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

    <style>
*{margin:0; padding:0; border:0;}
.new_h2
{
	float:left; margin:0 0 10px 0; font-weight:bold; font-size:20px; color:#000;
}
.new_h3
{
	float:left; margin:0 0 5px 0; font-weight:normal; font-size:15px; color:#000;
}

.new_h_3
{
	float:right; margin:0 0 5px 0; font-weight:normal; font-size:15px; color:#000;
}

.new_h
{
	float:left; margin:5px 0 5px 0; font-weight:bold; font-size:16px; color:#000; border-bottom:2px solid #ffb812; width:100%; padding-bottom:10px;
}
.new_hh
{
	float:left; margin:20px 0 0px 0; font-weight:bold; font-size:24px; color:#000;
}
.new_h4
{
	float:left; margin:0 0 10px 0; font-weight:normal; font-size:14px; color:#BB2F2F;
}
.nw_img
{
	float:left; margin:6px 20px 10px 108px;
}
.nw_cont_d
{
	width:910px;  float:left; 
}
.nw_all
{
	width:896px; min-height:20px; padding: 2px 5px;; 
}
.nw_cont_lft
{
	margin-right: 5px; display: inline-block; width: 172px; float: left;  /*font-size: 15px; color: #999;*/
	
}
.nw_cont_rgt
{
	margin-right: 5px; display: inline-block; width: 698px; float: left;  /*font-size: 16px;*/ color: #504949;
	
}
.nw_cont_rgt span
{
	color:#A02603;
}
.nw_p
{
	padding:5px 0px; color: #000; text-align:justify; display:block;
}
#backgroundPopup { 
	z-index:1;
	position: fixed;
	display:none;
	height:100%;
	width:100%;
	background:#000000;	
	top:0px;  
	left:0px;
}
#toPopup {
	font-family: "lucida grande",tahoma,verdana,arial,sans-serif;
    background: none repeat scroll 0 0 #FFFFFF;
    border: 10px solid #ccc;
    border-radius: 3px 3px 3px 3px;
    color: #333333;
    display: none;
	font-size: 14px;
    left: 54%;
    margin-left: -402px;
    position: fixed;
    top: 8%;
    width: 676px;
    z-index: 2;
}
div.loader {
    background: url("images/loading.gif") no-repeat scroll 0 0 transparent;
    height: 32px;
    width: 32px;
	display: none;
	z-index: 9999;
	top: 40%;
	left: 50%;
	position: absolute;
	margin-left: -10px;
}
div.close {
    background: url("images/closebox.png") no-repeat scroll 0 0 transparent;
    bottom: 24px;
    cursor: pointer;
    float: right;
    height: 30px;
    left: 27px;
    position: relative;
    width: 30px;
}
span.ecs_tooltip {
    background: none repeat scroll 0 0 #000000;
    border-radius: 2px 2px 2px 2px;
    color: #FFFFFF;
    display: none;
    font-size: 11px;
    height: 16px;
    opacity: 0.7;
    padding: 4px 3px 2px 5px;
    position: absolute;
    right: -62px;
    text-align: center;
    top: -51px;
    width: 93px;
}
span.arrow {
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 7px solid #000000;
    display: block;
    height: 1px;
    left: 40px;
    position: relative;
    top: 3px;
    width: 1px;
}
div#popup_content {
    margin: 4px 7px;
}
div#popup_content iframe { width: 674px; height: 498px;}
.lHead {border-bottom: 2px solid #FFB812;color: #000;font-size: 18px;line-height: 24px;padding: 5px 0 4px 12px;}
.lHead span {float: left;}


.inner-ext {
    position: relative;
    z-index:99;
    background-color: #272b31;
    background-image: url(../images/inner-bg.jpg);
    background-size: cover;
    background-position: 0% 50%;
    background-repeat: no-repeat;
    margin-top: 0px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <!-- banner part -->
    <section class="inner-ext">
        <div class="page-title">
            <div class="container">
                <h1>CURRENT OPENING</h1>
               <!-- <nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Current Opening</a>
                </nav>-->
                <br><br><br><br>
            </div>
        </div>
    </section>
    <!-- /end banner part -->
    <html>


<body>


<%--<div style="float:none; margin:10px auto; width:650px;">



<!----------------------------------------------------form--------------------------------------------------->
<h2 class="new_h2"><%= jobname %></h2><br clear="both">

<h3 class="new_h3"><%= profile%></h3><br clear="both">
<h4 class="new_h4"><% = addr %> | Experience: <%= expmin%> to <%= expmax %>yrs | CTC: <%= ctcfrm%> - <%= ctcto %> Lakh.p.a.</h4><br clear="both">
<a href="mailto:careers@suvidhajobs.in"><img src="images/applyBtn.jpg" width="169" height="41"  alt="" class="nw_img"/></a><br clear="both">


<div class="nw_cont_d">

	<div class="nw_all">
  		<div class="nw_cont_lft">Key Skills :</div>
        <div class="nw_cont_rgt"><%= keyskill%></div>
  	</div>
    <div class="nw_all">
  		<div class="nw_cont_lft">Qualification :</div>
        <div class="nw_cont_rgt"><span><%= quli%></span> </div>
  	</div>
    <div class="nw_all">
  		<div class="nw_cont_lft">Specification :</div>
        <div class="nw_cont_rgt"><%= specific %></div>
  	</div>
    <div class="nw_all">
  		<div class="nw_cont_lft">Job Function :</div>
        <div class="nw_cont_rgt"><%= jobfunc%></div>
  	</div>
    <div class="nw_all">
  		<div class="nw_cont_lft">Industry :</div>
        <div class="nw_cont_rgt"><%= industry%></div>
  	</div>
  
  
  
  
  
  
</div>

<br clear="both">
<h2 class="new_hh">DESCRIPTION</h2><br clear="both">
<h3 class="new_h">Hiring Company</h3><br clear="both">
<p class="nw_p"><%= description%></p>
<br clear="both">
<a href="mailto:careers@suvidhajobs.in"><img src="images/applyBtn.jpg" width="169" height="41"  alt="" class="nw_img"/></a><br clear="both">
  <br />
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
<!----------------------------------------------------form--------------------------------------------------->


</div>--%>



<div style="float:none; margin:0px auto 20px auto; width:922px; padding:0px 20px 5px 20px;font-family: Arial;font-size: 13px;">



<!----------------------------------------------------form--------------------------------------------------->
<div style="float:left; width:910px; margin:0 0 10px 0;">
<div style="float:left; width:900px; padding: 5px 5px 15px 6px; margin:0 0 10px 0; position:relative; background:#ffffff;">
<h2 class="new_h2"><%= jobposition%></h2><br clear="both">

                        <br clear="both">
<h4 class="new_h3"><font color="#999">Experience:</font> <%= expmin%> to <%= expmax %> yrs  <%= hdcode%></h4>  <h4 class="new_h_3"> <font color="#999">Posted on:</font> <%= datepost %></h4>
<div style=" bottom:-11px; float:left; position:absolute; left:0px;"><img src="images/shadowBg.png" width="916" height="11"  alt=""/></div>
</div>
<br clear="both">
</div>





<div class="nw_cont_d">

	
  <h3 class="new_h">Job Description</h3><br clear="both">
  <p class="nw_p"><% = description %></p>

 <div class="nw_all">
  		<div class="nw_cont_lft">Industry:</div>
        <div class="nw_cont_rgt"><%= indus%></div>
  	</div>
 <div class="nw_all">
  		<div class="nw_cont_lft">Functional area:</div>
        <div class="nw_cont_rgt"><%= func%></div>
  	</div>
  	
  	
  	
  	<%= hdsubfunc %>
  	
  	
    
    
    <div class="nw_all">
  		<div class="nw_cont_lft">Age Between:</div>
        <div class="nw_cont_rgt"><%= age%></div>
  	</div>
    
    
    
   
   
    
   
    
    
   
  	
  	  <div class="nw_all">
  		<div class="nw_cont_lft">Keyskills:</div>
        <div class="nw_cont_rgt"><%= keyskill%></div>
  	</div>
  	
  	
  	
  	
  	 <div class="nw_all">
  		<div class="nw_cont_lft">Opening:</div>
        <div class="nw_cont_rgt"><%= opening%></div>
  	</div>
  	
  	
  	<div class="nw_all">
  		<div class="nw_cont_lft">Location:</div>
        <div class="nw_cont_rgt"><%= locton%></div>
  	</div>
  	<div class="nw_all">
  		<div class="nw_cont_lft">Job Type:</div>
        <div class="nw_cont_rgt"><%= type%></div>
  	</div>
  	<div class="nw_all">
  		<div class="nw_cont_lft">Gender:</div>
        <div class="nw_cont_rgt"><%= gender%></div>
  	</div>
  	
  <br clear="both">
  

  <h3 class="new_h">Desired Candidate Profile</h3><br clear="both">
  <div class="nw_all">
  		<div class="nw_cont_lft">Academic Qualification:</div>
        <div class="nw_cont_rgt">
      <%= acquali%>
        
        </div>
        </div>
  	
  	
  	
  	 <div class="nw_all">
  		<div class="nw_cont_lft">Professional Qualification:</div>
        <div class="nw_cont_rgt"><%= profess%></div>
  	</div>
    <div class="nw_all">
  		<div class="nw_cont_lft">CTC:</div>
        <div class="nw_cont_rgt"> <%= ctcfrm%> - <%= ctcto %> Lakh.p.a.</div> 
  	</div>
  	 <br clear="both">

 <h3 class="new_h">Company Profile</h3><br clear="both">


 <div class="nw_all">
      
     <p class="nw_p"><%= comname%></p>
  	</div>

  <div class="nw_all">
      
      <p class="nw_p"><%= compprofile%></p>
  	</div>
    
    
     <h3 class="new_h">Contact Details</h3><br clear="both">


  
      
     <div class="nw_all">
  		<div class="nw_cont_lft">Contact Person  Name:</div>
        <div class="nw_cont_rgt"><%= contctperson%></div>
  	</div>
     <div class="nw_all">
  		<div class="nw_cont_lft"> Designation:</div>
        <div class="nw_cont_rgt"><%= design%></div>
  	</div>
     <div class="nw_all">
  		<div class="nw_cont_lft"> Email:</div>
        <div class="nw_cont_rgt"><%= contctemail%></div>
  	</div>
    
    
  	
  	 <div class="nw_all">
  		<div class="nw_cont_lft"> Phone:</div>
        <div class="nw_cont_rgt"><%= contctphone%></div>
  	</div>
  	
  	<%= hdaddrss%>
  	
<div style="margin:10px 0 10px 0;"></div>




<br clear="both">


&nbsp;<asp:ImageButton ID="ImageButton1" src="images/btn11.png" CssClass="nw_img"   
        runat="server" onclick="ImageButton1_Click1"  />

&nbsp;<asp:ImageButton ID="Button1" src="images/btn222.png" CssClass="nw_img topopup" runat="server" Text="Apply without Registration" 
       />
<br /><br />
 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

 <div id="toPopup"> 
    	<div class="lHead">
        <div class="close"></div>
        <span class="lhs">New User: Apply to selected job without registration</span>
        <br clear="both" />
        </div>
        
       	<span class="ecs_tooltip">Press Esc to close <span class="arrow"></span></span>
         
		<div id="popup_content">
             
<%--        <a 'Withoutregistration.aspx?position=<%= jobposition %>"&jobcode"=<%= jobcode %>'></a>--%>
            
            <iframe src='Withoutregistration.aspx?position=<%= jobposition %>"&jobcode"=<%= jobcode %>'></iframe>
            
        </div> <!--your content end-->
    
    </div> <!--toPopup end-->
    
	<div class="loader"></div>
   	<div id="backgroundPopup"></div>

</div>

<br clear="both" />
</div>

</body>
</html>
</asp:Content>

