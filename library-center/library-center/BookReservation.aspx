<%@ Page Title="Reservar libro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookReservation.aspx.cs" Inherits="library_center.BookReservation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h5 class="text-center text-uppercase" id="titleCatalog">Catalogo Libros</h5>
        <asp:GridView ID="GridViewBookCatalog" CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary text-white" AutoGenerateColumns="False" OnRowCommand="GridViewBookCatalog_RowCommand" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label ID="idbook" runat="server" Text='<%# Bind("idbook") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField HeaderText="Imagen" ControlStyle-Height="140" ControlStyle-Width="160" DataImageUrlField="image">
                </asp:ImageField>
                <asp:BoundField HeaderText="Titulo" DataField="titulo" />
                <asp:BoundField HeaderText="Descripción" DataField="descripcion" />
                <asp:BoundField HeaderText="Autor" DataField="autor" />
                <asp:BoundField HeaderText="Isbn" DataField="isbn" />
                <asp:TemplateField HeaderText="Cantidad disponible">
                    <ItemTemplate>
                        <asp:Label ID="stock" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Acción">
                    <ItemTemplate>
                        <asp:Button Text="Reservar" runat="server" CommandName="Reservation" CommandArgument="<%# Container.DataItemIndex %>" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
