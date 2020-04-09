<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="library_center.Detail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <h5 class="text-center text-uppercase" id="titleCatalog">Catalogo Libros</h5>
        <asp:GridView ID="GridViewBookDetail" CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary text-white" AutoGenerateColumns="False" runat="server">
            <Columns>
                <asp:ImageField HeaderText="Imagen" ControlStyle-Height="140" ControlStyle-Width="160" DataImageUrlField="image">
                </asp:ImageField>
                <asp:TemplateField HeaderText="Titulo">
                    <ItemTemplate>
                        <asp:Label ID="titulo" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Descripción" DataField="descripcion"/>
                <asp:TemplateField HeaderText="Cantidad disponible">
                    <ItemTemplate>
                        <asp:Label ID="stock" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Cantidad de dias de prestamo" DataField="diaprestamo"/>
                <asp:BoundField HeaderText="Cantidad de copias" DataField="cantreserva"/>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
