<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" MasterPageFile="~/BookStore.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="contentBody" runat="server">
     
      <nav class="navbar navbar-light " style="background-color: #9aa7af;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Logo</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="HomePage.aspx">Home</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Deals</a></li>
                        <li><a href="#">Stores</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
                        <li><a href="LoginPage.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
      <div class="container">
    <asp:TextBox ID="TextBox4" runat="server" Width="500px" Height="40px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Search" Width="100px" Height="40px" />
    </div>
    <br />
    <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="741px">
                <Columns>
                    <asp:TemplateField SortExpression="BookImage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField SortExpression="BookName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BookName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField SortExpression="SellingPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SellingPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("SellingPrice") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
