<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspx_html_differences.aspx.cs" Inherits="Web1.aspx_html_differences" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            asp.net control（提交后内容保留）<br />
            <br />
            <input id="Text1" name="textbox2" type="text" />html control(提交后内容消失)<br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
        </div>
        <div>
            CheckBox(html)(提交后内容消失)<br />
            <input id="Checkbox1" type="checkbox" /><br />
            <br />
            CheckBoxList(asp.net)（提交后内容保留） <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>apple</asp:ListItem>
                <asp:ListItem>orange</asp:ListItem>
                <asp:ListItem>grapes</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            ListBox(asp.net)<br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" DataSourceID="sql1" DataTextField="CustomerName" DataValueField="CustomerID">
                <asp:ListItem>apple</asp:ListItem>
                <asp:ListItem>orange</asp:ListItem>
                <asp:ListItem>grapes</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="sql1" runat="server" ConnectionString="Data Source=(local);Initial Catalog=DafestyNew;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CustomerID], [CustomerName] FROM [Customers]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
