<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quick_Jobs_Search_Informetion.aspx.cs" MasterPageFile="~/Front_Master.master" Inherits="Quick_jobs_Search_Informetion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1730637-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1730637-1');
</script>

    <style>
        .newtab_ss {
            border: 0 none !important;
            text-align: center !important;
            width: 100% !important;
            min-height: 480px !important;
        }

            .newtab_ss table, th, td, tr {
                border: 1px solid #000 !important;
                text-align: center !important;
                border-collapse: collapse !important;
                padding: 5px !important;
            }

            .newtab_ss table {
                width: 100% !important;
            }

                .newtab_ss table input[type="submit"] {
                    padding: 5px !important;
                }

        .spacer {
            clear: both;
            font-size: 0px;
            line-height: 0px;
        }

        .wrpCB {
            border-bottom: 1px solid #DAD8D8;
            padding: 18px 0 12px 0;
            width: 672px;
            margin: 0 auto;
        }

        .jRes {
            position: relative;
        }

        a.l_j {
            border: 1px solid #eff0f1;
            padding: 5px 0;
            width: 100%;
            display: block;
        }

            a.l_j:hover {
                border-color: #ffcf7b;
            }

        .wrpCB strong {
            color: #287ab8;
            font-size: 15px;
            font-weight: normal;
            padding: 0 5px;
            display: block;
        }

        .wrpCB dfn {
            position: relative;
            margin: 2px 0;
            color: #000;
            padding: 5px;
        }

        .wrpCB dfn, .wrpCB i, .wrpCB em {
            font-style: normal;
            font-weight: normal;
            font-size: 13px;
            display: block;
        }

        .wrpCB strong span {
            color: #828181;
            font-size: 12px;
        }

        .wrpCB i {
            color: #04a414;
            padding: 0 5px;
        }

        .wrpCB em {
            color: #505050;
            padding: 5px 5px 0 5px;
        }

        .wrpCB .actRow {
            padding-top: 7px;
            height: 22px;
            line-height: 22px;
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- banner part -->
    <section class="inner-page-career">
        <div class="page-title">
            <div class="container">
                <h1>Quick Jobs Search Result</h1>
                <!--<nav class="bread-crumb">
                    <a href='Default.aspx'>Home</a>
                    <i class="fa fa-long-arrow-right"></i>
                    <a href='#'>Quick Jobs Search Result</a>
                </nav>-->
				<br><br><br><br>
            </div>
        </div>
    </section>
    <!-- /end banner part -->
    
    <!-- content part -->
    <section class="content-part">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                   <!----------------------------------content---------------------------------------->
    <div id="contentbg">
        <div class="contentblank">
            <div class="main-cont">
                
                <div class="abt-rht">
                   
                    <div align="center">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pv_id_txt" EmptyDataText="Sorry, No job opening now. we will update soon...." ForeColor="Black" BackColor="#E4E4E4" OnRowCommand="GridView1_RowCommand" GridLines="None" AllowPaging="True" PageSize="5" HeaderStyle-BackColor="#d1cece" PagerSettings-Visible="false" Width="666px">
                        <PagerSettings Visible="False"></PagerSettings>
                        <Columns>
                            <asp:ButtonField ButtonType="link" CommandName="detail" ControlStyle-Font-Underline="false" ControlStyle-Width="200px" DataTextField="in_txt" HeaderText="Industry" SortExpression="ProductName">
                                <ControlStyle Font-Underline="False"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:BoundField DataField="pv_id_txt" HeaderText="pv_id_txt" SortExpression="pv_id_txt" Visible="false">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="link" ControlStyle-Font-Underline="false" DataTextField="novacc_txt" HeaderText="Opening" CommandName="detail">
                                <ControlStyle Font-Underline="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:ButtonField ButtonType="link" CommandName="detail" ControlStyle-Font-Underline="false" DataTextField="Experience" HeaderText="Experience" Text="Button">
                                <ControlStyle Font-Underline="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="detail" DataTextField="ctc" HeaderText="CTC(Lakh/Annum)" Text="Button">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="detail" DataTextField="loc_txt" HeaderText="Location">
                                <ControlStyle Font-Underline="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="detail" DataTextField="loc_txt" HeaderText="Location">
                                <ControlStyle Font-Underline="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                            <asp:ButtonField CommandName="Apply" HeaderText="Apply" Text="Apply">
                                <ControlStyle Font-Underline="False" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:ButtonField>
                        </Columns>
                        <HeaderStyle BackColor="#D1CECE"></HeaderStyle>
                        <EditRowStyle ForeColor="Black" />
                        <AlternatingRowStyle BackColor="#cdcdcd" ForeColor="Black" />
                    </asp:GridView>--%>
                    <%= crview %>
                </div>
            </div>
        </div>
    </div>
                     
                    
                </div>
            </div>
        </div>
    </section>
    <!-- //end content part -->
   
   
   
   
   
    
</asp:Content>
