<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The first Web app</title>
    <link rel="stylesheet" href="Default.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <%= DateTime.Now %>
            <br />
            <asp:TextBox ID="TextBox1" runat="server">Hi, there!</asp:TextBox>
            默认Hi，there！。用户可输入<br />
            <asp:Button ID="Button1" runat="server" Text="Button" ForeColor="#66FF66" OnClick="Button1_Click" />
            将表单提交。<br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            显示提交后应显示的数据<br />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" SelectionMode="DayWeekMonth"></asp:Calendar>
            <br />   
            <br />
            <input id="Text1" type="text" />html<br />
            <br/>
            <input id="Button2" type="button" value="button" />html
            <br />
        </div>
    </form>
    <p>
        This is the default web app.&nbsp;&nbsp;&nbsp; //acourding to Default.css</p>
</body>
</html>
