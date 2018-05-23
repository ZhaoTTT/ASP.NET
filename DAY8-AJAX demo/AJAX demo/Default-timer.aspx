<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default-timer.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <%=DateTime.Now%>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button3" runat="server" Text="Button" />
                <asp:Timer runat="server" Interval="5000"></asp:Timer>
                timer<br /> 点击button可以自己更新<br /> 不点的时候会每5秒钟更新一次
            </ContentTemplate>
<%--            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
            </Triggers>--%>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                Updating...
            </ProgressTemplate>
        </asp:UpdateProgress>

            

        <br />

            

    </form>
</body>
</html>
