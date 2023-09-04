<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estoque.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.estoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Estoque.css" />
    <link rel="stylesheet" href="../../CSS PADRÃO/EstiloPadrao.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>

    <div class="conteudo">
        <div class="row text-center">
            <h1 class="title-1">Controle de Estoque</h1>
        </div>
        <br />
        <div class="row">
            <div class="col-md-5" style="margin-left:30px">
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_codigobarra" CssClass="lbl-box" Text="Código de barra"></asp:Label>
                        <asp:TextBox runat="server" ID="Txt_Codigo_de_Barra" class="txtbox"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_fornecedor" CssClass="lbl-box" Text="Fornecedor"></asp:Label><br />
                        <asp:DropDownList CssClass="ddl-my" ID="ddlFornecedores" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_nome_produto" CssClass="lbl-box" Text="Nome do Produto"></asp:Label>
                        <asp:TextBox runat="server" ID="Txt_Nome_Produto" class="txtbox"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_validade" CssClass="lbl-box" Text="Data de Validade"></asp:Label>
                        <asp:TextBox runat="server" ID="Txt_Validade" class="txtbox"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_preco_uni" CssClass="lbl-box" Text="Preço por unidade"></asp:Label>
                        <asp:TextBox runat="server" ID="Txt_Preco_Unidade" class="txtbox"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" ID="lbl_qtd" CssClass="lbl-box" Text="Quantidade"></asp:Label>
                        <asp:TextBox runat="server" ID="Txt_Quantidade" class="txtbox"></asp:TextBox>
                    </div>
                </div>
                <div id="row_btn" style="margin-top:15px; margin-left:230px;">
                    <div class="row"  style="position:absolute; left:200px">
                        <div class="div-md-6">
                            <div class="row">
                                <asp:Label runat="server" ID="lbl_seguimento" CssClass="lbl-box" Text="Seguimento"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:TextBox runat="server" ID="Txt_Seguimento" class="txtbox"></asp:TextBox>
                            </div>
                        </div>
                        <div class="div-md-6" style="margin-top:20px; margin-left:5px">
                            <asp:Button runat="server" ID="Btn_inserir" OnClick="Btn_inserir_Click" class="btn-v-p" Text="Inserir" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-5" style="float:right">
                <p class="title-1">Pesquisa:</p>
                <asp:TextBox runat="server" ID="TxtPesquisa" class="txtbox"></asp:TextBox>
                <br />
                <br />

                <asp:Button runat="server" ID="Btn_pesquisar" OnClick="Btn_pesquisar_Click" class="btn-v-p" Text="Pesquisar" />
                <br />
                <br />

                <asp:Repeater runat="server" ID="rptEstoque">
                    <ItemTemplate>
                        <div class="row" style="color:#942828; font-family:serif; margin-left:30px">
                            <div class="row">
                                NOME: <%# Eval("nome_produto") %>
                            </div>
                            <div class="row">
                                SEGUIMENTO: <%# Eval("seguimento") %>
                            </div>
                            <div class="row">
                                FORNECEDOR: <%# Eval("id_fornecedor") %>
                            </div>
                            <div class="row">
                                VALIDADE: <%# Eval("validade") %>
                            </div>
                            <div class="row">
                                PREÇO UNI: <%# Eval("preco_unidade") %>
                            </div>
                            <div class="row">
                                QUANTIDADE: <%# Eval("quantidade") %>
                            </div>
                            <div class="row">
                                CÓDIGO DE BARRAS: <%# Eval("codigo_de_barra") %>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

</asp:Content>
