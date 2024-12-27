<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="feedback.aspx.cs" Inherits="_feedback" MasterPageFile="~/Front_Master.master"%>

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

<!-- banner part -->
    <section class="inner-page-feedback">
        <div class="page-title">
            <div class="container">
                <h1>ABOUT US</h1>
                <nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>About Us</a>
                </nav>
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
                        <div class="col-md-12 text-justify">
                        
                        We thank you for visiting our corporate site. <br />
                              <br>
                           You are encouraged to use the online Feedback form below to send us your valuable comments and suggesstions as well as any queries about our services that you may have. You may also email your enquiry / feedback / suggestions. All feedback received are fully responded in a timely manner. Your patience in getting our reply will be most appreciated. We look forward to your feedback today.
                           
                         
                        <table width="100%" border="1" cellspacing="4" cellpadding="4" align="center" bordercolorlight="#FFFFFF" bordercolordark="#CCCCCC">
                          <tr>
                            <td>
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr bgcolor="#4A4AFF">
                                  <td height="18" bgcolor="#CCCCCC">
                                    <div align="right"><b><font color="#FFFFFF">Fields marked with asterisk (<font color="#ff0000">*<font color="#FFFFFF">) are mandatory </font></font></font></b></div></td>
                                </tr>
                                <tr>
                                  <td>
                                    <div align="center"><br />
                    Please Describe Your Comments:<font 
            color="#ff0000">*<br />
                      <asp:TextBox ID="TextBox1" size="40" TextMode="MultiLine" runat="server" Height="70px" 
                                            Width="260px"></asp:TextBox> 
                    <br />
                </font></div></td>
                                </tr>
                                <tr bgcolor="#4A4AFF">
                                  <td height="18" bgcolor="#CCCCCC"><font style='FONT:8pt/15pt Verdana;' color="#FFFFFF"><strong class="home_tx">YOUR CONTACT INFORMATION:</strong></font></td>
                                </tr>
                              </table>
                              <table width="100%" border="0" cellspacing="0" cellpadding="4">
                                <tr>
                                  <td width="37%" align="left">Organization/ Company<b>:</b><font 
            color="#ff0000">&nbsp;&nbsp;</font></td>
                                  <td width="63%" align="left">
                                   
            <asp:TextBox ID="S_organization" size="30" runat="server"></asp:TextBox>
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Your Name<b>:</b><font 
            color="#ff0000">*&nbsp;&nbsp;</font></td>
                                  <td width="63%" align="left">
                                   <asp:TextBox ID="name" size="30" runat="server"></asp:TextBox> 
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Street Address<b>:</b></td>
                                  <td width="63%" align="left">
                                    
                                  <asp:TextBox ID="S_streetaddress" size="30" runat="server"></asp:TextBox> 
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">City/State<b>:</b>&nbsp;&nbsp;</td>
                                  <td width="63%" align="left">
                                   
                                     <asp:TextBox ID="S_city" size="30" runat="server"></asp:TextBox> 
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Zip/Postal Code<b>:</b>&nbsp;</td>
                                  <td width="63%" align="left">
                                    
                                    <asp:TextBox ID="S_pin" size="30" runat="server"></asp:TextBox> 
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Country<b>:</b><font 
            color="#ff0000">*&nbsp;</font></td>
                                  <td width="63%" align="left">
                                    <asp:DropDownList ID="country" runat="server" Width="233px">
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
          <asp:ListItem>Zimbabw</asp:ListItem></asp:DropDownList>
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Your Email<b>:</b><font 
            color="#ff0000">*</font></td>
                                  <td width="63%" align="left">
                                    <asp:TextBox ID="email" size="30"  runat="server" 
            
            
            
            ></asp:TextBox>
          
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="email" ErrorMessage="Wrong" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                                  </td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Phone<b>:</b><font 
            color="#ff0000">*
                                  </font></td>
                                  <td width="63%">
                                    <div align="left">
                                       <asp:TextBox ID="phone" size="30"  runat="server"  onkeyup="this.value = this.value.replace(/\D/g, '')"
            
            
            
            ></asp:TextBox>
                                  </div></td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">Fax<b>:</b></td>
                                  <td width="63%">
                                    <div align="left">
                                     <asp:TextBox ID="fax" size="30"  runat="server" 
            
            
            
            ></asp:TextBox>
                                  </div></td>
                                </tr>
                                <tr>
                                  <td width="37%" align="left">How did you find us?:</td>
                                  <td width="63%" align="left">
                                    <asp:DropDownList ID="search" runat="server" Width="233px">
                    <asp:ListItem>Select</asp:ListItem>
          <asp:ListItem>Search Engine</asp:ListItem>
          <asp:ListItem>Word of mouth</asp:ListItem>
          <asp:ListItem>Newsgroup</asp:ListItem>
          <asp:ListItem>Friend</asp:ListItem>
          <asp:ListItem>Link from another page</asp:ListItem>
          <asp:ListItem>Accidentally Stumbled on!</asp:ListItem>
          <asp:ListItem>Anguilla</asp:ListItem></asp:DropDownList></td>
                                  
                                </tr>
                              </table>
                              <br />
                              <table cellspacing="0" cellpadding="0" width="100%" border="0" align="center">
                                <tbody>
                                  <tr>
                                    <td valign="top" colspan="2" height="2">
                                      <center>
                                      <asp:Button ID="send" runat="server" Text="Submit Query" onclick="send_Click" />
                                       
                                        <asp:Button ID="reset" runat="server" Text="Reset" onclick="reset_Click" 
                                              Width="82px"  />
                                       
                                    </center></td>
                                  </tr>
                                </tbody>
                            </table>
 
 </td>
                                  </tr>
                               
                            </table> 
                        
                        
                        
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>




</asp:Content>
