<%@ Page Title="Fale com a gente!" Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Suporte.Contato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div id="contato" style="background-color:gainsboro; align-content: center; margin: 90px 50px; padding: 30px; width: 600px">
            <h1 class="row">Entre em contato com a gente!</h1>
            <div id="remetente" style="margin: 30px; padding: 30px">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="lblNome" runat="server" Text="Seu nome"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row" style="margin-top: 10px">
                    <div class="col-md-3">
                        <asp:Label ID="lblEmail" runat="server" Text="Seu Email"></asp:Label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div id="opcoes" style="margin: 30px 30px 0 30px; padding: 30px">
                <div class="row">
                    <div class="col-sm-6">
                        <div id="assunto" style="margin-bottom: 10px">
                            <asp:DropDownList runat="server" ID="ddlAssunto" OnSelectedIndexChanged="ddlAssunto_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Assunto"></asp:ListItem>
                                <asp:ListItem Text="Cadastro" Value="Cadastro"></asp:ListItem>
                                <asp:ListItem Text="Login" Value="Login"></asp:ListItem>
                                <asp:ListItem Text="Credenciamento" Value="Credenciamento"></asp:ListItem>
                                <asp:ListItem Text="Sugestão" Value="Sugestão"></asp:ListItem>
                                <asp:ListItem Text="Reclamação" Value="Reclamação"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div id="conteudo" class="row" style="margin-bottom: 10px">
                            <asp:TextBox ID="txtConteudo" Style="height: 50px" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-left:0">
                    <div id="enviar">
                        <asp:Button runat="server" ID="btnEnviar" Text="Enviar" OnClick="btnEnviar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
