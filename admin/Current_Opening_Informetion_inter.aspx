<%@ Page Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="Current_Opening_Informetion_inter.aspx.cs" Inherits="Current_opening"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
	float:left; margin:5px 0 5px 0; font-weight:bold; font-size:16px; color:#000; border-bottom:2px solid #ffb812; width:652px; padding-bottom:10px;
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
	float:left; margin:6px 20px 10px 250px;
}
.nw_cont_d
{
	width:652px;  float:left; 
}
.nw_all
{
	width:643px; min-height:20px; padding:5px; 
}
.nw_cont_lft
{
	margin-right: 5px; display: inline-block; width: 172px; float: left;  font-size: 15px; color: #999;
	
}
.nw_cont_rgt
{
	margin-right: 5px; display: inline-block; width: 440px; float: left;  font-size: 16px; color: #504949;
	
}
.nw_cont_rgt span
{
	color:#A02603;
}
.nw_p
{
	padding:5px;  font-size: 14px; color: #000; text-align:justify; margin:0px 0 10px 0; display:block;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head>



</head>

<body>


<%--<div style="float:none; margin:100px auto; width:650px;">



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



<div style="float:none; margin:100px auto 20px auto; width:650px; background:#fff; padding:20px 20px 5px 20px; box-shadow: 0px 0px 10px 0px rgba(119, 119, 119, 0.75);
-moz-box-shadow: 0px 0px 10px 0px rgba(119, 119, 119, 0.75);
-webkit-box-shadow: 0px 0px 10px 0px rgba(119, 119, 119, 0.75); -ms-box-shadow: 0px 0px 10px 0px rgba(119, 119, 119, 0.75);">



<!----------------------------------------------------form--------------------------------------------------->
<div style="float:left; width:650px; background:#FFF;  margin:0 0 30px 0;">
<div style="float:left; width:640px; background:#fafafa; border:1px solid #ececec; padding:5px; margin:0 0 10px 0; position:relative;">
<h2 class="new_h2"><%= jobposition%></h2><br clear="both">

                        <br clear="both">
<h4 class="new_h3"><font color="#999">Experience:</font> <%= expmin%> to <%= expmax %> yrs </h4>  <h4 class="new_h_3"> <font color="#999">Posted on:</font> <%= datepost %></h4>
<div style=" bottom:-5px; float:left; position:absolute; left:-1px;"><img src="images/shadowBg.png" width="650" height="5"  alt=""/></div>
</div>
<br clear="both">
</div>






<div class="nw_cont_d">

	
  <h3 class="new_h">Job Description</h3><br clear="both">
  <p class="nw_p"><% = description %></p>

    
    <div class="nw_all">
  		<div class="nw_cont_lft">Specification:</div>
        <div class="nw_cont_rgt"><%= specific %></div>
  	</div>
    
    
    <div class="nw_all">
  		<div class="nw_cont_lft">CTC:</div>
        <div class="nw_cont_rgt"> <%= ctcfrm%> - <%= ctcto %> Lakh.p.a.</div> 
  	</div>
    
    <div class="nw_all">
  		<div class="nw_cont_lft">Job Location:</div>
        <div class="nw_cont_rgt"> <%= location%> </div> 
  	</div>
   
    
    
    
   
    
    
    <div class="nw_all">
  		<div class="nw_cont_lft">Keyskills:</div>
        <div class="nw_cont_rgt"><%= keyskill%></div>
  	</div>
  <br clear="both"><br clear="both">
  
  
  
  
  
  <h3 class="new_h">Desired Candidate Profile</h3><br clear="both">
 <p class="nw_p"><% = profile %></p>
  <div class="nw_all">
  		<div class="nw_cont_lft">Academic Qualification:</div>
        <div class="nw_cont_rgt">
      <%= acquali%>
        
        </div>
        </div>
       <br clear="both">
  	
  	
  	
  	 <div class="nw_all">
  		<div class="nw_cont_lft">Professional Qualification:</div>
        <div class="nw_cont_rgt"><%= profess%></div>
  	</div>
  	 <br clear="both">

<div style="margin:10px 0 10px 0;"></div>
  
  
  
  
  
  
  
  
</div>












<br clear="both">
<div style="height:35px; overflow:hidden; padding:0 0 50px 0; position:relative;">
<!--------<div style="float:left; position:absolute; left:-1px;"><img src="images/shadowBg.png" width="650" height="5"  alt=""/></div>------------------->
<a href='mailto:careers@suvidhajobs.in?Subject=<%= jobposition%>'><img src="images/btn1.png"  alt="" class="nw_img"/></a><a href="#" style="line-height:26px;"></a>
<br />
 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>




</body>
</html>
</asp:Content>

