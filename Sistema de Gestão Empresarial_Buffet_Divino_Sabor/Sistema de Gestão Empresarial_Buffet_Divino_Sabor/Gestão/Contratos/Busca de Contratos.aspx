<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Busca de Contratos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos.Contratos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="EstiloContratos.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>

    <div class="container-principal">
            <div class="row" id="titulo">
                <h1>Busca de Contratos</h1>
            </div>
            <div class="content-box">
                <div class="row" id="info">
                    <asp:TextBox runat="server" ID="Consultar" placeholder="Digite o id do cliente" class="txtbox"></asp:TextBox>
                    <asp:Button runat="server" ID="BtnPesquisar" OnClick="BtnPesquisar_Click" Text="Buscar" class="btn" />
                </div>
                <div class="row" id="tabela">
                    <asp:GridView CssClass="table" runat="server" Style="background-color: black; color: white; width: 60%; margin-left: 250px; border: thin;" ID="grd_Contratos" Width="100%" OnRowCommand="grd_Contratos_RowCommand" AutoGenerateColumns="false" PageSize="20">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="id_pedido" HeaderText="Id_pedido" />
                            <asp:BoundField DataField="Data de Inicio" HeaderText="Data de Inicio" />
                            <asp:BoundField DataField="Data de Termino" HeaderText="Data de Termino" />
                            <asp:ButtonField ButtonType="Link" ControlStyle-CssClass="btn btn-info" CommandName="Visualizar" Text="Visualizar" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
    </div>

</asp:Content>
