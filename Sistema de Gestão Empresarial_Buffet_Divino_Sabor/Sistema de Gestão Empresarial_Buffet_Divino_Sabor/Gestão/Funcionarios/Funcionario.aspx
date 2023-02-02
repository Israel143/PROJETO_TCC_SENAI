<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Funcionarios.Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
        <script src="JavaScript.js"></script>
    </header>
    <!--Barra Secundaria!-->
    <div class="nav-secondary">
        <button onclick="showDiv('funcionarios');return;" type="button"> Funcionários</button>
        <button onclick="showDiv('escalas')" type="button">Escalas</button>
    </div>
    <!--Conteudo!-->
    <div id="content" class="conteudo">
        <div id="funcionarios" style="display:block">
            <div id="create" class="col-md-5">
                <div class="infobox">
                    <div id="infos1" class="row">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblNome" Text="Nome:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtNome"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblCPF" Text="CPF:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtCPF"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 5px">
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblCargo" Text="Cargo:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtCargo"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblTurno" Text="Turno:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtTurno"></asp:TextBox>
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
                                    <asp:TextBox runat="server" ID="txtRua"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblnumero" Text="Numero:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtNumero"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 5px">
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblBairro" Text="Bairro:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtBairro"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblCidadeEstado" Text="Cidade e Estado:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtCidadeEstado"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 5px">
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblTelefone" Text="Telefone:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtTelefone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <asp:Label runat="server" ID="lblSalario" Text="Salário:"></asp:Label>
                                </div>
                                <div class="row">
                                    <asp:TextBox runat="server" ID="txtSalario"></asp:TextBox>
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
                        <asp:Button runat="server" ID="btnCadastrar" Onclick="btnCadastrar_Click" Text="Cadastrar" />
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
            <div class="col-md-2"></div>
            <div id="read" class="col-md-5">
                <div id="srcBox" style="margin-top: 20px" class="row">
                    <div class="col-sm-4">
                        <asp:TextBox runat="server" ID="txtPesquisa"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button runat="server" ID="btnPesquisa" Onclick="btnPesquisa_Click" Text ="Pesquisar" />
                        <br />
                        <br />
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <div id="resultBox" class="row">
                    <asp:GridView ID="GridView1" runat="server" CssClass= "Grid"  AutoGenerateColumns="false" style="width:600px; height:300px">
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
        <div id="escalas" style="display:none">
            <h1>ESCALA DE SERVIÇO</h1>
        </div>
    </div>
    <!--Modal!-->
    <div id="modal"></div>
</asp:Content>
