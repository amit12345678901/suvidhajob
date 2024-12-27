<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifie_Candidate.aspx.cs" MasterPageFile="~/MasterPage_Back.master" Inherits="Modifie_Candidate" %>


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
  
            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="26" valign="top" class="small_path">Home &gt; <a href="Default.aspx" class="small_path">Administrator</a> &gt; Modify Candidate</td>
            </tr>
            <tr>
              <td>&nbsp;&nbsp;&nbsp;<img src="images/txt_modify_candidate.jpg" width="358" height="27" /><asp:ScriptManager 
                      ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
                </td>
            </tr>
          </table>
            <table width="95%"  border="0" align="center">
              <tr>
                <td><div align="justify">  
    <table width="90%"  border="1" align="center" cellpadding="4" cellspacing="2" bordercolor="#CCCCCC">
      <tr>
        <td width="38%" class="home_tx">Code </td>
        <td width="62%">
            <asp:TextBox ID="TextBox1" runat="server" 
            
            
            ReadOnly="True" Width="296px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">User Name </td>
        <td><asp:TextBox ID="TextBox2" runat="server" 
            
            
            ReadOnly="True" Width="292px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Password </td>
        <td><asp:TextBox ID="TextBox5" runat="server" 
            
            
            ReadOnly="True" Width="292px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Name *</td>
        <td><asp:TextBox ID="TextBox3" runat="server" Width="296px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Sex </td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" 
            
            >
          <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Date of Birth </td>
        
        <td>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            
            
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
        <asp:DropDownList ID="DropDownList3" runat="server" 
            
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
          
          <asp:DropDownList ID="DropDownList4" runat="server" 
            
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
        <td class="home_tx">Email *</td>
        <td><asp:TextBox ID="TextBox4" runat="server" Width="244px" 
            ></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox50" ErrorMessage="not a valid email id." 
            
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
      </tr>
      <tr>
        <td class="home_tx">Marital&nbsp; Status</td>
        <td><asp:DropDownList ID="DropDownList12" runat="server" 
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
        <td class="home_tx">Address *</td>
        <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="324px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; Location&nbsp; *</td>
        <td><asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="320px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Country&nbsp; *</td>
        <td><asp:TextBox ID="TextBox8" runat="server" Width="307px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Land&nbsp;&nbsp; Line&nbsp;</td>
        <td><asp:TextBox ID="TextBox9" runat="server" Width="306px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Mobile&nbsp;</td>
        <td><asp:TextBox ID="TextBox10" runat="server" Width="303px" 
           ></asp:TextBox></td>
      </tr>
      <tr bgcolor="#CCCCCC">
        <td colspan="2" class="home_tx"><strong>Academic \ Professional Qualification&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
      <tr>
        <td class="home_tx">Academic Qualification</td>
        <td><asp:DropDownList 
            ID="DropDownList5" runat="server" datasourceid="AccessDataSource1" 
            DataTextField="A_Qualification" DataValueField="A_Qualification" 
            > </asp:DropDownList>          </td>
      </tr>
      <tr>
        <td class="home_tx">if Other&nbsp;&nbsp;</td>
        <td><asp:TextBox ID="TextBox12" runat="server" Width="194px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Professional Qualification&nbsp;&nbsp;</td>
        <td><asp:DropDownList 
            ID="DropDownList6" runat="server" datasourceid="AccessDataSource2" 
            DataTextField="Professional_Qualification" DataValueField="Professional_Qualification" 
            > </asp:DropDownList> </td>
        
      </tr>
      
      <tr>
        <td class="home_tx">if Other</td>
        <td><asp:TextBox ID="TextBox13" runat="server" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">
        
          Institute</td>
        <td><asp:TextBox ID="TextBox11" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Year of Graduation</td>
        <td><asp:DropDownList ID="DropDownList7" runat="server" 
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
        <td class="home_tx">Resume Summery</td>
        <td><asp:TextBox ID="TextBox51" runat="server" 
             
            TextMode="MultiLine"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Resume Title</td>
        <td><asp:TextBox ID="TextBox14" runat="server" 
            
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Key&nbsp; Skills</td>
        <td><asp:TextBox ID="TextBox15" runat="server" Width="367px" Height="85px" TextMode="MultiLine" 
            
            ></asp:TextBox></td>
      </tr>
     <tr>
        <td class="home_tx">Experience</td>
        <td><asp:TextBox ID="TextBox16" runat="server" 
            
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Industry</td>
        <td><asp:ListBox ID="ListBox1" runat="server" datasourceid="AccessDataSource3" 
        DataTextField="ind_name" DataValueField="ind_name" 
       > </asp:ListBox></td>
      </tr>
      <tr>
        <td class="home_tx">Functional&nbsp;&nbsp; Area</td>
        <td><asp:UpdatePanel ID="UpdatePanel2" runat="server">
                 <ContentTemplate>
         
             
        
            <asp:DropDownList ID="DropDownList8" runat="server" 
                datasourceid="AccessDataSource8" DataTextField="fun_name" 
            DataValueField="fun_name" AutoPostBack="True" 
                onselectedindexchanged="DropDownList8_SelectedIndexChanged" >
            </asp:DropDownList>
            </ContentTemplate>
             </asp:UpdatePanel></td>
      </tr>
      <tr>
        <td class="home_tx">If&nbsp;&nbsp; &quot;Other&quot;</td>
        <td><asp:TextBox ID="TextBox42" runat="server" Width="295px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Sub Functional Area</td>
        <td><asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="DropDownList13" runat="server" ></asp:DropDownList>
    </ContentTemplate>
             </asp:UpdatePanel></td>
        
      </tr>
      
      
      <tr>
        <td class="home_tx">Current&nbsp; Employers</td>
        <td><asp:TextBox ID="TextBox17" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Periord From</td>
        <td><asp:TextBox ID="TextBox40" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"> To</td>
        <td>          <asp:TextBox ID="TextBox41" runat="server" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; Designation </td>
        <td><asp:TextBox ID="TextBox18" runat="server" Width="358px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job&nbsp; Responsibility </td>
        <td><asp:TextBox ID="TextBox19" runat="server" Width="344px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous&nbsp; Employers 1</td>
        <td><asp:TextBox ID="TextBox38" runat="server" Width="333px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Periord Form&nbsp;</td>
        <td><asp:TextBox ID="TextBox37" runat="server" 
          
            Width="342px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">To</td>
        <td><asp:TextBox ID="TextBox39" runat="server" Width="326px" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last Desigmation&nbsp; at Previous Company 1.&nbsp;</td>
        <td><asp:TextBox ID="TextBox21" runat="server" Width="326px" 
       ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><asp:TextBox ID="TextBox43" runat="server" Width="336px" 
         ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous Employers2&nbsp;</td>
        <td><asp:TextBox ID="TextBox36" runat="server" Width="335px" 
         ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Periord&nbsp; Form</td>
        <td><asp:TextBox ID="TextBox34" runat="server" Width="330px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">To </td>
        <td><asp:TextBox ID="TextBox35" runat="server" Width="329px" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last&nbsp; Designation&nbsp; at&nbsp; Previous&nbsp; Company 2</td>
        <td><asp:TextBox ID="TextBox23" runat="server" Width="337px" 
     ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job&nbsp; Responsibility </td>
        <td><asp:TextBox ID="TextBox44" runat="server" Width="334px" 
          ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Previous&nbsp; Employers 3&nbsp;</td>
        <td><asp:TextBox ID="TextBox24" runat="server" Width="337px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Periord&nbsp; Form&nbsp;&nbsp;</td>
        <td><asp:TextBox ID="TextBox32" runat="server" Width="336px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">To</td>
        <td><asp:TextBox ID="TextBox33" runat="server" Width="334px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Last&nbsp; Designation&nbsp; at&nbsp; Previous Company&nbsp; 3.</td>
        <td><asp:TextBox ID="TextBox25" 
            runat="server" Width="341px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Job Responsibility</td>
        <td><asp:TextBox ID="TextBox26" runat="server" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Current&nbsp; CTC </td>
        <td><asp:TextBox ID="TextBox27" runat="server" 
            
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Summery</td>
        <td><asp:TextBox ID="TextBox28" runat="server" 
           
            TextMode="MultiLine"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Language&nbsp; Known</td>
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
          
            Text="Speak" />                    </td>
      </tr>
      <tr>
        <td class="home_tx"> Job&nbsp; Type</td>
        <td><asp:DropDownList ID="DropDownList9" runat="server" 
        
      >
          <asp:ListItem Value="Temporary/Contracttual"></asp:ListItem>
          <asp:ListItem Value="Permanent"></asp:ListItem>
          <asp:ListItem Value="Either"></asp:ListItem>
          <asp:ListItem Value="Select"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx">Employment&nbsp; Status </td>
        <td><asp:DropDownList ID="DropDownList10" runat="server" 
            
          >
          <asp:ListItem Value="Select"></asp:ListItem>
          <asp:ListItem Value="Full Time"></asp:ListItem>
          <asp:ListItem Value="Part Time"></asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td class="home_tx"><p></p>
          <asp:SqlDataSource ID="AccessDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mycon %>" 
            SelectCommand="SELECT [city_name] FROM [city_master]"> </asp:SqlDataSource> Preffered&nbsp; Location </td>
        <td><asp:DropDownList ID="DropDownList11" runat="server" 
            
           
            datasourceid="AccessDataSource4" DataTextField="city_name" 
            DataValueField="city_name"> </asp:DropDownList></td>
      </tr>
      <tr bgcolor="#CCCCCC">
        <td colspan="2" class="home_tx"><strong>Reference</strong></td>
        </tr>
      <tr>
        <td class="home_tx">Name</td>
        <td><asp:TextBox ID="TextBox45" runat="server" Width="321px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Company</td>
        <td><asp:TextBox ID="TextBox48" runat="server" Width="320px" 
            ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Designation</td>
        <td><asp:TextBox ID="TextBox49" runat="server" 
            
            Width="329px"></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"> Relationship&nbsp; with&nbsp; referrer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td><asp:TextBox ID="TextBox46" runat="server" Width="324px" 
           ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx">Phone&nbsp;</td>
        <td><asp:TextBox ID="TextBox47" runat="server" Width="309px" 
         ></asp:TextBox></td>
      </tr>
      <tr>
        <td class="home_tx"> Email</td>
        <td><asp:TextBox ID="TextBox50" runat="server" Width="314px" 
            ></asp:TextBox></td>
      </tr>
     
      <tr>
        <td colspan="2"><div align="center"><asp:Button ID="Submit" runat="server" onclick="Submit_Click" 
       
        Text="Submit" />
          </div></td>
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
                   
                 
                </div></td>
              </tr>
            </table>                   
                 </asp:Content>
