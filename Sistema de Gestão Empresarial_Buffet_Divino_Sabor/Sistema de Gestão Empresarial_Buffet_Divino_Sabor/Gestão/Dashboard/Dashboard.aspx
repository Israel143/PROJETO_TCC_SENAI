<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Login/login.css"/>

    <div class="body">
        <div class="col-md-4">
            <div id="InfoPedidos" class="info-box">
                <div id="titlePedidos" class="row title-box">Pedidos</div>
                <div id="Pedidos" class="row">
                    <div id="Novos" class="row">
                        <h2>Novos</h2>
                        <asp:Label runat="server" ID="lblNovosPedidos" CssClass="title-box">10</asp:Label>
                    </div>
                    <div id="Andamento" class="row">
                        <h2>Andamento</h2>
                        <asp:Label runat="server" ID="lblEmAndamento" CssClass="title-box">10</asp:Label>
                    </div>
                    <div id="Entregues" class="row">
                        <h2>Entregues</h2>
                        <asp:Label runat="server" ID="lblEntregues" CssClass="title-box">10</asp:Label>
                    </div>
                    <asp:Button runat="server" ID="BtnPedidos" CssClass="button row" Text="Detalhes" />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div id="InfoEscala" class="info-box">
                <div id="titleEscala" class="row title-box">Escala</div>
                <div id="tabela" class="row">
                    <asp:GridView runat="server" ID="grd_Escala" OnRowCommand="grd_Escala_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="Funcionario" HeaderText="Nome" />
                        </Columns>
                    </asp:GridView>
                </div>                
                <asp:Button runat="server" ID="BtnEscala" CssClass="row button" text="Detalhes"/>
            </div>
        </div>
        <div class="col-md-4">
            <div id="InfoCaixa" class="info-box">
                <div id="titleCaixa" class="row title-box">Caixa</div>
                <div id="quantidades" class="row line-box">
                    <div id="vendas" class="col-sm-6" >
                        <div class="row" style="font-size:20px">Vendas</div>
                        <div class="row">
                            <asp:Label runat="server" ID="lblVendas" Text="10"></asp:Label>
                        </div>
                    </div>
                    <div id="compras" class="col-sm-6">
                        <div class="row"style="font-size:20px">Compras</div>
                        <div class="row">
                            <asp:Label runat="server" ID="LblCompras" Text="10"></asp:Label>
                        </div>
                    </div>
                </div>
                <div id="valores" class="row line-box">
                    <div class="col-sm-6" id="receitas">
                        <div class="row" style="font-size:20px">Receitas</div>
                        <div class="row">
                            <asp:Label runat="server" ID="LblReceitas" Text="10"></asp:Label>
                        </div>
                    </div>
                    <div class="col-sm-6" id="despesas">
                        <div class="row" style="font-size:20px">Depesas</div>
                        <div class="row">
                            <asp:Label runat="server" ID="LblDespesas" Text="10"></asp:Label>
                        </div>
                    </div>
                </div> 
                <div class="row">
                    <asp:Button runat="server" ID="BtnCaixa" CssClass="button" Text="Detalhes" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
