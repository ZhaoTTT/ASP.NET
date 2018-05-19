<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form2.aspx.cs" Inherits="Web1.form2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
            <% foreach (string key in Request.Form.AllKeys)//POST
           { %>
                <tr><td><%= key %></td>
                    <td><%= Request.Form[key] %></td>
                </tr>
            <% } %>
            </table>
            <br />
            POST method</div>
    </form>
</body>
</html>
