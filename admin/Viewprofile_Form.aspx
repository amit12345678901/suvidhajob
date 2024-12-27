<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewprofile_Form.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Viewprofile_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu-v.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

ddsmoothmenu.init({
	mainmenuid: "smoothmenu2", //Menu DIV id
	orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
	//customtheme: ["#804000", "#482400"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>








<style>

*{margin:0; padding:0; border:0;}
body { font:13px/15px 'Arial', Arial, Helvetica, sans-serif;}
.spacer { clear:both; font-size:0; line-height:0; margin:0; padding:0;}
ul { list-style:none;}
.bio-lft { width:960px; float:left; border:1px solid #c3c3c5; padding:0 0 12px 0;}
.bio-top { float:left;border-bottom:1px solid #c3c3c5; padding:12px; background:#f8f8fa; width: 934px; margin:0 0 32px 0;}
.bio-cont-lft { width:530px; float:left;}
.bio-lft h2 { font:18px/20px 'Arial', Arial, Helvetica, sans-serif; margin:0 0 30px 0;}
.bio-lft img { float:right;}
.span1 { width: 435px;float: left;margin: 0 31px 0 12px;}
em { margin:0 0 8px 0; color:#5d5d5d; font-style:normal; float:left;}
i { color:#000000; font-style:normal;}
.green-txt { color:#20610d;}
.verified { margin:11px 0 0 12px; color:#585951;}
.verified li { float:left; color:#585951; background:url(images3/border.png) right no-repeat; margin:0 11px 0 0; padding:0 11px 0 0;}
.verified span { float:left; margin:0 5px 0 0;}
.verified li:last-child { margin:0; background:none;}
.summary { margin:29px 0; float:left; width:760px;}
.summary h2 { font-size:16px; margin:0 0 12px 0;}
.click-btn { width:120px; margin: 0 auto; display:block;}
</style>









</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
  <div style="float: left; margin: 40px 0 0 18px;">


     <asp:GridView ID="GridView1" runat="server" 
        HeaderStyle-HorizontalAlign="Center" AutoGenerateColumns="false"  DataKeyNames="id_txt">
        <HeaderStyle ForeColor="Black" Font-Bold="True"></HeaderStyle>
                
                              <Columns>
                              <asp:TemplateField>
                              <ItemTemplate>


                                

   <div class="bio-lft">
   
       <div class="bio-top">
          <div class="bio-cont-lft">
             <h2> <%# Eval("name_txt") %> </h2>
             <p>    <%# Eval("res_tit_txt") %>   </p>
          </div>
          
       </div>
       
       <div class="span1">
         <em>Gender: <i><%# Eval("sex_txt")%></i></em>
         <br class="spacer" />
         <em>Date of Birth: <i><%# Eval("date_txt")%>/<%# Eval("month_txt")%>/<%# Eval("year_txt")%></i></em><br class="spacer" /><em>Salary: <i><%# Eval("ctc_txt")%></i></em>
         <br class="spacer" />
         <em>Industry: <i><%# Eval("in_txt")%></i></em>
         <br class="spacer" />
         <em>Farea: <i><%# Eval("f_n")%></i></em>
         <br class="spacer" />
         <em>Role: <i><%# Eval("t_n")%></i></em>
         <br class="spacer" />
         <em>Experience: <i><%# Eval("exp_txt")%></i></em>
         <br class="spacer" />
         <em>Current&nbsp; Location: <i><%# Eval("cloc_txt")%></i></em>
         <br class="spacer" />
         <em>Marital Status: <i><%# Eval("ms_txt")%></i></em>
         <br class="spacer" />
         <em>ACADEMIC/ PROFESSIONAL QUALIFICATION: <i>Process Manager</i></em>
         <br class="spacer" />
         <em>Key Skills: <i class="green-txt"><%# Eval("ks_txt")%>.</i></em>
         <br class="spacer" />
       </div>
       
       <div class="span1">
          <em>Academic qualification: <i><%# Eval("aq_txt")%></i></em>
          <br class="spacer" />
          <em>profesinal qualification: <i><%# Eval("pq_txt")%></i></em>
          <br class="spacer" />
          <em>Inistitute: <i><%# Eval("ins_txt")%></i></em>
          <br class="spacer" />
          <em>Current Employer: <i><%# Eval("curr_emp_txt")%></i></em>
          <br class="spacer" />
          <em>Current Designation: <i><%# Eval("curr_des_txt")%></i></em>
          <br class="spacer" />
          <em>Job Responsibility: <i><%# Eval("job_res_txt")%></i></em>
          <br class="spacer" />
          <em>Address: <i><%# Eval("add_txt")%></i></em>
          <br class="spacer" />

          
           <em>Account Create Date: <i><%# Convert.ToDateTime(Eval("crt_date")).ToLongDateString()   %></i></em>
          <br class="spacer" />
          <em>Last log-in Date: <i><%#   Convert.ToDateTime(Eval("lastlog_date")).ToLongDateString()   %></i></em>
          <br class="spacer" />
          <em>Update Date: <i><%#  Convert.ToDateTime(Eval("update_date")).ToLongDateString()  %></i></em>
          <br class="spacer" />

       </div>
       
       <div class="spacer"></div>
       
       <div class="verified"> 
            <span>Verified :</span>
            <ul>
              <li><span><img src="images3/phone.png" /></span>Phone Number  &nbsp;  <%# Eval("mob_txt")%></li>
              <li><span><img src="images3/icon1.png" /></span>Email - id  &nbsp;  <%# Eval("email_txt")%></li>
            </ul>
            <br class="spacer" />
       </div> 
       
   </div>
   
        <div class="summary">
          <h2>Summary</h2>
          <p><%# Eval("summery_txt")%></p>
       </div> 





                                 </ItemTemplate>
                              </asp:TemplateField>
                            
                              </Columns>
                              </asp:GridView>

                    </div>


                              <br /><br />
                              <asp:LinkButton ID="downcv" runat="server" Text="Click Here" onclick="downcv_Click" CssClass="click-btn"></asp:LinkButton> &nbsp; &nbsp; <asp:Label ID="Label1" runat="server"></asp:Label>




  














    
<%--<table width="100%"  border="1" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="40%" class="home_tx">Name </td>
        <td width="60%">
            <% =arr[0] %></td>
      </tr>
      <tr>
        <td class="home_tx">Date of Birth </td>
        <td><% =arr[1] %> /
          <% =arr[2] %> /
         <% =arr[3] %></td>
      </tr>
       <tr>
        <td class="home_tx">Account Create Date </td>
        <td><% =arr[41] %> 
         </td>
      </tr>
       <tr>
        <td class="home_tx">Last log-in Date </td>
        <td><% =arr[42] %> </td>
      </tr>
       <tr>
        <td class="home_tx">Update Date</td>
        <td><% =arr[43] %> </td>
      </tr>
      <tr>
        <td class="home_tx">Sex</td>
        <td><% =arr[4] %></td>
      </tr>
      <tr>
        <td class="home_tx">Marital Status</td>
       <td> <% =arr[5] %></td>
      </tr>
      <tr>
        <td class="home_tx">Email</td>
        <td><% =arr[6] %></td>
      </tr>
      <tr>
        <td class="home_tx">Address</td>
        <td><% =arr[7] %></td>
      </tr>
      <tr>
        <td class="home_tx">Country</td>
        <td><% =arr[8] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; Location</td>
        <td><% =arr[9] %></td>
      </tr>
      <tr>
        <td class="home_tx">Telephone </td>
        <td><% =arr[10] %></td>
      </tr>
      <tr>
        <td class="home_tx">Mobile</td>
        <td>          
            <% =arr[11] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>ACADEMIC/ PROFESSIONAL QUALIFICATION</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Academic qualification</td>
        <td><% =arr[12] %></td>
      </tr>
      <tr>
        <td class="home_tx">profesinal qualification</td>
        <td><% =arr[13] %></td>
      </tr>
      <tr>
        <td class="home_tx">Inistitute</td>
        <td><% =arr[14] %></td>
      </tr>
      <tr>
        <td class="home_tx">Year of Graduation</td>
        <td><% =arr[15] %></td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>RESUME SUMMERY</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Resume Title</td>
        <td><% =arr[16] %></td>
      </tr>
      <tr>
        <td class="home_tx">Key Skill</td>
        <td><% =arr[17] %></td>
      </tr>
      <tr>
        <td class="home_tx">Experience</td>
        <td><% =arr[18] %></td>
      </tr>
      <tr>
        <td class="home_tx">Industry</td>
        <td><% =arr[19] %></td>
      </tr>
      <tr>
        <td class="home_tx">Functional Area</td>
        <td><% =arr[20] %></td>
      </tr>
      <tr>
        <td class="home_tx">Current Employers </td>
        <td><% =arr[21] %></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><% =arr[22] %></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><% =arr[23] %></td>
      </tr>
      <tr>
        <td class="home_tx">Period </td>
        <td><% =arr[24] %></td>
      </tr>
      <tr>
        <td class="home_tx">Summery</td>
        <td><% =arr[25] %></td>
      </tr>
      <tr>
        <td valign="top" class="home_tx">Language Known</td>
        <td><% =arr[29] %>
        
                    <% =arr[32] %>
          <% =arr[33] %>         
         <% =arr[34] %>          
          <br />
          <% =arr[30] %>
          <% =arr[35] %>
          <% =arr[36] %>
          <% =arr[37] %>         
          <br />
        <% =arr[31] %>  
          <% =arr[38] %> 
          <% =arr[39] %>
          <% =arr[40] %>
        
          
          
          </td>
      </tr>
      <tr bgcolor="#F2F2F2">
        <td colspan="2" class="home_tx"><strong>DESIRED&nbsp; JOB</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Job Type</td>
        <td><% =arr[26] %></td>
      </tr>
      <tr>
        <td class="home_tx">Employment Status </td>
        <td><% =arr[27] %></td>
      </tr>
      <tr>
        <td class="home_tx">Prefered Location</td>
        <td><% =arr[28] %></td>
      </tr>
      
        <tr>
        <td class="home_tx">Click For Cv</td>
        <td><asp:LinkButton ID="downcv" runat="server" Text="Click Here" onclick="downcv_Click"></asp:LinkButton> &nbsp; &nbsp; <asp:Label ID="Label1" runat="server"></asp:Label></td>
                                                    </td>
      </tr>
    </table>    --%>
    
   
  
  </asp:Content>