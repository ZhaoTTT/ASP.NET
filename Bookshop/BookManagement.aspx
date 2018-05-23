<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookManagement.aspx.cs" Inherits="Bookshop.BookManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gridview {
            margin-left: 0px;
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="SortLabel" runat="server" Text="Sort By"></asp:Label>
    <br />

    <asp:DropDownList ID="DdlSort" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    
     <asp:GridView ID="GridView1" runat="server" CssClass="gridview" GridLines ="Horizontal" BorderStyle="None"
                AlternatingRowStyle-CssClass="even" AutoGenerateColumns="False" DataKeyNames="BookID"   Width="360px" 
         OnRowCommand="GridView1_RowCommand" 
         OnRowEditing="OnRowEditing" 
            OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" OnRowDataBound="GridView1_RowDataBound" OnRowCreated="GridView1_RowCreated">
<AlternatingRowStyle CssClass="even"></AlternatingRowStyle>
                <Columns>
                        
                    <asp:TemplateField>
                        <ItemTemplate>
                            <image src="images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                        </ItemTemplate>
                        <EditItemTemplate>
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                   </EditItemTemplate>

                       <HeaderTemplate>
                                   <asp:FileUpload ID="tbFileUpload" runat="server" CssClass=""  MaxLength="10"></asp:FileUpload>                               
                                </HeaderTemplate>

                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Title" SortExpression="Title">
                       
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                <asp:TextBox ID="TBTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
            </EditItemTemplate>
                <HeaderTemplate>
                                   <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CategoryID" SortExpression="Category ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCatID" runat="server" ></asp:DropDownList>
                        </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:DropDownList ID="ddlCatID1" runat="server"></asp:DropDownList>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Author" SortExpression="Author">
                        <EditItemTemplate>
                            <asp:TextBox ID="TBAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                        </ItemTemplate>
                         
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Original Price" SortExpression="Original Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TBPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Discount" SortExpression="Discount">
                        <EditItemTemplate>
                            <asp:TextBox ID="TBDiscount" runat="server" Text='<%# Bind("Discount") %>'></asp:TextBox>
                        </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:TextBox ID="tbDiscount" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Discount") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Discounted Price" SortExpression="DiscountedPrice">
                       
                      <HeaderTemplate>
                                   <asp:Label ID="lbDiscp" runat="server"></asp:Label>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("DiscountedPrice") %>' ></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="AddButton" Text="+"
                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Stock" SortExpression="Stock">
                    <EditItemTemplate>
                        <asp:TextBox ID="TBStock" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                    </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:TextBox ID="tbStock" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="DeductButton" Text="-" 
                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN" Visible="True">
                      
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>

                <asp:TextBox ID="TBISBN" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>

            </EditItemTemplate>
                         <HeaderTemplate>
                                   <asp:TextBox ID="tbISBN" runat="server"></asp:TextBox>                               
                                </HeaderTemplate>

                         
                    </asp:TemplateField>
                      
                 
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" CausesValidation="false" CommandName="DeleteButton" Text="Delete" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                          <HeaderTemplate>
                                   <asp:Button ID="btAddNew" runat="server" CausesValidation="false" Text="Add" CommandName="NewButton"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" ></asp:Button>                               
                                </HeaderTemplate>

        
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

</asp:Content>
