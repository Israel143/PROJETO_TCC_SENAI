<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estoque.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Estoque.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <div class="row text-center">
        <h1>Controle de Estoque</h1>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-6">

<p>Código de Barra:</p>
             <asp:TextBox runat="server" ID="Txt_Codigo_de_Barra" class="txtbox"></asp:TextBox>
<p>Id Fornecedor:</p>
             <asp:TextBox runat="server" ID="Txt_Id_Fornecedor" CssClass="form-control"></asp:TextBox>
<p>Nome do Produto:</p>
             <asp:TextBox runat="server" ID="Txt_Nome_Produto" CssClass="form-control"></asp:TextBox>
<p>Validade:</p>
             <asp:TextBox runat="server" ID="Txt_Validade" CssClass="form-control"></asp:TextBox>
<p>Preço Unidade:</p>
             <asp:TextBox runat="server" ID="Txt_Preco_Unidade" CssClass="form-control"></asp:TextBox>
<p>Quantidade:</p>
             <asp:TextBox runat="server" ID="Txt_Quantidade" CssClass="form-control"></asp:TextBox>
<p>Seguimento:</p>
             <asp:TextBox runat="server" ID="Txt_Seguimento" CssClass="form-control"></asp:TextBox>
            <br />
            <br />
 <asp:Button runat="server" ID="Btn_inserir" OnClick="Btn_inserir_Click" CssClass="btn btn-success" Text="Inserir" />

        </div>


 
        <div class="col-sm-6">
             <p>Pesquisa:</p>
             <asp:TextBox runat="server" ID="TxtPesquisa" CssClass="form-control"></asp:TextBox>
            <br />
            <br />

            <asp:Button runat="server" ID="Btn_pesquisar" OnClick="Btn_pesquisar_Click" CssClass="btn btn-success" Text="Pesquisar" />
            <br />
            <br />
          
            <asp:GridView ID="GridView1" CssClass= "Grid " runat="server" AutoGenerateColumns="false" style="width:600px; height:300px">
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
