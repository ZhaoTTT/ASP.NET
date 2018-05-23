<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default-updateprogress.aspx.cs" Inherits="_Default" %>

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
            <br />
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button2" runat="server" Text="Button" />
                conditional
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button3" runat="server" Text="Button" />
                conditional
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now.ToString() %>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
                AsyncPostBackTrigger
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <!--点击button，延迟5秒更新-->

        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                Updating...
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="OutsideButton" />
        <br />
            <br />
            <br />
            <br />
            

    </form>
</body>
</html>
