<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <!--一个总的button1，另外三个button2,3,4在UpdatePanel里-->
    <!--button1：全部更新（outside the UpdatePanel）
           button2/3/4：更新在UpadtePanel中的全部，但不更新panel外的-->
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <%=DateTime.Now%>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
        </div>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button2" runat="server" Text="Button" />
                always
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now %>
                <asp:Button ID="Button3" runat="server" Text="Button" />
                conditonal
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <br />
            <br />
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                <%=DateTime.Now.ToString() %>
                <asp:Button ID="Button4" runat="server" Text="Button" />
                always<br />
                <br />
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <%=DateTime.Now.ToString() %>
                        <asp:Button ID="Button5" runat="server" Text="Button" />
                        always
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <%=DateTime.Now.ToString() %>
                        <asp:Button ID="Button6" runat="server" Text="Button" />
                        conditional
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <%=DateTime.Now.ToString() %>
                <asp:Button ID="Button7" runat="server" Text="Button" />
                conditional<br />
                <br />
                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                    <ContentTemplate>
                        <%=DateTime.Now.ToString() %>
                        <asp:Button ID="Button8" runat="server" Text="Button" />
                        always
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <%=DateTime.Now.ToString() %>
                        <asp:Button ID="Button9" runat="server" Text="Button" />
                        conditional
                    </ContentTemplate>
                </asp:UpdatePanel>
            </ContentTemplate>
        </asp:UpdatePanel>
            <br />
            <br />
            

    </form>
</body>
</html>
