<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpbread" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpmain" Runat="Server">
    <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <h4>Login To Your Account</h4>
                    <form class="gray-form mt-20 clearfix">
                        <div class="form-group">
                            <label for="name">User name* </label>
                            
                            
                            <asp:TextBox ID="txtuser" class="form-control" placeholder="User name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Password">Password* </label>
                            <asp:TextBox ID="txtpass" TextMode="Password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                        </div>
                      
                       
                        <asp:Button ID="btnlogin" OnClick="btnlogin_Click" class="button" runat="server"  Text="Log in" />
                    </form>
                </div>
               
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpfooter" Runat="Server">
</asp:Content>

