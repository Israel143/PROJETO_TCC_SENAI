<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Funcionarios.Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="funcionarioestilo.css" />
        <link rel="stylesheet" type="text/css" href="../../CSS PADRÃO/EstiloPadrao.css" />
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <div id="escopo" class="escopo">
        <!--Conteudo!-->
        <div id="content" class="row conteudo">
            <div id="funcionarios" style="display: block">
                <div id="create" class="col-md-5">
                    <div class="infobox" style="margin-left: 50px">
                        <div id="infos1" class="row" style="font-family: serif; color: #942828;">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblNome" Text="Nome:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtNome" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblCPF" Text="CPF:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtCPF" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 5px">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblCargo" Text="Cargo:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtCargo" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblTurno" Text="Turno:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtTurno" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="infos2" class="row" style="font-family: serif; color: #942828; margin-top: 20px">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblRua" Text="Rua:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtRua" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblnumero" Text="Numero:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtNumero" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 5px">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblBairro" Text="Bairro:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtBairro" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblCidadeEstado" Text="Cidade e Estado:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtCidadeEstado" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 5px">
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblTelefone" Text="Telefone:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtTelefone" CssClass="txtbox"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <asp:Label runat="server" ID="lblSalario" Text="Salário:"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <asp:TextBox runat="server" ID="txtSalario" CssClass="txtbox"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="buttonBox" class="row" style="margin-top: 5px">
                        <div class="col-sm-4" style="padding: 0"></div>
                        <div class="col-sm-4" style="padding: 0">
                            <br />
                            <br />
                            <asp:Button runat="server" ID="btnCadastrar" OnClick="btnCadastrar_Click" CssClass="my-btn-lg" Text="Cadastrar" />
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div id="read" class="col-md-5">
                    <div id="srcBox" style="margin-top: 20px; margin-bottom: 20px" class="row">
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="txtPesquisa" CssClass="txtbox"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:Button runat="server" ID="btnPesquisa" OnClick="btnPesquisa_Click" CssClass="btn-p" Text="Pesquisar" />
                        </div>
                    </div>
                    <div id="resultBox" class="row">
                        <asp:Repeater runat="server" ID="rptFuncionarios">
                            <ItemTemplate>
                                <div class="row" style="color: #942828; font-family: serif; margin-left: 100px; width: 250px">
                                    <div class="row">
                                        ID: <%# Eval("id") %>
                                    </div>
                                    <div class="row">
                                        NOME: <%# Eval("nome") %>
                                    </div>
                                    <div class="row">
                                        CPF: <%# Eval("cpf") %>
                                    </div>
                                    <div class="row">
                                        ENDEREÇO: <%# Eval("endereco") %>
                                    </div>
                                    <div class="row">
                                        TELEFONE: <%# Eval("telefone") %>
                                    </div>
                                    <div class="row">
                                        SALÁRIO: <%# Eval("salario") %>
                                    </div>
                                    <div class="row">
                                        CARGO: <%# Eval("cargo") %>
                                    </div>
                                    <div class="row">
                                        TURNO: <%# Eval("turno") %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
