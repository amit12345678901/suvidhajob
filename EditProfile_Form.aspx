<%@ Page Title="" Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="EditProfile_Form.aspx.cs" Inherits="EditProfile_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

<link href="../admin/css/bootstrap.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="candidatebg">
<div class="aboutblank"></div>
</div>
<!-----------------------------------divider------------------------------------------->
<div id="dividerbg">

</div>

<!----------------------------------content---------------------------------------->
<div id="contentbg"style="background:#eff0f1;">
<div class="contentblank">
<div class="main-cont">

<div class="abt-lft" style="height:300px;">
<div class="abt-lft-bdy1">
<ul>
  <li><a href="Overview_Form.aspx" class="side_menu">Overview</a></li>
    <li><a href="Candidate_apply_jobs.aspx" class="side_menu">Job Applied</a></li>
    <li><a href="Viewprofile_Form.aspx" class="side_menu">View Profile </a></li>
    <li><a href="EditProfile_Form.aspx" class="side_menu">Edit Profile </a></li>
    <li><a href="cv_upload.aspx" class="side_menu">Add Profile (Word Format) </a></li>
    <li><a href="update_cv.aspx" class="side_menu">Edit Profile (Word Format) </a></li>
	<li><a href="ChangePassword_Form.aspx" class="side_menu">Change Password </a></li>
	<li><a href="Block_Form.aspx" class="side_menu">Block Profile </a></li>
    <li class="noborder"><a href="Candidate_Logout.aspx" class="side_menu">Logout</a></li>
</ul>
</div>
</div>

<div class="abt-rht">
<h2>Edit Profile</h2>
<div align="center">
  
           
          
          <asp:ScriptManager 
                      ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
<table>
             
              <tr>
                <td bgcolor="#FFFFFF">
                <table class="table table-bordered" style="background:#fff;">
                  <tr>
                    <td width="45%" align="right" >Code </td>
                    
                    <td width="55%"><asp:TextBox ID="TextBox1" runat="server" 
            
            
            ReadOnly="True" Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >User Id </td>
                    
                    <td><asp:TextBox ID="TextBox2" runat="server" 
            
            
            ReadOnly="True" Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Password </td>
                    
                    <td><asp:TextBox ID="TextBox5" runat="server" 
            
            
            ReadOnly="True" Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Name *</td>
                    
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Sex </td>
                    
                    <td><asp:DropDownList ID="DropDownList1" runat="server" Width="290px" 
            
            >
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" >Date of Birth </td>
                    
                    <td><asp:DropDownList ID="DropDownList2" runat="server" Width="90px"
            
            
           >
                      <asp:ListItem Value="1"></asp:ListItem>
                      <asp:ListItem Value="2"></asp:ListItem>
                      <asp:ListItem Value="3"></asp:ListItem>
                      <asp:ListItem Value="4"></asp:ListItem>
                      <asp:ListItem Value="5"></asp:ListItem>
                      <asp:ListItem Value="6"></asp:ListItem>
                      <asp:ListItem Value="7"></asp:ListItem>
                      <asp:ListItem Value="8"></asp:ListItem>
                      <asp:ListItem Value="9"></asp:ListItem>
                      <asp:ListItem Value="10"></asp:ListItem>
                      <asp:ListItem Value="11"></asp:ListItem>
                      <asp:ListItem Value="12"></asp:ListItem>
                      <asp:ListItem Value="13"></asp:ListItem>
                      <asp:ListItem Value="14"></asp:ListItem>
                      <asp:ListItem Value="15"></asp:ListItem>
                      <asp:ListItem Value="16"></asp:ListItem>
                      <asp:ListItem Value="17"></asp:ListItem>
                      <asp:ListItem Value="18"></asp:ListItem>
                      <asp:ListItem Value="19"></asp:ListItem>
                      <asp:ListItem Value="20"></asp:ListItem>
                      <asp:ListItem Value="21"></asp:ListItem>
                      <asp:ListItem Value="22"></asp:ListItem>
                      <asp:ListItem Value="23"></asp:ListItem>
                      <asp:ListItem Value="24"></asp:ListItem>
                      <asp:ListItem Value="25"></asp:ListItem>
                      <asp:ListItem Value="26"></asp:ListItem>
                      <asp:ListItem Value="27"></asp:ListItem>
                      <asp:ListItem Value="28"></asp:ListItem>
                      <asp:ListItem Value="29"></asp:ListItem>
                      <asp:ListItem Value="30"></asp:ListItem>
                      <asp:ListItem Value="31"></asp:ListItem>
                    </asp:DropDownList>
                      <asp:DropDownList ID="DropDownList3" runat="server" Width="90px"
            
            >
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                      </asp:DropDownList>
                      <asp:DropDownList ID="DropDownList4" runat="server" Width="100px"
            
            >
                        <asp:ListItem Value="1945"></asp:ListItem>
                        <asp:ListItem Value="1946"></asp:ListItem>
                        <asp:ListItem Value="1947"></asp:ListItem>
                        <asp:ListItem Value="1948"></asp:ListItem>
                        <asp:ListItem Value="1949"></asp:ListItem>
                        <asp:ListItem Value="1950"></asp:ListItem>
                        <asp:ListItem Value="1951"></asp:ListItem>
                        <asp:ListItem Value="1952"></asp:ListItem>
                        <asp:ListItem Value="1953"></asp:ListItem>
                        <asp:ListItem Value="1954"></asp:ListItem>
                        <asp:ListItem Value="1955"></asp:ListItem>
                        <asp:ListItem Value="1956"></asp:ListItem>
                        <asp:ListItem Value="1957"></asp:ListItem>
                        <asp:ListItem Value="1958"></asp:ListItem>
                        <asp:ListItem Value="1959"></asp:ListItem>
                        <asp:ListItem Value="1960"></asp:ListItem>
                        <asp:ListItem Value="1961"></asp:ListItem>
                        <asp:ListItem Value="1962"></asp:ListItem>
                        <asp:ListItem Value="1963"></asp:ListItem>
                        <asp:ListItem Value="1964"></asp:ListItem>
                        <asp:ListItem Value="1965"></asp:ListItem>
                        <asp:ListItem Value="1966"></asp:ListItem>
                        <asp:ListItem Value="1967"></asp:ListItem>
                        <asp:ListItem Value="1968"></asp:ListItem>
                        <asp:ListItem Value="1969"></asp:ListItem>
                        <asp:ListItem Value="1970"></asp:ListItem>
                        <asp:ListItem Value="1971"></asp:ListItem>
                        <asp:ListItem Value="1972"></asp:ListItem>
                        <asp:ListItem Value="1973"></asp:ListItem>
                        <asp:ListItem Value="1974"></asp:ListItem>
                        <asp:ListItem Value="1975"></asp:ListItem>
                        <asp:ListItem Value="1976"></asp:ListItem>
                        <asp:ListItem Value="1977"></asp:ListItem>
                        <asp:ListItem Value="1978"></asp:ListItem>
                        <asp:ListItem Value="1979"></asp:ListItem>
                        <asp:ListItem Value="1980"></asp:ListItem>
                        <asp:ListItem Value="1981"></asp:ListItem>
                        <asp:ListItem Value="1982"></asp:ListItem>
                        <asp:ListItem Value="1983"></asp:ListItem>
                        <asp:ListItem Value="1984"></asp:ListItem>
                        <asp:ListItem Value="1985"></asp:ListItem>
                        <asp:ListItem Value="1986"></asp:ListItem>
                        <asp:ListItem Value="1987"></asp:ListItem>
                        <asp:ListItem Value="1988"></asp:ListItem>
                        <asp:ListItem Value="1989"></asp:ListItem>
                        <asp:ListItem Value="1990"></asp:ListItem>
                        <asp:ListItem Value="1991"></asp:ListItem>
                        <asp:ListItem Value="1992"></asp:ListItem>
                        <asp:ListItem Value="1993"></asp:ListItem>
                        <asp:ListItem Value="1994"></asp:ListItem>
                        <asp:ListItem Value="1995"></asp:ListItem>
                      </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" >Email *</td>
                   
                    <td><asp:TextBox ID="TextBox4" runat="server" Width="290px" 
            ></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox50" ErrorMessage="not a valid email id." 
            
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                  </tr>
                  <tr>
                    <td align="right" >Marital&nbsp; Status</td>
                   
                    <td><asp:DropDownList ID="DropDownList12" runat="server" Width="290px"
            >
                      <asp:ListItem Value="Select"></asp:ListItem>
                      <asp:ListItem Value="Never Married"></asp:ListItem>
                      <asp:ListItem Value="Married"></asp:ListItem>
                      <asp:ListItem Value="Widowed"></asp:ListItem>
                      <asp:ListItem Value="Divorced"></asp:ListItem>
                      <asp:ListItem Value="Separated"></asp:ListItem>
                      <asp:ListItem Value="Other"></asp:ListItem>
                    </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" >Address *</td>
                    
                    <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="290px" Height="77px" 
           ></asp:TextBox></td>
                  </tr>
                  
                  <tr>
        <td align="right" valign="top" >Current Location&nbsp;&nbsp;<font color="red">*</font></td>
        
        <td class="style5"><asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="city_name" DataValueField="city_name" Width="290px"
            > </asp:ListBox></td>
      </tr>
                  
                    <tr>
                  <td width="45%" align="right" valign="top">Country<font color="red">*</font></td>
                  <td width="55%">                                    
                      <asp:DropDownList ID="country"  runat="server" Width="290px">
                    <asp:ListItem>---Choose One---</asp:ListItem>
          <asp:ListItem>Afghanistan</asp:ListItem>
          <asp:ListItem>Albania</asp:ListItem>
          <asp:ListItem>Algeria</asp:ListItem>
          <asp:ListItem>American Samoa</asp:ListItem>
          <asp:ListItem>Andorra</asp:ListItem>
          <asp:ListItem>Angola</asp:ListItem>
          <asp:ListItem>Anguilla</asp:ListItem>
          <asp:ListItem>Antarctica</asp:ListItem>
          <asp:ListItem>Antigua And Barbuda</asp:ListItem>
          <asp:ListItem>Argentina</asp:ListItem>
          <asp:ListItem>Armenia</asp:ListItem>
          <asp:ListItem>Aruba</asp:ListItem>
          <asp:ListItem>Australia</asp:ListItem>
          <asp:ListItem>Austria</asp:ListItem>
          <asp:ListItem>Azerbaijan</asp:ListItem>
          <asp:ListItem>Bahamas</asp:ListItem>
          <asp:ListItem>Bahrain</asp:ListItem>
          <asp:ListItem>Bangladesh</asp:ListItem>
          <asp:ListItem>Barbados</asp:ListItem>
          <asp:ListItem>Belarus</asp:ListItem>
          <asp:ListItem>Belgium</asp:ListItem>
          <asp:ListItem>Belize</asp:ListItem>
          <asp:ListItem>Benin</asp:ListItem>
          <asp:ListItem>Bermuda</asp:ListItem>
          <asp:ListItem>Bhutan</asp:ListItem>
          <asp:ListItem>Bolivia</asp:ListItem>
          <asp:ListItem>Bosnia and Herzegovina</asp:ListItem>
          <asp:ListItem>Botswana</asp:ListItem>
          <asp:ListItem>Bouvet Island</asp:ListItem>
          <asp:ListItem>Brazil</asp:ListItem>
          <asp:ListItem>British Indian Ocean Territory</asp:ListItem>
          <asp:ListItem>Brunei</asp:ListItem>
          <asp:ListItem>Bulgaria</asp:ListItem>
          
          <asp:ListItem>Burkina Faso</asp:ListItem>
          <asp:ListItem>Burundi</asp:ListItem>
          <asp:ListItem>Cambodia</asp:ListItem>
          <asp:ListItem>Cameroon</asp:ListItem>
          <asp:ListItem>Canada</asp:ListItem>
          <asp:ListItem>Cape Verde</asp:ListItem>
          <asp:ListItem>Cayman Islands</asp:ListItem>
          <asp:ListItem>Central African Republic</asp:ListItem>
          <asp:ListItem>Chad</asp:ListItem>
          <asp:ListItem>Chile</asp:ListItem>
          <asp:ListItem>China</asp:ListItem>
          <asp:ListItem>China (Hong Kong S.A.R.)</asp:ListItem>
          <asp:ListItem>China (Macau S.A.R.)</asp:ListItem>
          <asp:ListItem>Christmas Island</asp:ListItem>
          <asp:ListItem>Cocos (Keeling) Islands</asp:ListItem>
          <asp:ListItem>Colombia</asp:ListItem>
          <asp:ListItem>Comoro</asp:ListItem>
          <asp:ListItem>Congo</asp:ListItem>
          <asp:ListItem>Congo, Democractic Republic of</asp:ListItem>
          <asp:ListItem>Cook Islands</asp:ListItem>
          <asp:ListItem>Costa Rica</asp:ListItem>
          <asp:ListItem>Cote D'Ivoire (Ivory Coast)</asp:ListItem>
          <asp:ListItem>Croatia (Hrvatska)</asp:ListItem>
          <asp:ListItem>Cuba</asp:ListItem>
          <asp:ListItem>Cyprus</asp:ListItem>
          <asp:ListItem>Czech Republic</asp:ListItem>
          <asp:ListItem>Denmark</asp:ListItem>
          <asp:ListItem>Djibouti</asp:ListItem>
          <asp:ListItem>Dominica</asp:ListItem>
          <asp:ListItem>Dominican Republic</asp:ListItem>
          <asp:ListItem>East Timor</asp:ListItem>
          <asp:ListItem>Ecuador</asp:ListItem>
          
          
          <asp:ListItem>Egypt</asp:ListItem>
          <asp:ListItem>El Salvador</asp:ListItem>
          <asp:ListItem>Equatorial Guinea</asp:ListItem>
          <asp:ListItem>Eritrea</asp:ListItem>
          <asp:ListItem>Estonia</asp:ListItem>
          <asp:ListItem>Ethiopia</asp:ListItem>
          <asp:ListItem>Falkland Islands (Malvinas)</asp:ListItem>
          <asp:ListItem>Faroe Islands</asp:ListItem>
          <asp:ListItem>Fiji Islands</asp:ListItem>
          <asp:ListItem>Finland</asp:ListItem>
          <asp:ListItem>France</asp:ListItem>
          <asp:ListItem>French Guiana</asp:ListItem>
          <asp:ListItem>French Polynesia</asp:ListItem>
          <asp:ListItem>French Southern Territories</asp:ListItem>
          <asp:ListItem>Gabon</asp:ListItem>
          <asp:ListItem>Gambia</asp:ListItem>
          <asp:ListItem>Georgia</asp:ListItem>
          <asp:ListItem>Germany</asp:ListItem>
          <asp:ListItem>Ghana</asp:ListItem>
          <asp:ListItem>Gibraltar</asp:ListItem>
          <asp:ListItem>Greece</asp:ListItem>
          <asp:ListItem>Greenland</asp:ListItem>
          <asp:ListItem>Grenada</asp:ListItem>
          <asp:ListItem>Guadeloupe</asp:ListItem>
          <asp:ListItem>Guam</asp:ListItem>
          <asp:ListItem>Guatemala</asp:ListItem>
          <asp:ListItem>Guinea</asp:ListItem>
          <asp:ListItem>Guinea-Bissau</asp:ListItem>
          <asp:ListItem>Guyana</asp:ListItem>
          <asp:ListItem>Haiti</asp:ListItem>
          <asp:ListItem>Heard and McDonald Islands</asp:ListItem>
          <asp:ListItem>Honduras</asp:ListItem>
          
          <asp:ListItem>Hungary</asp:ListItem>
          <asp:ListItem>Iceland</asp:ListItem>
          <asp:ListItem>India</asp:ListItem>
          <asp:ListItem>Indonesia</asp:ListItem>
          <asp:ListItem>Iran</asp:ListItem>
          <asp:ListItem>Iraq</asp:ListItem>
          <asp:ListItem>Ireland</asp:ListItem>
          <asp:ListItem>Israel</asp:ListItem>
          <asp:ListItem>Italy</asp:ListItem>
          <asp:ListItem>Jamaica</asp:ListItem>
          <asp:ListItem>Japan</asp:ListItem>
          <asp:ListItem>Jordan</asp:ListItem>
          <asp:ListItem>Kazakhstan</asp:ListItem>
          <asp:ListItem>Kenya</asp:ListItem>
          <asp:ListItem>Kiribati</asp:ListItem>
          <asp:ListItem>Korea</asp:ListItem>
          <asp:ListItem>Korea, North</asp:ListItem>
          <asp:ListItem>Kuwait</asp:ListItem>
          <asp:ListItem>Kyrgyzstan</asp:ListItem>
          <asp:ListItem>Laos</asp:ListItem>
          <asp:ListItem>Latvia</asp:ListItem>
          <asp:ListItem>Lebanon</asp:ListItem>
          <asp:ListItem>Lesotho</asp:ListItem>
          <asp:ListItem>Liberia</asp:ListItem>
          <asp:ListItem>Libya</asp:ListItem>
          <asp:ListItem>Liechtenstein</asp:ListItem>
          <asp:ListItem>Lithuania</asp:ListItem>
          <asp:ListItem>Luxembourg</asp:ListItem>
          <asp:ListItem>Macedonia</asp:ListItem>
          <asp:ListItem>Madagascar</asp:ListItem>
          <asp:ListItem>Malawi</asp:ListItem>
          <asp:ListItem>Malaysia</asp:ListItem>
          
          
          
          <asp:ListItem>Maldives</asp:ListItem>
          <asp:ListItem>Mali</asp:ListItem>
          <asp:ListItem>Malta</asp:ListItem>
          <asp:ListItem>Marshall Islands</asp:ListItem>
          <asp:ListItem>Martinique</asp:ListItem>
          <asp:ListItem>Mauritania</asp:ListItem>
          <asp:ListItem>Mauritius</asp:ListItem>
          <asp:ListItem>Mayotte</asp:ListItem>
          <asp:ListItem>Mexico</asp:ListItem>
          <asp:ListItem>Micronesia</asp:ListItem>
          <asp:ListItem>Moldova</asp:ListItem>
          <asp:ListItem>Monaco</asp:ListItem>
          <asp:ListItem>Mongolia</asp:ListItem>
          <asp:ListItem>Montserrat</asp:ListItem>
          <asp:ListItem>Morocco</asp:ListItem>
          <asp:ListItem>Mozambique</asp:ListItem>
          <asp:ListItem>Myanmar</asp:ListItem>
          <asp:ListItem>Namibia</asp:ListItem>
          <asp:ListItem>Nauru</asp:ListItem>
          <asp:ListItem>Nepal</asp:ListItem>
          <asp:ListItem>Netherlands Antilles</asp:ListItem>
          <asp:ListItem>Netherlands, The</asp:ListItem>
          <asp:ListItem>New Caledonia</asp:ListItem>
          <asp:ListItem>New Zealand</asp:ListItem>
          <asp:ListItem>Nicaragua</asp:ListItem>
          <asp:ListItem>Niger</asp:ListItem>
          <asp:ListItem>Nigeria</asp:ListItem>
          <asp:ListItem>Niue</asp:ListItem>
          <asp:ListItem>Norfolk Island</asp:ListItem>
          <asp:ListItem>Northern Mariana Islands</asp:ListItem>
          <asp:ListItem>Norway</asp:ListItem>
          <asp:ListItem>Oman</asp:ListItem>
          
          
          <asp:ListItem>Pakistan</asp:ListItem>
          <asp:ListItem>Palau</asp:ListItem>
          <asp:ListItem>Panama</asp:ListItem>
          <asp:ListItem>Papua new Guinea</asp:ListItem>
          <asp:ListItem>Paraguay</asp:ListItem>
          <asp:ListItem>Peru</asp:ListItem>
          <asp:ListItem>Philippines</asp:ListItem>
          <asp:ListItem>Pitcairn Island</asp:ListItem>
          <asp:ListItem>Poland</asp:ListItem>
          <asp:ListItem>Portugal</asp:ListItem>
          <asp:ListItem>Puerto Rico</asp:ListItem>
          <asp:ListItem>Qatar</asp:ListItem>
          <asp:ListItem>Reunion</asp:ListItem>
          <asp:ListItem>Romania</asp:ListItem>
          <asp:ListItem>Russia</asp:ListItem>
          <asp:ListItem>Rwanda</asp:ListItem>
          <asp:ListItem>Saint Helena</asp:ListItem>
          <asp:ListItem>Saint Kitts And Nevis</asp:ListItem>
          <asp:ListItem>Saint Lucia</asp:ListItem>
          <asp:ListItem>Saint Pierre and Miquelon</asp:ListItem>
          <asp:ListItem>Saint Vincent And The Grenadin</asp:ListItem>
          <asp:ListItem>Samoa</asp:ListItem>
          <asp:ListItem>San Marino</asp:ListItem>
          <asp:ListItem>Sao Tome and Principe</asp:ListItem>
          <asp:ListItem>Saudi Arabia</asp:ListItem>
          <asp:ListItem>Senegal</asp:ListItem>
          <asp:ListItem>Seychelles</asp:ListItem>
          <asp:ListItem>Sierra Leone</asp:ListItem>
          <asp:ListItem>Singapore</asp:ListItem>
          <asp:ListItem>Slovakia</asp:ListItem>
          <asp:ListItem>Slovenia</asp:ListItem>
          <asp:ListItem>Solomon Islands</asp:ListItem><asp:ListItem>Somalia</asp:ListItem>
          <asp:ListItem>South Africa</asp:ListItem>
          <asp:ListItem>South Georgia</asp:ListItem>
          <asp:ListItem>Spain</asp:ListItem>
          <asp:ListItem>Sri Lanka</asp:ListItem>
          <asp:ListItem>Sudan</asp:ListItem>
          <asp:ListItem>Suriname</asp:ListItem>
          <asp:ListItem>Svalbard And Jan Mayen Islands</asp:ListItem>
          <asp:ListItem>Swaziland</asp:ListItem>
          <asp:ListItem>Sweden</asp:ListItem>
          <asp:ListItem>Switzerland</asp:ListItem>
          <asp:ListItem>Syria</asp:ListItem>
          <asp:ListItem>Taiwan</asp:ListItem>
          <asp:ListItem>Tajikistan</asp:ListItem>
          <asp:ListItem>Tanzania</asp:ListItem>
          <asp:ListItem>Thailand</asp:ListItem>
          <asp:ListItem>Togo</asp:ListItem>
          <asp:ListItem>Tokelau</asp:ListItem>
          <asp:ListItem>Tonga</asp:ListItem>
          <asp:ListItem>Trinidad And Tobago</asp:ListItem>
          <asp:ListItem>Tunisia</asp:ListItem>
          <asp:ListItem>Turkey</asp:ListItem>
          <asp:ListItem>Turkmenistan</asp:ListItem>
          <asp:ListItem>Turks And Caicos Islands</asp:ListItem>
          <asp:ListItem>Tuvalu</asp:ListItem>
          <asp:ListItem>Uganda</asp:ListItem>
          <asp:ListItem>Ukraine</asp:ListItem>
          <asp:ListItem>United Arab Emirates</asp:ListItem>
          <asp:ListItem>United Kingdom</asp:ListItem>
          <asp:ListItem>United States</asp:ListItem>
          <asp:ListItem>United States Pacific Islands</asp:ListItem>
          <asp:ListItem>Uruguay</asp:ListItem>
          
          <asp:ListItem>Uzbekistan</asp:ListItem>
          <asp:ListItem>Vanuatu</asp:ListItem>
          <asp:ListItem>Vatican City State (Holy See)</asp:ListItem>
          <asp:ListItem>Venezuela</asp:ListItem>
          <asp:ListItem>Vietnam</asp:ListItem>
          <asp:ListItem>Virgin Islands (British)</asp:ListItem>
          <asp:ListItem>Virgin Islands (US)</asp:ListItem>
          <asp:ListItem>Wallis And Futuna Islands</asp:ListItem>
          <asp:ListItem>Western Sahara</asp:ListItem>
          <asp:ListItem>Yemen</asp:ListItem>
          <asp:ListItem>Yugoslavia</asp:ListItem>
          <asp:ListItem>Zambia</asp:ListItem>
          <asp:ListItem>Zimbabw</asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                  <tr>
                    <td align="right" >Land&nbsp;&nbsp; Line&nbsp;</td>
                    
                    <td> <asp:TextBox ID="land_std" runat="server" AutoCompleteType="Disabled" 
              Width="40px"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="230px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Mobile&nbsp;</td>
                   
                    <td><asp:TextBox ID="mob_std" runat="server" AutoCompleteType="Disabled" 
              Width="40px"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;    <asp:TextBox ID="TextBox10" runat="server" Width="230px"></asp:TextBox></td>
                  </tr>
                  <tr bgcolor="#CCCCCC">
                    <td colspan="3" ><strong>Academic \ Professional Qualification&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" >Academic Qualification</td>
                    
                    <td>
                          <asp:ListBox ID="ListBox3" runat="server" 
                              SelectionMode="Multiple" Width="290px"></asp:ListBox>
                    </td>
                  </tr>
                  <tr>
                    <td align="right" >if Other&nbsp;&nbsp;</td>
                  
                    <td><asp:TextBox ID="TextBox12" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Professional Qualification&nbsp;&nbsp;</td>
                    
                    <td>
         
                          <asp:ListBox ID="ListBox4" runat="server" SelectionMode="Multiple" 
                              Width="290px"></asp:ListBox>
         
                    </td>
                  </tr>
                  <tr>
                    <td align="right" >if Other</td>
                    
                    <td><asp:TextBox ID="TextBox13" runat="server" Width="290px"
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" > Institute</td>
                    
                    <td><asp:TextBox ID="TextBox11" runat="server" Width="290px"
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Year of Graduation</td>
                   
                    <td><asp:DropDownList ID="DropDownList7" runat="server" Width="290px"
            >
                      <asp:ListItem Value="1969"></asp:ListItem>
                      <asp:ListItem Value="1970"></asp:ListItem>
                      <asp:ListItem Value="1971"></asp:ListItem>
                      <asp:ListItem Value="1972"></asp:ListItem>
                      <asp:ListItem Value="1973"></asp:ListItem>
                      <asp:ListItem Value="1974"></asp:ListItem>
                      <asp:ListItem Value="1975"></asp:ListItem>
                      <asp:ListItem Value="1976"></asp:ListItem>
                      <asp:ListItem Value="1977"></asp:ListItem>
                      <asp:ListItem Value="1978"></asp:ListItem>
                      <asp:ListItem Value="1979"></asp:ListItem>
                      <asp:ListItem Value="1980"></asp:ListItem>
                      <asp:ListItem Value="1981"></asp:ListItem>
                      <asp:ListItem Value="1982"></asp:ListItem>
                      <asp:ListItem Value="1983"></asp:ListItem>
                      <asp:ListItem Value="1984"></asp:ListItem>
                      <asp:ListItem Value="1985"></asp:ListItem>
                      <asp:ListItem Value="1986"></asp:ListItem>
                      <asp:ListItem Value="1987"></asp:ListItem>
                      <asp:ListItem Value="1988"></asp:ListItem>
                      <asp:ListItem Value="1989"></asp:ListItem>
                      <asp:ListItem Value="1990"></asp:ListItem>
                      <asp:ListItem Value="1991"></asp:ListItem>
                      <asp:ListItem Value="1992"></asp:ListItem>
                      <asp:ListItem Value="1993"></asp:ListItem>
                      <asp:ListItem Value="1994"></asp:ListItem>
                      <asp:ListItem Value="1995"></asp:ListItem>
                      <asp:ListItem Value="1996"></asp:ListItem>
                      <asp:ListItem Value="1996"></asp:ListItem>
                      <asp:ListItem Value="1997"></asp:ListItem>
                      <asp:ListItem Value="1998"></asp:ListItem>
                      <asp:ListItem Value="1999"></asp:ListItem>
                      <asp:ListItem Value="2000"></asp:ListItem>
                      <asp:ListItem Value="2001"></asp:ListItem>
                      <asp:ListItem Value="2002"></asp:ListItem>
                      <asp:ListItem Value="2003"></asp:ListItem>
                      <asp:ListItem Value="2004"></asp:ListItem>
                      <asp:ListItem Value="2005"></asp:ListItem>
                      <asp:ListItem Value="2006"></asp:ListItem>
                      <asp:ListItem Value="2007"></asp:ListItem>
                      <asp:ListItem Value="2008"></asp:ListItem>
                      <asp:ListItem Value="2009"></asp:ListItem>
                      <asp:ListItem Value="2010"></asp:ListItem>
                      <asp:ListItem Value="2011"></asp:ListItem>
                      <asp:ListItem Value="2012"></asp:ListItem>
                      <asp:ListItem Value="2013"></asp:ListItem>
                      <asp:ListItem Value="2014"></asp:ListItem>
                      <asp:ListItem Value="2015"></asp:ListItem>
                    </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" >Resume Summary</td>
                   
                    <td><asp:TextBox ID="TextBox51" runat="server" Width="290px"
             
            TextMode="MultiLine"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Resume Title</td>
                   
                    <td><asp:TextBox ID="TextBox14" runat="server" Width="290px"
            
          ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Key&nbsp; Skills</td>
                   
                    <td><asp:TextBox ID="TextBox15" runat="server" Width="290px" Height="80px" TextMode="MultiLine" 
            
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Experience</td>
                    
                    <td><asp:TextBox ID="TextBox16" runat="server" Width="290px"
            
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Industry</td>
                    
                    <td><asp:ListBox ID="ListBox1" runat="server" datasourceid="AccessDataSource3" Width="290px"
        DataTextField="ind_name" DataValueField="ind_name" 
       > </asp:ListBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Functional&nbsp;&nbsp; Area</td>
                  
                    <td><asp:UpdatePanel ID="UpdatePanel2" runat="server">
                      <ContentTemplate>
                        <asp:DropDownList ID="DropDownList8" runat="server" 
                datasourceid="AccessDataSource8" DataTextField="fun_name" 
            DataValueField="fun_name" AutoPostBack="True" 
                OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged" Width="290px"> </asp:DropDownList>
                      </ContentTemplate>
                    </asp:UpdatePanel></td>
                  </tr>
                  <tr>
                    <td align="right" >If&nbsp;&nbsp; &quot;Other&quot;</td>
                    
                    <td><asp:TextBox ID="TextBox42" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Sub Functional Area</td>
                    
                    <td><asp:UpdatePanel ID="UpdatePanel3" runat="server">
                      <ContentTemplate>
                        <asp:DropDownList ID="DropDownList13" runat="server" Width="290px"></asp:DropDownList>
                      </ContentTemplate>
                    </asp:UpdatePanel></td>
                  </tr>
                  <tr>
                    <td align="right" >Current&nbsp; Employers</td>
                    
                    <td><asp:TextBox ID="TextBox17" runat="server" Width="290px"
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Periord From</td>
                    
                    <td><asp:TextBox ID="TextBox40" runat="server" Width="290px"
            
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" > To</td>
                    
                    <td><asp:TextBox ID="TextBox41" runat="server" Width="290px"
          ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Current&nbsp; Designation </td>
                   
                    <td><asp:TextBox ID="TextBox18" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Job&nbsp; Responsibility </td>
                    
                    <td><asp:TextBox ID="TextBox19" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Previous&nbsp; Employers 1</td>
                   
                    <td><asp:TextBox ID="TextBox38" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Periord Form&nbsp;</td>
                   
                    <td><asp:TextBox ID="TextBox37" runat="server" 
          
            Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >To</td>
                    
                    <td><asp:TextBox ID="TextBox39" runat="server" Width="290px" 
          ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Last Desigmation&nbsp; at Previous Company 1.&nbsp;</td>
                    
                    <td><asp:TextBox ID="TextBox21" runat="server" Width="290px" 
       ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Job Responsibility</td>
                   
                    <td><asp:TextBox ID="TextBox43" runat="server" Width="290px" 
         ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Previous Employers2&nbsp;</td>
                    
                    <td><asp:TextBox ID="TextBox36" runat="server" Width="290px" 
         ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Periord&nbsp; Form</td>
                   
                    <td><asp:TextBox ID="TextBox34" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >To </td>
                   
                    <td><asp:TextBox ID="TextBox35" runat="server" Width="290px" 
          ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Last&nbsp; Designation&nbsp; at&nbsp; Previous Company 2</td>
                    
                    <td><asp:TextBox ID="TextBox23" runat="server" Width="290px" 
     ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Job&nbsp; Responsibility </td>
                   
                    <td><asp:TextBox ID="TextBox44" runat="server" Width="290px" 
          ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Previous&nbsp; Employers 3&nbsp;</td>
                   
                    <td><asp:TextBox ID="TextBox24" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Periord&nbsp; Form&nbsp;&nbsp;</td>
                   
                    <td><asp:TextBox ID="TextBox32" runat="server" Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >To</td>
                    
                    <td><asp:TextBox ID="TextBox33" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Last&nbsp; Designation&nbsp; at&nbsp; Previous Company&nbsp; 3.</td>
                   
                    <td><asp:TextBox ID="TextBox25" 
            runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Job Responsibility</td>
                   
                    <td><asp:TextBox ID="TextBox26" runat="server" Width="290px"
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Current&nbsp; CTC </td>
                    
                    <td><asp:DropDownList ID="ddlcurrentctc" runat="server" Width="290px"
            > <asp:ListItem Value="0"></asp:ListItem>
          <asp:ListItem Value="1"></asp:ListItem>
          <asp:ListItem Value="2"></asp:ListItem>
          <asp:ListItem Value="3"></asp:ListItem>
          <asp:ListItem Value="4"></asp:ListItem>
          <asp:ListItem Value="5"></asp:ListItem>
          <asp:ListItem Value="6"></asp:ListItem>
          <asp:ListItem Value="7"></asp:ListItem>
          <asp:ListItem Value="8"></asp:ListItem>
          <asp:ListItem Value="9"></asp:ListItem>
          <asp:ListItem Value="10"></asp:ListItem>
          <asp:ListItem Value="11"></asp:ListItem>
          <asp:ListItem Value="12"></asp:ListItem>
          <asp:ListItem Value="13"></asp:ListItem>
          <asp:ListItem Value="14"></asp:ListItem>
          <asp:ListItem Value="15"></asp:ListItem>
          <asp:ListItem Value="16"></asp:ListItem>
          <asp:ListItem Value="17"></asp:ListItem>
          <asp:ListItem Value="18"></asp:ListItem>
          <asp:ListItem Value="19"></asp:ListItem>
          <asp:ListItem Value="20"></asp:ListItem>
          <asp:ListItem Value="21"></asp:ListItem>
          <asp:ListItem Value="22"></asp:ListItem>
          <asp:ListItem Value="23"></asp:ListItem>
          <asp:ListItem Value="24"></asp:ListItem>
          <asp:ListItem Value="25"></asp:ListItem>
          <asp:ListItem Value="26"></asp:ListItem>
          <asp:ListItem Value="27"></asp:ListItem>
          <asp:ListItem Value="28"></asp:ListItem>
          <asp:ListItem Value="29"></asp:ListItem>
          <asp:ListItem Value="30"></asp:ListItem>
          <asp:ListItem Value="31"></asp:ListItem>
          <asp:ListItem Value="32"></asp:ListItem>
          <asp:ListItem Value="33"></asp:ListItem>
          <asp:ListItem Value="34"></asp:ListItem>
          <asp:ListItem Value="35"></asp:ListItem>
          <asp:ListItem Value="36"></asp:ListItem>
          <asp:ListItem Value="37"></asp:ListItem>
          <asp:ListItem Value="38"></asp:ListItem>
          <asp:ListItem Value="39"></asp:ListItem>
          <asp:ListItem Value="40"></asp:ListItem>
          <asp:ListItem Value="41"></asp:ListItem>
          <asp:ListItem Value="42"></asp:ListItem>
          <asp:ListItem Value="43"></asp:ListItem>
          <asp:ListItem Value="44"></asp:ListItem>
          <asp:ListItem Value="45"></asp:ListItem>
          <asp:ListItem Value="46"></asp:ListItem>
          <asp:ListItem Value="47"></asp:ListItem>
          <asp:ListItem Value="48"></asp:ListItem>
          <asp:ListItem Value="49"></asp:ListItem>
          <asp:ListItem Value="50"></asp:ListItem>
             </asp:DropDownList> 
                    </td>
                  </tr>
                  <tr>
                    <td align="right" >Summery</td>
           
                    <td width="55%"><asp:TextBox ID="TextBox28" runat="server" Width="290px"
           
            TextMode="MultiLine"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Language&nbsp; Known</td>
                   
                    <td><asp:TextBox ID="TextBox29" runat="server" 
            
            ></asp:TextBox>
                      <asp:CheckBox ID="CheckBox1" runat="server" 
           
            Text="Read" />                    
                      <asp:CheckBox ID="CheckBox2" runat="server" 
      
        Text="Write" />                    
                      <asp:CheckBox ID="CheckBox3" runat="server" 
           
            Text="Speak" />                    
                      <br />
                      <asp:TextBox ID="TextBox30" runat="server" 
           ></asp:TextBox>
                      <asp:CheckBox ID="CheckBox4" runat="server" 
          
            Text="Read" />                    
                      <asp:CheckBox ID="CheckBox5" runat="server" 
          
            Text="Write" />                    
                      <asp:CheckBox ID="CheckBox6" runat="server" 
          
            Text="Speak" />                    
                      <br />
                      <asp:TextBox ID="TextBox31" runat="server" 
            
         ></asp:TextBox>
                      <asp:CheckBox ID="CheckBox7" runat="server" 
          
            Text="Read" />                    
                      <asp:CheckBox ID="CheckBox8" runat="server" 
          
            Text="Write" />                    
                      <asp:CheckBox ID="CheckBox9" runat="server" 
          
            Text="Speak" /></td>
                  </tr>
                  <tr>
                    <td align="right" > Job&nbsp; Type</td>
                  
                    <td><asp:DropDownList ID="DropDownList9" runat="server" Width="290px"
        
      >
                      <asp:ListItem Value="Temporary/Contracttual"></asp:ListItem>
                      <asp:ListItem Value="Permanent"></asp:ListItem>
                      <asp:ListItem Value="Either"></asp:ListItem>
                      <asp:ListItem Value="Select"></asp:ListItem>
                    </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" >Employment&nbsp; Status </td>
                   
                    <td><asp:DropDownList ID="DropDownList10" runat="server" Width="290px"
            
          >
                      <asp:ListItem Value="Select"></asp:ListItem>
                      <asp:ListItem Value="Full Time"></asp:ListItem>
                      <asp:ListItem Value="Part Time"></asp:ListItem>
                    </asp:DropDownList></td>
                  </tr>
                  <tr>
                    <td align="right" ><p></p>
                    
                      Preffered&nbsp; Location </td>
                    
                    <td><asp:ListBox ID="lstprefer" runat="server" Height="78px" 
                SelectionMode="Multiple" Width="290px" 
            > </asp:ListBox>
                    </td>
                  </tr>
                  <tr bgcolor="#CCCCCC">
                    <td colspan="3" ><strong>Reference</strong></td>
                  </tr>
                  <tr>
                    <td align="right" >Name</td>
                    
                    <td><asp:TextBox ID="TextBox45" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Company</td>
                    
                    <td><asp:TextBox ID="TextBox48" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Designation</td>
                   
                    <td><asp:TextBox ID="TextBox49" runat="server" 
            
            Width="290px"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" > Relationship&nbsp; with&nbsp; referrer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox46" runat="server" Width="290px" 
           ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" >Phone&nbsp;</td>
                   
                    <td><asp:TextBox ID="TextBox47" runat="server" Width="290px" 
         ></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right" > Email</td>
                   
                    <td><asp:TextBox ID="TextBox50" runat="server" Width="290px" 
            ></asp:TextBox></td>
                  </tr>

                  <div runat="server" visible="false">
                   <tr bgcolor="#CCCCCC">
                    <td colspan="3" ><strong>observation</strong></td>
                  </tr>
                  <tr>
                    <td align="right" >Coummunication</td>
                    
                    <td>  
                    <asp:DropDownList ID="communication" runat="server" Width="290px">
                       <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="ex">ex</asp:ListItem>
                    <asp:ListItem Value="a+">a+</asp:ListItem>
                    <asp:ListItem Value="a">a</asp:ListItem>
                     <asp:ListItem  Value="b+">b+</asp:ListItem>
                    <asp:ListItem  Value="b">b</asp:ListItem>
                     <asp:ListItem  Value="c+">c+</asp:ListItem>
                    <asp:ListItem  Value="c">c</asp:ListItem>
                    <asp:ListItem  Value="d">d</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                  </tr>
                  
                   <tr>
                    <td align="right" >Presentation</td>
                    
                    <td>  
                    <asp:DropDownList ID="presentation" runat="server" Width="290px">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="ex">ex</asp:ListItem>
                    <asp:ListItem Value="a+">a+</asp:ListItem>
                    <asp:ListItem Value="a">a</asp:ListItem>
                     <asp:ListItem  Value="b+">b+</asp:ListItem>
                    <asp:ListItem  Value="b">b</asp:ListItem>
                     <asp:ListItem  Value="c+">c+</asp:ListItem>
                    <asp:ListItem  Value="c">c</asp:ListItem>
                    <asp:ListItem  Value="d">d</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                  </tr>
                   <tr>
                    <td align="right" >Relevent Experience</td>
                   
                    <td>  
                    <asp:DropDownList ID="relivent_exp" runat="server" Width="290px">
                       <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="ex">ex</asp:ListItem>
                    <asp:ListItem Value="a+">a+</asp:ListItem>
                    <asp:ListItem Value="a">a</asp:ListItem>
                     <asp:ListItem  Value="b+">b+</asp:ListItem>
                    <asp:ListItem  Value="b">b</asp:ListItem>
                     <asp:ListItem  Value="c+">c+</asp:ListItem>
                    <asp:ListItem  Value="c">c</asp:ListItem>
                    <asp:ListItem  Value="d">d</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                  </tr>
                  
                  <tr>
                    <td align="right" >Remarks</td>
                    
                    <td>  
                  <asp:TextBox ID="remarks" TextMode="MultiLine" runat="server" Width="290px"></asp:TextBox>
                    </td>
                  </tr>
                   <tr>
                    <td align="right" >Resume posted by</td>
                   
                    <td>  
                    <asp:DropDownList ID="rsposted_by" runat="server" Width="290px">
                  
                    </asp:DropDownList>
                    </td>
                  </tr>
                   <tr>
                    <td align="right" >Source</td>
                   
                    <td>  
                    <asp:DropDownList ID="source" runat="server" Width="290px">
                      <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="Reference">Reference</asp:ListItem>
                    <asp:ListItem Value="Forced">Forced</asp:ListItem>
                    <asp:ListItem Value="naukri.com">naukri.com</asp:ListItem>
                    <asp:ListItem Value="headhunting">headhunting</asp:ListItem>
                     <asp:ListItem Value="other portal">other portal</asp:ListItem>
                    <asp:ListItem Value="Candidate Posting">Candidate Posting</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                  </tr>
                  

                  </div>





                </table></td>
              </tr>
              <tr>
                <td height="50" align="center" bgcolor="#f5f5f5"><asp:ImageButton ID="SEARCH" runat="server" ImageUrl="admin/images/submit.jpg"  Width="71px" Height="34px" OnClick="Submit_Click" /></td>
              </tr>
      </table>
         
                  <asp:SqlDataSource ID="AccessDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [Professional_Qualification] FROM [Professional_Qua_master]">
                  </asp:SqlDataSource>  
        <asp:SqlDataSource ID="AccessDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [A_Qualification] FROM [Academic_Qualification_master]">
        </asp:SqlDataSource>    
        <asp:SqlDataSource ID="AccessDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [ind_name] FROM [industry_master]">
        </asp:SqlDataSource>       
                   <asp:SqlDataSource ID="AccessDataSource8" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT [fun_name] FROM [fun]">
        </asp:SqlDataSource>  
                   
                   <asp:SqlDataSource ID="AccessDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>"
            SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource>
    </div>
  </div>
</div>
</div>
</div>
</asp:Content>

