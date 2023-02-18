<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estoque.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Estoque.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <div class="row text-center">
        <h1>Controle de Estoque</h1>
    </div>
    <br />
    <div class="row">
        <div class="col-md-5">
            <div class="row">
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_codigobarra" Text="Código de barra"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Codigo_de_Barra" class="txtbox"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_fornecedor" Text="Fornecedor"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Id_Fornecedor" class="txtbox"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_nome_produto" Text="Nome do Produto"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Nome_Produto" class="txtbox"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_validade" Text="Data de Validade"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Validade" class="txtbox"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_preco_uni" Text="Preço por unidade"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Preco_Unidade" class="txtbox"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label runat="server" ID="lbl_qtd" Text="Quantidade"></asp:Label>
                    <asp:TextBox runat="server" ID="Txt_Quantidade" class="txtbox"></asp:TextBox>
                </div>
            </div>
            <div id="row_btn" style="text-align:center">
                <div class="row">
                    <div class="div-md-6">
                        <div class="row">
                            <asp:Label runat="server" ID="lbl_seguimento" Text="Seguimento"></asp:Label>
                        </div>
                        <div class="row">
                            <asp:TextBox runat="server" ID="Txt_Seguimento" class="txtbox"></asp:TextBox>
                        </div>   
                    </div>
                    <div class="div-md-6">
                        <asp:Button runat="server" ID="Btn_inserir" OnClick="Btn_inserir_Click" class="btn" Text="Inserir" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5">
            <p>Pesquisa:</p>
            <asp:TextBox runat="server" ID="TxtPesquisa" class="txtbox"></asp:TextBox>
            <br />
            <br />

            <asp:Button runat="server" ID="Btn_pesquisar" OnClick="Btn_pesquisar_Click" class="btn" Text="Pesquisar" />
            <br />
            <br />

            <asp:GridView ID="GridView1" CssClass="Grid " runat="server" AutoGenerateColumns="false" Style="width: 600px; height: 300px">
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
