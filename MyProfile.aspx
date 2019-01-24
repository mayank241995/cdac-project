<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: "Lato", sans-serif;
        }

        .sidenav {
            height: 55%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: lightgrey;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: black;
                display: flex;
                transition: 0.3s;
            }

                .sidenav a:hover {
                    color: #f1f1f1;
                }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }



        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
        }
    </style>

</head>
<body>
    <nav class="navbar  navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">

                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <a href="#">Edit Profile</a>
                    <a href="#">My Orders</a>
                    <a href="#">Add Book</a>

                </div>

                <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>

                <script>
                    function openNav() {
                        document.getElementById("mySidenav").style.width = "250px";
                    }

                    function closeNav() {
                        document.getElementById("mySidenav").style.width = "0";
                    }
                </script>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    Dashboard
                </button>
                <%-- <a class="navbar-brand" href="#">Logo</a>--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">

            <ul class="nav navbar-nav navbar-right">
                <li><a href="HomePage.aspx"><span class="glyphicon glyphicon-user"></span>LogOut</a></li>
            </ul>
        </div>
        <div>

            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>
                    &nbsp;&nbsp;
                        <asp:Label ID="lbl_uid" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lbl_phone" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lbl_addr" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Area"></asp:Label>
                    &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                </ItemTemplate>
            </asp:DataList>

        </div>
    </nav>


</body>
</html>

