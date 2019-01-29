<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 133px; width: 1082px;">
            <h3><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h3>
            <br />
            <br />
            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
        <div style="margin-left: 10px">
            <asp:GridView ID="GridView1" runat="server" Height="310px" style="margin-top: 0px" Width="540px" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Pic") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Original_price">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Original_price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Selling_price">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Selling_price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="No_of_pages">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("No_of_pages") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Publication">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Publication") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Exchange">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# (Convert.ToBoolean(Eval("Exchange"))? "Yes" : "No") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status_book">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# (Convert.ToBoolean(Eval("Status_book")) ? "Available" : "Sold") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <p>
            Author(s) :&nbsp;
            <asp:Label ID="lbl2" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Owner Details:</p>
        <p>
            Name :&nbsp;
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </p>
        <p>
            Email Id :
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </p>
        <p>
            Mobile No :
            <asp:Label ID="lblMobileNo" runat="server"></asp:Label>
        </p>
        <asp:Button ID="btnContact" runat="server" OnClick="btnContact_Click" Text="Contact Owner" />
        <p>
            Post Feedback :</p>
        <asp:TextBox ID="txtFeed" runat="server" Height="126px" Width="726px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnPost" runat="server" OnClick="btnPost_Click" Text="Post" />
        <p>
            Reviews :</p>
        <p>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    &nbsp;<asp:Label ID="User_idLabel" runat="server" Text='<%# Eval("User_id") %>' />
                    &nbsp;: &nbsp;<asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [User_id], [Comment] FROM [Feedback] WHERE ([Book_id] = @Book_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Book_id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
