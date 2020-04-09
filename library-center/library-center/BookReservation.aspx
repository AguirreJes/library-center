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
                <asp:TemplateField HeaderText="Titulo">
                    <ItemTemplate>
                        <asp:Label ID="titulo" runat="server" Text='<%# Bind("titulo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:Panel ID="sectionForm" runat="server" Visible="false">
            <div class="row">
                <div class="form-group col-md-3">
                    <div class="container">
                        <label>Selecciono el libro</label>
                        <asp:Label ID="nameBookTitle" runat="server" Enabled="false"></asp:Label>
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class="container">
                        <label>Ingrese cantidad de copias a reservar</label>
                        <asp:TextBox ID="inputQuantityCopy" runat="server" class="form-control" required="true" Width="100px" Max="9999" Min="1" CausesValidation="true" type="Number"> </asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                    <asp:Button ID="saveReservation" runat="server" Text="Guardar" class="btn btn-lg btn-block btn btn-primary" type="submit" OnClick="saveReservation_Click"/>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
