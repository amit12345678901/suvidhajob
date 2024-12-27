<%@ Page Language="C#" MasterPageFile="~/MasterPage_Back.master" AutoEventWireup="true" CodeFile="User_Modify.aspx.cs" Inherits="admin_User_Modify" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Edit Customer</h2> 
<table width="95%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
           <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"> <u>Your Personal Details</u></td>
		
      </tr>
            <tr>
              <td width="42%" class="home_tx">Gender<font color="red">*</font></td>
              <td width="58%">
               <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="ab" /> &nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="ab" /> 
              </td>
            </tr>
           
            <tr>
              <td width="42%" class="home_tx"> First Name:<font color="red">*</font></td>
              <td width="58%">
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
              </td>
            </tr>
           
              <tr>
              <td width="42%" class="home_tx"> Last Name<font color="red">*</font></td>
              <td width="58%">
                <asp:TextBox ID="lname" runat="server"></asp:TextBox>
              </td>
            </tr>
            
             <tr>
              <td width="42%" class="home_tx"> Date of Birth</td>
              <td width="58%">
                <asp:TextBox ID="dob" runat="server"></asp:TextBox>
              </td>
            </tr>
            <tr>
              <td width="42%" class="home_tx">E-Mail Address (Log-In Id)<font color="red">*</font></td>
              <td width="58%">
                <asp:Label ID="email" runat="server"></asp:Label>(Not Edit)
              </td>
            </tr>
             
            <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"> <u>Company Details</u></td>
		
      </tr>
              <tr>
              <td width="42%" class="home_tx">Company Name</td>
              <td width="58%">
                <asp:TextBox ID="comp" runat="server"></asp:TextBox>
              </td>
            </tr>
           
             <tr>
              <td width="42%" class="home_tx">Customer Type</td>
              <td width="58%">
                <asp:DropDownList ID="ctype" runat="server">
               
                <asp:ListItem Value="r">Retailer</asp:ListItem>
                <asp:ListItem Value="w">Whole Seller</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
              </td>
            </tr>
            
             <tr>
              <td width="42%" class="home_tx">Discount Charge&nbsp;&nbsp;(%)</td>
              <td width="58%">
                <asp:TextBox ID="dis_chg" runat="server"></asp:TextBox>
              </td>
            </tr>
             <tr>
              <td width="42%" class="home_tx">Vat Charge&nbsp;&nbsp;(%)</td>
              <td width="58%">
                <asp:TextBox ID="vat_chg" runat="server"></asp:TextBox>
              </td>
            </tr>
            
          
             <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"> <u>Your Address</u></td>
		
      </tr>
              <tr>
              <td width="42%" class="home_tx">Street Address</td>
              <td width="58%">
                <asp:TextBox ID="srtadd" runat="server"></asp:TextBox>
              </td>
            </tr>
            
            <tr>
              <td width="42%" class="home_tx"> Suburb</td>
              <td width="58%">
                <asp:TextBox ID="suburb" runat="server"></asp:TextBox>
              </td>
            </tr>
           
              <tr>
              <td width="42%" class="home_tx"> Post Code</td>
              <td width="58%">
                <asp:TextBox ID="post_code" runat="server"></asp:TextBox>
              </td>
            </tr>
            
            <tr>
              <td width="42%" class="home_tx"> City</td>
              <td width="58%">
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
              </td>
            </tr>
           
              <tr>
              <td width="42%" class="home_tx"> State/Province</td>
              <td width="58%">
                <asp:TextBox ID="state" runat="server"></asp:TextBox>
              </td>
            </tr>
             <tr>
                  <td width="50%" class="home_tx">Country<font color="red">*</font></td>
                  <td width="50%">                                    
                      <asp:DropDownList ID="country"  runat="server" Width="233px">
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
                
                <tr bgcolor="#EAEAEA">
        <td height="25" colspan="2" class="home_tx"> <u>Your Contact Information</u></td>
		
      </tr>
              <tr>
              <td width="42%" class="home_tx">Telephone Number<font color="red">*</font></td>
              <td width="58%">
                <asp:TextBox ID="ph_num" runat="server"></asp:TextBox>
              </td>
            </tr>
            
            <tr>
              <td width="42%" class="home_tx">Fax Number</td>
              <td width="58%">
                <asp:TextBox ID="fax_num" runat="server"></asp:TextBox>
              </td>
            </tr>
             <tr>
              <td width="42%" class="home_tx"> Authorization</td>
              <td width="58%">
                <asp:CheckBox ID="auth" runat="server" />
              </td>
            </tr>
            
           <asp:Panel ID="pn5" runat="server" Visible="false">
              <tr>
              <td width="42%" class="home_tx"> Newsletter</td>
              <td width="58%">
                <asp:CheckBox ID="news_letter" runat="server" />
              </td>
            </tr>
                 </asp:Panel>  
                 
   <asp:Panel ID="Panel1" runat="server" Visible="false">
              <tr>
              <td class="home_tx"> Please verify this text <font color="red">*</font></td>
              <td >
                <asp:Image ID="Image2" runat="server" 
        
             />          
&nbsp; &nbsp; &nbsp; <br />
      <asp:TextBox ID="captua" runat="server"></asp:TextBox>
      <asp:Label ID="lb3" runat="server" ForeColor="Red" Text=""></asp:Label>
              </td>
            </tr>
            </asp:Panel>
            <tr>
              <td colspan="2" ><div align="center">
                  <asp:Button ID="add" runat="server" 
           
            Text="Submit" onclick="add_Click" Width="64px" />          
                  <br />
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              </div></td>
            </tr>
            </table>

</asp:Content>

