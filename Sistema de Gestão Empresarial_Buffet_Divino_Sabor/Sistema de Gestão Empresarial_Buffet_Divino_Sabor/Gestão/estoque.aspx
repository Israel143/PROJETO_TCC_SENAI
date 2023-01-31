<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estoque.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Controle_de_Estoque.css" />
    <div class="row text-center">
        <h1>Controle de Estoque</h1>
    </div>
    <br />
    <div class="row">
 
        <div class="col-sm-8">
             <p>Pesquisa:</p>
             <asp:TextBox runat="server" ID="TxtPesquisa" CssClass="form-control"></asp:TextBox>

            <asp:Button runat="server" ID="Btn_pesquisar" OnClick="Btn_pesquisar_Click" CssClass="btn btn-success" Text="Pesquisar" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">
  <Columns>
    <asp:BoundField DataField="id" HeaderText="ID" />
    <asp:BoundField DataField="codigo_de_barra" HeaderText="Codigo de barra" />
    <asp:BoundField DataField="id_fornecedor" HeaderText="ID Fornecedor" />
    <asp:BoundField DataField="nome_produto" HeaderText="Nome Produto" />
    <asp:BoundField DataField="validade" HeaderText="Validade" />
    <asp:BoundField DataField="preco_unidade" HeaderText="Preco Unidade" />
    <asp:BoundField DataField="quantidade" HeaderText="Quantidade" />
    <asp:BoundField DataField="seguimento" HeaderText="Seguimento" />
  </Columns>
</asp:GridView>


        </div>
    </div>
</asp:Content>
