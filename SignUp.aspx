<%@ Page Title="" Language="C#" MasterPageFile="BookStore.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="Server">

    <nav class="navbar navbar-inverse ">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="HomePage.aspx">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Deals</a></li>
                    <li><a href="#">Stores</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>

            </div>
        </div>
    </nav>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
                opacity: 1;
        }

        /* Extra styles for the cancel button */
        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        /* Float cancel and signup buttons and add an equal width */
        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        /* Add padding to container elements */
        .container {
            padding: 16px;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }
        }
    </style>

    <div class="container">
        <h1>Sign Up</h1>
        <hr>

        <label for="name"><b>Name</b></label>
        <asp:TextBox ID="txtName" placeholder="Enter Name" runat="server"></asp:TextBox><br/>

        <label for="email"><b>Email</b></label>
        <asp:TextBox ID="txtEmail" placeholder="Enter Email" runat="server"></asp:TextBox><br/>


        <label for="mobile"><b>Mobile No.</b></label>
        <asp:TextBox ID="txtMobile" placeholder="Enter Mobie No." runat="server"></asp:TextBox><br/>


        <label for="username"><b>User Name</b></label>
        <asp:TextBox ID="txtUsername" placeholder="Enter User Name" runat="server"></asp:TextBox><br/>


        <label for="psw"><b>Password</b></label>
        <asp:TextBox ID="txtPassword" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox><br/>


        <label for="psw-confirm"><b>Confirm Password</b></label>
        <asp:TextBox ID="txtConfirmPassword" placeholder="Enter Confirm Password" runat="server" TextMode="Password"></asp:TextBox><br/>


        <label for="address"><b>Address</b></label>
        <asp:TextBox ID="txtAddress" placeholder="Enter Address" runat="server"></asp:TextBox><br/>


        <label for="area"><b>Area</b></label>
        <asp:TextBox ID="txtArea" placeholder="Enter Area" runat="server"></asp:TextBox><br/>


       

        
        <div class="clearfix">
            
            <asp:Button ID="btnCancle" runat="server" Text="Cancel" Height="48px" Width="423px" />
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="532px" Height="49px" OnClick="btnSubmit_Click" />
        </div>
    </div>

</asp:Content>

