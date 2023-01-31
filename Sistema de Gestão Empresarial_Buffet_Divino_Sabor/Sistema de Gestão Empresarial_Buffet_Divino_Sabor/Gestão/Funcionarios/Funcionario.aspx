<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Funcionarios.Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
        <script src="JavaScript.js"></script>
    </header>
    <!--Barra Secundaria!-->
    <div class="nav-secondary">
        <div class="nav-secondary-option" id="option1">Funcionários</div>
        <div class="nav-secondary-option" id="option2">Escala</div>
        <div class="nav-secondary-line"></div>
    </div>
    <!--Conteudo!-->
    <div id="content" class="conteudo">
        <div id="Funcionarios">
            <div id="create" class="col-md-6">
                <div class="infobox">
                    <div id="infos1" class="row">
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtNome"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtCPF"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="margin-top:5px">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtCargo"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtTurno"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div id="infos2" class="row" style="margin-top:20px">
                        <div class="row">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtRua"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtNumro"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="margin-top:5px">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtBairro"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtCidadeEstado"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="margin-top:5px">
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtTelefone"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox runat="server" ID="txtSalario"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="buttonBox" class="row" style="margin-top:5px">
                    <asp:Button runat="server" ID="btnCadastrar" Text="Cadastrar" />
                </div>
            </div>
            <div id="read" class="col-md-6"></div>
        </div>
        <div id="Escalas"></div>
    </div>
    <!--Modal!-->
    <div id="modal"></div>
</asp:Content>
