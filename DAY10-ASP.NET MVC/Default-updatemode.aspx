<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default-updatemode.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <!--一个总的button1，另外三个button2,3,4在UpdatePanel里-->
    <!--button1：全部更新（outside the UpdatePanel）
           button2：（updatemode=conditional）只更新本Panel内部的。always的有更改，conditional不会跟着变 ；conditional改，别的conditional不改，always改
           button3：（updatemode=always）跟着其他panel，只要有变的，always的就会跟着变。always更改，conditional不改，其他always 跟着改。
           button4：（updatemode=conditional）
           button5：（updatemode=always）
        -->
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <%=DateTime.Now%>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            outside<br />
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button2" runat="server" Text="Button" />
                conditional
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button3" runat="server" Text="Button" />
                always
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now.ToString() %>
                <asp:Button ID="Button4" runat="server" Text="Button" />
                conditional
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
            <ContentTemplate>
                <%=DateTime.Now.ToString() %>
                <asp:Button ID="Button5" runat="server" Text="Button" />
                always
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
 








            

    </form>
</body>
</html>
