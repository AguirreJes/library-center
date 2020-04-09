<%@ Page Title="Acciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChoiceAction.aspx.cs" Inherits="library_center.ChoiceAction" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
        <h1 class="display-4">Acciones</h1>
        <p class="lead">Bienvenido a la “LA BIBLIOTECA”, puedes reservar o pedir un libro de la forma más simple. No esperes más de dos días para retirar el libro solicitado.</p>
    </div>

    <div class="container">
        <div class="card-deck mb-3 text-center">
            <div class="card mb-6 box-shadow">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Reservar</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">Gratis</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>Reservar copias de un libro</li>
                        <li>Retirar hasta dos días</li>
                    </ul>
                    <div class="row" id="buttonReservation">
                        <div class="col text-center">
                            <asp:Button ID="goReservationBook" runat="server" Text="Ir" class="btn btn-lg btn-block btn-outline-primary" type="submit" OnClick="goReservationBook_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mb-6 box-shadow">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Pedir prestamo</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">Gratis</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>Pedir prestamo de un libro</li>
                        <li>Retirar el mismo día</li>
                    </ul>
                    <div class="row" id="buttonLoan">
                        <div class="col text-center">
                            <asp:Button ID="goLoanBook" runat="server" Text="Ir" class="btn btn-lg btn-block btn-outline-primary" type="submit" OnClick="goLoanBook_Click" />
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
