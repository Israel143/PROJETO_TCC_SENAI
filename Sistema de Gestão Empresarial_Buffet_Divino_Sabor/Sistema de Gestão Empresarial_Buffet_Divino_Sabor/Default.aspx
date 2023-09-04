<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url(imgs/background.png);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin-right: 0 !important;
        }

        #conteudo {
            background-color: rgba(148, 40, 40, 0.67);
            padding: 30px;
            width: 50%;
            height: 739px;
            right: 0px;
            position: absolute;
        }
        #titulo{
            font-family:serif;
            font-size:72px;
            color:white;
            font-weight: 600;
        }
        #descricao{
            font-family:'Adobe Myungjo Std';
            color:white;
            width:75%;
            text-align:justify;
            margin:20px 0 20px 60px;
        }
        .my-btn-lg {
            background-color: #942828;
            text-align: center;
            font-family: serif;
            font-size: 23px;
            font-weight: 500;
            padding: 5px;
            color: white;
            width: 150px;
            height: unset;
            border-radius: 30px;
            box-shadow: #000000 5px 1px 15px;
            display: block;
        }
    </style>

    <div id="conteudo">
        <div id="titulo">
            GEvent
        </div>
        <div id="descricao">
            <p> Estima-se que atualmente no Brasil, 
                o setor de festas e eventos movimente mais de R$300 bilhões, 
                sendo imprescindível que as empresas do setor aprimorem seus 
                processos de gestão, para torná-las mais eficientes. Nesse contexto, 
                a empresa necessita de um sistema de gestão informatizado, para ajudar 
                e facilitar a administração do negócio, de modo a auxiliar a gestão de 
                estoque de produtos, cadastro de clientes, gestão financeira e controle e 
                registro de pedidos. Vamos tentar criar um sistema intuitivo para simplificar 
                a demanda da empresa.</p>
        </div>
        <br />
        <br />
        <div id="botoes" style="margin-top:150px; margin-left:30px; margin-right:30px" >
            <div class="col-md-4">
            <p><a href="Login/Login.aspx" class="my-btn-lg">Cadastrar Empresa</a></p>
        </div>
        <div class="col-md-4">
            <p><a href="Login/Login Cliente.aspx" class="my-btn-lg">Cadastrar Cliente</a></p>
        </div>
        </div>      
    </div>

</asp:Content>
