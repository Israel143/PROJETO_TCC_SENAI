<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Funcionarios.Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="funcionarioestilo.css" />
        <script src="JavaScript.js"></script>
        <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    </header>
    <div id="escopo" class="escopo">
        <!--Barra Secundaria!-->
        <div class="row nav-secondary">
            <a onclick="showDiv('funcionarios');return;" href="#" class="item-nav" type="button">Funcionários</a>
            <a onclick="showDiv('escalas')" href="#" class="item-nav" type="button">Escalas</a>
        </div>
        <!--Conteudo!-->
        <div id="content" class="row conteudo">
            <div id="funcionarios" style="display: block">
                <div id="create" class="col-md-5">
                    <div class="infobox">
                        <div id="infos1" class="row">
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
                        <div id="infos2" class="row" style="margin-top: 20px">
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
                            <asp:Button runat="server" ID="btnCadastrar" OnClick="btnCadastrar_Click" CssClass="btn" Text="Cadastrar" />
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </div>
                <div class="col-md-2"></div>
                <div id="read" class="col-md-5">
                    <div id="srcBox" style="margin-top: 20px; margin-bottom:20px" class="row">
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="txtPesquisa" CssClass="txtbox"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:Button runat="server" ID="btnPesquisa" OnClick="btnPesquisa_Click" CssClass="btn" Text="Pesquisar" />
                        </div>
                    </div>
                    <div id="resultBox" class="row">
                        <asp:GridView ID="GridView1" style="background-color: rgba(71, 0, 0, 0.45); padding:10px; color:white; width:60%; margin-left:0; border:thin;" runat="server" CssClass="Grid" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="nome" HeaderText="Nome" />
                                <asp:BoundField DataField="cpf" HeaderText="CPF" />
                                <asp:BoundField DataField="endereco" HeaderText="Endereço" />
                                <asp:BoundField DataField="telefone" HeaderText="Telefone" />
                                <asp:BoundField DataField="salario" HeaderText="Salário" />
                                <asp:BoundField DataField="cargo" HeaderText="Cargo" />
                                <asp:BoundField DataField="turno" HeaderText="Turno" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div id="escalas" style="display: none">
                <h1>ESCALA DE SERVIÇO</h1>
            </div>
        </div>
    </div>
    <!--Modal!-->
    <div id="modal"></div>
</asp:Content>
