<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/main.master" AutoEventWireup="true" CodeFile="DuePinsDetail.aspx.cs" Inherits="Auth_DuePinsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptitle" runat="Server">
    Due Pins Detail
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpmain" runat="Server">
    <div class="col-md-12">


        <table id="table1" class="table table-striped table-hover table-fw-widget">
            <thead>
                <tr>
                    <th>Sr.No</th>
                    <th>Regno</th>
                    <th>Name</th>
                    <th>Total Pins</th>
                    <th>Used Pins</th>
                    <th>New Pins</th>
                     <th>View Detail</th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView ID="gvpins" runat="server" OnItemDataBound="gvpins_ItemDataBound">
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.DataItemIndex+1 %></td>
                            <td><asp:Label ID="lblreg" runat="server" Text='<%#Eval("regno") %>'></asp:Label></td>

                            <td>
                                <%#Eval("fname") %></td>
                            <td>
                                <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                 <asp:Label ID="lblused" runat="server" Text="0"></asp:Label>
                            </td>
                              <td>
                                 <asp:Label ID="lblnew" runat="server" Text="0"></asp:Label>
                            </td>
                                 <td>
                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CommandArgument='<%#Eval("regno") %>' runat="server" Visible="false">View Used Pins Detail</asp:LinkButton>
                            
                        </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpfotter" runat="Server">
</asp:Content>

