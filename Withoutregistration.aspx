<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Withoutregistration.aspx.cs" Inherits="Withoutregistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

    <style type="text/css">       
         body { font-family:Arial; font-size:13px;}        
         
         .style1        
         {            width: 100%;       
                      
                       }       
                       
                        .style2       
                        
                         {            height: 26px;        }  
                         
                               .style3    
                                   {            color: #009933;        }  
                                   
                                     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="style1">            <tr>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Name <span class="style3">(*)</span></td>                <td>                    <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Email Id <span class="style3">(*)</span></td>                <td>                    <asp:TextBox ID="TextBox2" runat="server" required="required" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:TextBox>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Mobile <span class="style3">(*)</span></td>                <td>                    <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Current Location <span class="style3">(*)</span></td>                <td>                    <asp:TextBox ID="TextBox4" runat="server" required="required"></asp:TextBox>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Total Experience <span class="style3">(*)</span></td>                <td>                    <asp:DropDownList ID="DropDownList2" runat="server">                        <asp:ListItem>Select</asp:ListItem>                        <asp:ListItem>Fresher</asp:ListItem>                        <asp:ListItem>0-1</asp:ListItem>                        <asp:ListItem>1-2</asp:ListItem>                        <asp:ListItem>2-3</asp:ListItem>                        <asp:ListItem>3-4</asp:ListItem>                        <asp:ListItem>4-5</asp:ListItem>                        <asp:ListItem>5-6</asp:ListItem>                        <asp:ListItem>6-7</asp:ListItem>                        <asp:ListItem>7-8</asp:ListItem>                        <asp:ListItem>8-9</asp:ListItem>                        <asp:ListItem>9-10</asp:ListItem>                        <asp:ListItem>10-11</asp:ListItem>                        <asp:ListItem>11-12</asp:ListItem>                        <asp:ListItem>12+</asp:ListItem>                    </asp:DropDownList>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Attach Resume</td>                <td>                    <asp:FileUpload ID="FileUpload1" runat="server" />                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Industry <span class="style3">(*)</span></td>                <td>                    <asp:DropDownList ID="DropDownList1" runat="server">                    </asp:DropDownList>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Functional Area <span class="style3">(*)</span></td>                <td>                    <asp:DropDownList ID="DropDownList3" runat="server">                    </asp:DropDownList>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>                    Keyskills,Designation</td>                <td>                    <asp:TextBox ID="TextBox5" runat="server" Height="80px" TextMode="MultiLine"                         Width="217px"></asp:TextBox>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>            <tr>                <td class="style2">                </td>                <td class="style2">                </td>                <td class="style2">                    
<asp:CheckBox ID="CheckBox1" runat="server"                         
    Text=" I agree terms  and conditions" />                </td>                <td class="style2">                </td>                <td class="style2">                </td>            </tr>            <tr>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>                <td>                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit"                         Width="80px" />                    <asp:Label ID="Label1" runat="server"></asp:Label>                </td>                <td>&nbsp;                    </td>                <td>&nbsp;                    </td>            </tr>        </table>
    </div>
    </form>
</body>
</html>
