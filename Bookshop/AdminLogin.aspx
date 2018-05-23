<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Bookshop.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        #form1 {
            height: 1000px;
            width: 1300px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
    <table align="center">
        <tr><td colspan="3"><b>Admin Login</b></td></tr>
            <tr >
                <td class="auto-style14" >
                    <asp:Label ID="UserName" runat="server" Text="User Name:"></asp:Label></td>
                <td class="auto-style14" >
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>

                </td>
                <td>
                    &nbsp;</td>

            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>

                </td>
                <td>
                    &nbsp;</td>

            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr >
                <td colspan="2">
                    &nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td style="text-align:left">
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="28px" Width="78px" /></td>
                <td style="text-align:right">
                    <asp:Button ID="Button2" runat="server" Text="Clear" CausesValidation="False" OnClick="Button2_Click" Height="28px" Width="78px" /></td>
            </tr>



        </table>
            
</asp:Content>
