<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="Due-PinHistory.aspx.cs" Inherits="Auth_Due_PinHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" runat="Server">
    <div class="col-md-12">
       <h4> Reg No. <asp:Label ID="lblregno" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
        Name : <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></h4>
        <table id="table1" class="table table-striped table-hover table-fw-widget">
            <thead>
                <tr>
                    <th>Sr.No</th>
                    <th>Pin</th>
                    <th>Pin Type</th>
                    <th>Created on</th>
                    <th>Used On </th>
                    <th>Used For</th>
                </tr>
            </thead>
            <asp:ListView ID="gvpins" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td> <%# Container.DataItemIndex+1 %></td>
                        <td> <%#Eval("pin") %></td>
                        <td> <%#Eval("pintype") %></td>
                        <td> <%# Convert.ToDateTime(Eval("datecreate")).ToString("dd/MM/yyyy") %></td>
                        <td> <%# Convert.ToDateTime(Eval("dated")).ToString("dd/MM/yyyy") %></td>
                        <td> <%#Eval("subregno") %>/<%#Eval("fname") %></td>
                </ItemTemplate>
            </asp:ListView>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" runat="Server">
</asp:Content>

