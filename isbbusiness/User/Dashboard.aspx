<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="User_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cptitle" runat="Server">
    <style>
        .contact-box .contact-icon {/* display: table-cell; *//* padding-right: 20px; */}
.contact-box .contact-icon i { background: transparent; line-height: normal; font-size: 34px; }
.contact-box .contact-icon span{ background: transparent; line-height: normal; font-size: 14px; }
.contact-box .contact-info {/* display: table-cell; *//* vertical-align: top; */}
.col-md-12 {
    display: contents;
}
        .Dash {
            padding: 20px;
            background: menu;
            margin: 10px;
        }

        .blue {
            background: #3498db;
        }

        .yellow {
            background: #ffc61d;
        }

        .green {
            background: #27ae60;
        }

        .contact-info h5 {
            color: white;
            font-weight: bold;
        }

        .red {
            background-color: orchid;
        }

        .pink {
            background-color: #ff00009e;
        }

        .contact-info h6 {
            color: white;
            font-weight: bold;
        }
    </style>
     <style>
        #mask {
            position: absolute;
            left: 0;
            top: 0;
            z-index: 9000;
            background-color: #26262c;
            display: none;
        }

        #boxes .window {
            position: absolute;
            left: 0;
            top: 0;
            width: 340px;
            height: 850px;
            display: none;
            z-index: 9999;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }

        #boxes #dialog {
            width: 350px;
            height: auto;
            padding: 10px 10px 10px 10px;
            background-color: #ffffff;
            font-size: 15pt;
        }

        .agree:hover {
            background-color: #D1D1D1;
        }

        .popupoption:hover {
            background-color: #D1D1D1;
            color: green;
        }

        .popupoption2:hover {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" runat="Server">
<%--   <div id="boxes">
         <div style="top: 50%; left: 50%; display: none;" id="dialog" class="window">
                <div id="san">
                    <a href="#" class="close agree">
                        <img src="../Auth/img/cross.png" width="35" style="float: right; margin-right: -20px; margin-top: -20px;" class="img-responsive" /></a>
                    <ul class="rslides">
                     
                        <asp:ListView ID="ListView2" runat="server">
                            <ItemTemplate>
                                <li>
                                    <img src='../uploadimage/<%#Eval("image") %>' class="img-responsive">
                                </li>
                            </ItemTemplate>
                        </asp:ListView>

                    </ul>
                </div>
            </div>
          <div style="font-size: 32pt; color: white; height: 1990px; display: none; opacity: 0.4;" id="mask"></div>
     </div>--%>
    <div class="col-md-12">
        <div class="col-md-6">
            Welcome <%=name %>
        </div>
        <div class="col-md-2 col-md-offset-1">
            ID <%=regno %>
        </div>
    </div>

    <div class="col-md-12">
        <div class="col-md-10">
            <div class="alert alert-success" role="alert">
                Two Direct Compulsary Id's (One Left and On Right)
   
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="col-md-12" style="margin-bottom: 20px; align-items: center; color: black;">
        <%-- <div class="col-lg-3 col-sm-3 bottom-m3 Dash blue">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-unlink"></span>
                </div>
                <div class="contact-info">
                    <h5>Unused Pins </h5>
                    <h6>
                        <asp:Label ID="lblnew" runat="server" Text=""></asp:Label></h6>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash yellow">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-link"></span>
                </div>
                <div class="contact-info">
                    <h5>Used Pins</h5>

                    <h6>
                        <asp:Label ID="lblused" runat="server" Text=""></asp:Label></h6>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash red">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-forward"></span>
                </div>
                <div class="contact-info">
                    <h5>Transfer Pins </h5>
                    <h6>
                        <asp:Label ID="lbltrans" runat="server" Text=""></asp:Label></h6>
                </div>
            </div>
        </div>--%>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash green">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-user"></span>
                </div>
                <div class="contact-info">
                    <h5>Direct Id's </h5>
                    <h6>Left :
                        <asp:Label ID="leftdr" runat="server" Text=""></asp:Label>
                        Right :
                        <asp:Label ID="rightdr" runat="server" Text=""></asp:Label></h6>

                </div>
            </div>
        </div>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash pink">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-user"></span>
                </div>
                <div class="contact-info">
                    <h5>Team Id's</h5>
                    <h6>Left :
                        <asp:Label ID="teaml" runat="server" Text=""></asp:Label>
                        Right :
                        <asp:Label ID="teamr" runat="server" Text=""></asp:Label></h6>

                </div>
            </div>
        </div>
          <div class="col-lg-3 col-sm-3 bottom-m3 Dash blue">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-user"></span>
                </div>
                <div class="contact-info">
                    <h5>Pair</h5>
                    <h6><asp:Label ID="lblpair" runat="server" Text=""></asp:Label></h6>

                </div>
            </div>
        </div>
        <%-- <div class="col-lg-3 col-sm-3 bottom-m3 Dash pink">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-user"></span>
                </div>
                <div class="contact-info">
                    <h5>Creteria Id's </h5>
                    <h6>Left :
                        <asp:Label ID="lblleft" runat="server" Text=""></asp:Label>
                        Right :
                        <asp:Label ID="lblright" runat="server" Text=""></asp:Label></h6>
                </div>
            </div>
        </div>--%>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash blue">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-bank"></span>
                </div>
                <div class="contact-info">

                    <h5>Installments </h5>
                    <h6>
                        <asp:Label ID="lblins" runat="server" Text=""></asp:Label>
                    </h6>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash yellow">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-inr"></span>
                </div>
                <div class="contact-info">
                    <h5>Wallet Amount </h5>
                    <h6>
                        <asp:Label ID="lblwallet" runat="server" Text=""></asp:Label></h6>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-sm-3 bottom-m3 Dash green">
            <div class="contact-box">
                <div class="contact-icon">
                    <span class="fa fa-inr"></span>
                </div>
                <div class="contact-info">
                    <h5>Payout</h5>
                    <h6>
                        <asp:Label ID="lblclear" runat="server" Text=""></asp:Label>
                    </h6>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-8 col-md-offset-1">
        <table style="width: 100%;" class="table table-bordered">
            <tr>
                <td colspan="2">
                    <b>Member Details</b>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Registration Id</td>
                <td><%=regno %></td>
            </tr>
            <tr>
                <td class="auto-style1">First Name</td>
                <td><%=name %></td>
            </tr>
            <tr>
                <td class="auto-style1">S/o,W/o,D/o</td>
                <td><%=father %>;</td>
            </tr>
            <tr>
                <td class="auto-style1">Joining Date</td>
                <td><%=date %></td>
            </tr>
            <tr>
                <td class="auto-style1">Address</td>
                <td><%=address %></td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td><%=gender %></td>
            </tr>
            <tr>
                <td class="auto-style1">Mobileno.</td>
                <td><%=phn %></td>
            </tr>
            <tr>
                <td class="auto-style1">Marital Status</td>
                <td><%=marital %></td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpfotter" runat="Server">
            <script>
            $(document).ready(function () {
                var id = '#dialog';
                var maskHeight = $(document).height();
                var maskWidth = $(window).width();
                $('#mask').css({ 'width': maskWidth, 'height': maskHeight });
                $('#mask').fadeIn(500);
                $('#mask').fadeTo("slow", 0.9);
                var winH = $(window).height();
                var winW = $(window).width();
                $(id).css('top', winH / 2 - $(id).height() / 2);
                $(id).css('left', winW / 2 - $(id).width() / 2);
                $(id).fadeIn(2000);
                $('.window .close').click(function (e) {
                    e.preventDefault();
                    $('#mask').hide();
                    $('.window').hide();
                });
                $('#mask').click(function () {
                    $(this).hide();
                    $('.window').hide();
                });

            });
        </script>
    <script src="../js/responsiveslides.min.js"></script>
    
</asp:Content>

