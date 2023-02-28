<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fornecedores.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Fornecedores.Fornecedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="fornecedoresestilo.css" />
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <!--Barra Secundaria!-->
    <div class="row nav-secondary">
        <a onclick="showDiv('fornecedores');return;" href="#" class="item-nav" type="button">Fornecedores</a>
    </div>
    <!--Conteudo!-->
    <div></div>
    id="content" class="row conteudo">
            <div></div>
    id="fornecedores" style="display: block">
                <div id="create" class="col-md-5">
                    <div class="infobox">
                        <div id="infos1" class="row">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblNome_Fornecedor" Text="Nome:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtNome_Fornecedor" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblContato" Text="Contato:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtcontato" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div></div>
                            id="infos2" class="row" style="margin-top: 20px">
                            <div class="row">

                                <div>
                                    class="row" style="margin-top: 5px">
                                
                                </div>
                                <div></div>
                                class="row" style="margin-top: 5px">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblSeguimento" Text="Seguimento:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtSeguimento_Fornecedor" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblCNPJ" Text="CNPJ:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtCNPJ" CssClass="txtbox"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div id="buttonBox" class="row" style="margin-top: 5px">
                            <div class="col-sm-4" style="padding: 0"></div>
                            <div class="col-sm-4" style="padding: 0">
                                <br />
                                <br />
                                <asp:Button runat="server" ID="btnCadastrar_Fornecedor" OnClick="btnCadastrar_Fornecedor_Click" CssClass="btn" Text="Cadastrar" />
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                    <div id="read" class="col-md-5">
                        <div id="srcBox" style="margin-top: 20px; margin-bottom: 20px" class="row">
                            <div class="col-sm-6">
                                <asp:TextBox runat="server" ID="txtPesquisa" CssClass="txtbox"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:Button runat="server" ID="btnPesquisa_Fornecedor" OnClick="btnPesquisa_Fornecedor_Click" CssClass="btn" Text="Pesquisar" />
                            </div>
                        </div>
                        <div id="resultBox" class="row">
                            <asp:GridView ID="GridView1" Style="background-color: rgba(71, 0, 0, 0.45); padding: 10px; color: white; width: 60%; margin-left: 0; border: thin;" runat="server" CssClass="Grid" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="nome" HeaderText="Nome" />
                                    <asp:BoundField DataField="contato" HeaderText="Contato" />
                                    <asp:BoundField DataField="seguimento" HeaderText="Seguimento" />
                                    <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
    <!--Modal!-->
    <div id="modal"></div>

</asp:Content>
