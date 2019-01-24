<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 318px">
    <form id="form1" runat="server">
    <div>
        <div>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>Fiction</asp:ListItem>
            <asp:ListItem>Educational</asp:ListItem>
            <asp:ListItem>Children</asp:ListItem>
            <asp:ListItem>Philosophy</asp:ListItem>
            <asp:ListItem>Business & Management</asp:ListItem>
            </asp:DropDownList>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>Western Suburbs</asp:ListItem>
            <asp:ListItem>Central Suburbs</asp:ListItem>
            <asp:ListItem>South Mumbai</asp:ListItem>
            <asp:ListItem>Thane</asp:ListItem>
            <asp:ListItem>Navi Mumbai</asp:ListItem>
            </asp:DropDownList></div>
        <div>
        </div>
        
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Width="500px"></asp:ListBox>
        </div>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
