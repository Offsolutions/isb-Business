﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/Main.master" AutoEventWireup="true" CodeFile="unusedpinstatus.aspx.cs" Inherits="Auth_unusedpinstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" Runat="Server">
    Un-Used Pins
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" Runat="Server">
     <div class="col-md-12">


      <table id="table1" class="table table-striped table-hover table-fw-widget">
                    <thead>
                <tr>
                    <th>Sr.No</th>
                    <th>Total Unused Pins</th>
                    <th>Regno</th>  
                     <th>Name</th>
                    <th>View Pins</th>
                    
                </tr>
            </thead>
            <tbody>
            <asp:ListView ID="gvpins" runat="server" OnItemDataBound="gvpins_ItemDataBound">
                <ItemTemplate>
                    <tr>
                        <td><%# Container.DataItemIndex+1 %></td>

                        <td>
                            <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label></td>
                        
                        <td>
                            <asp:Label ID="lblreg" runat="server" Text='<%#Eval("regno") %>'></asp:Label></td>
                     
                        <td>
                          <%#Eval("fname") %>
                        <td>
                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CommandArgument='<%#Eval("regno") %>' runat="server">Click to view list</asp:LinkButton>
                            
                        </td>


                </ItemTemplate>
            </asp:ListView>
                </tbody>
        </table>


    </div>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" Runat="Server">
</asp:Content>

