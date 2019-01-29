<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyUploads.aspx.cs" Inherits="MyUploads" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 79px; margin-bottom: 1px">
    <form id="form1" runat="server">
    <p style="height: 3px">
        <h2>My Books&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go Back" />
        </h2>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Book_id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Publication:
                <asp:Label ID="PublicationLabel" runat="server" Text='<%# Eval("Publication") %>' />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Status_book:
                <asp:Label ID="Status_bookLabel" runat="server" Text='<%# (Convert.ToBoolean(Eval("Status_book")) ? "Available" : "Sold") %>' />
                <br />
                Book_id:
                <asp:Label ID="Book_idLabel" runat="server" Text='<%# Eval("Book_id") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mark as sold" Visible='<%# Eval("Status_book") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [Title], [Publication], [Category], [Status_book], [Book_id] FROM [Books] WHERE ([User_id] = @User_id)">
            <SelectParameters>
                <asp:SessionParameter Name="User_id" SessionField="user_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
