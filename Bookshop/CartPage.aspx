<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="Bookshop.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
   <style type="text/css">
        .gridview {
            margin-left: 40px;
            margin-right: 0px;
        }
    </style>
     <asp:GridView ID="GridView1" runat="server" CssClass="gridview" GridLines ="Horizontal"
                AlternatingRowStyle-CssClass="even" AutoGenerateColumns="False" DataKeyNames="TransID"  Width="682px" OnRowCommand="GridView1_RowCommand" BorderStyle="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <image src="images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" SortExpression="Title">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                        
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="AddButton" Text="+"
                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                    
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="DeductButton" Text="-" 
                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN" Visible="False">
                      
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" CausesValidation="false" CommandName="DeleteButton" Text="X"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/> 
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

     <br />
    

    
     <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label>
     <br />
     <br />


     <asp:Button ID="ProceedButton" runat="server" BackColor="White" OnClick="ProceedButton_Click" Text="Proceed Payment" />


     <br />
     <br />

</asp:Content>
