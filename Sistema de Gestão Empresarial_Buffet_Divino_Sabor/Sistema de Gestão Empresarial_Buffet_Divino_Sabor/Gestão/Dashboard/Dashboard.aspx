<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Dashboard.css">
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>

    <div class="body">
        <div id="content" class="content">
            <div class="col-md-9">
                <div id="fluxo_caixa" class="row">
                    <div id="valores" class="row">
                        <div class="col-md-4">
                            <div id="pedidos" class="box-p">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div id="despesas" class="box-p">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div id="total" class="box-p">
                            </div>
                        </div>
                    </div>
                    <div id="graficos" class="row">
                        <div class="col-md-6">
                            <div id="grafic_pedidos" class="box-hor">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div id="grafic_faturamento" class="box-hor">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="row">
                    <div id="comentarios" class="box-vert"></div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
