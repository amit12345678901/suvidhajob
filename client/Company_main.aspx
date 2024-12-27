<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/cvsearch_master.master" CodeFile="Company_main.aspx.cs" Inherits="Company_main" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 
          <table width="95%"  border="0" align="center">
          <tr>
            <td><div align="center" class="Heading_txt">
              <div align="center">Welcome, Your Current Accout Balance is:- <% =Session["cv_num"] %>  </div>
            </div></td>
          </tr>
        </table>
        
</asp:Content>
