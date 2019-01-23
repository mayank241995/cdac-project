﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" MasterPageFile="~/BookStore.master" %>

<asp:Content ID="content1" ContentPlaceHolderID="contentBody" runat="server">

    <nav class="navbar navbar-inverse">
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

            </div>
        </div>
    </nav>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
                opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>

    <div class="container">
        <h2>Login Form</h2>
        <hr />
        <label for="uname"><b>Username</b></label>
        <asp:TextBox ID="txtUsername" placeholder="Enter Username" runat="server"></asp:TextBox>

        <label for="psw"><b>Password</b></label>
         <asp:TextBox ID="txtPassword" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>

        <label><input type="checkbox" checked="checked" name="remember">Remember me</label>

        <button type="submit">Login</button>

    </div>

    <div class="container">
        <button type="button" class="cancelbtn">Cancel</button>
        <span class="psw"><a href="SignUp.aspx">Forgot password?</a></span>
    </div>

</asp:Content>