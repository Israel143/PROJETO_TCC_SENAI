<<<<<<< HEAD
<<<<<<< HEAD
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Clientes.Menu" %>
=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu" %>

>>>>>>> 2497a444d4c12f9d9997d7dda3fdc4b6ee7069c6
=======

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu" %>

>>>>>>> 99fd60d9383dfd79cd7b29d77045156a5b7b38fc
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Menu.css" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>
    <div id="conteudo">
        <div id="selecao" class="col-sm-5">
            <div class="row">
                <p>Menu:</p>
                <asp:DropDownList runat="server" ID="ddlMenu" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Selecione um menu"></asp:ListItem>
                    <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
                    <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
                    <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
                    <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
                    <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Repeater ID="RepeatPratos" runat="server">
                <ItemTemplate>
                    <div id="opcoes">
                        <div class="col-sm-8">
                            <div id="nome">
                                <asp:Label ID="LblNome" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                            </div>

<<<<<<< HEAD
<<<<<<< HEAD
 <div class ="col-sm-8">
         <p>Menu:</p>
     <asp:DropDownList runat ="server" id="ddlMenu" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged" AutoPostBack="true" >
          <asp:ListItem Text="Selecione um menu"></asp:ListItem>
          <asp:ListItem Text="Entrada" Value="entrada"></asp:ListItem>
          <asp:ListItem Text="Salada" Value="salada"></asp:ListItem>
          <asp:ListItem Text="Jantar" Value="jantar"></asp:ListItem>
          <asp:ListItem Text="Bebida" Value="bebida"></asp:ListItem>
          <asp:ListItem Text="Sobremesa" Value="sobremesa"></asp:ListItem>
        
          </asp:DropDownList>
     

          <asp:GridView ID="GridView2" CssClass= "Grid " runat="server" AutoGenerateColumns="false" style="width:800px; height:500px"
               OnRowCommand="GridView2_RowCommand">
      <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" Visible="false" />
        <asp:BoundField DataField="escolha" HeaderText="ESCOLHA" />
       <asp:ButtonField CommandName="Escolha realizada" Text="Escolher prato" />

      </Columns>
=======
=======
>>>>>>> 99fd60d9383dfd79cd7b29d77045156a5b7b38fc
                            <div id="preco">
                                <asp:Label ID="LblPreco" runat="server" Text='<%# Eval("preco") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <asp:Button ID="BtnSelect" OnClick="BtnSelect_Click" runat="server" ClientIDMode="Static" Text="Escolher Prato" CommandArgument='<%# Eval("Id") %>' />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-sm-2"></div>
<<<<<<< HEAD
>>>>>>> 2497a444d4c12f9d9997d7dda3fdc4b6ee7069c6
=======
>>>>>>> 99fd60d9383dfd79cd7b29d77045156a5b7b38fc

        <div id="pedido" class="col-sm-5">
            <div id="carrinho">
                <p>CARRINHO</p>
                <div id="valorTotal">
                    Total da compra: R$<asp:Label runat="server" ID="lblValorT"></asp:Label>
                </div>
                <div id="selecionados" class="row">
                    <asp:Repeater ID="RepeatPratoSelected" runat="server">
                        <ItemTemplate>
                            <div id="opcoes">
                                <div class="col-sm-8">
                                    <div id="categoria">
                                        <asp:Label ID="LblCategoria" runat="server" Text='<%# Eval("categoria") %>'></asp:Label>
                                    </div>

                                    <div id="NomeSelected">
                                        <asp:Label ID="LblNomeSelected" runat="server" Text='<%# Eval("nome") %>'></asp:Label>
                                    </div>

                                    <div id="PrecoSelected">
                                        <asp:Label ID="LblPrecoSelected" runat="server" Text='<%# Eval("preco") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <asp:Button ID="descartar" runat="server" Text="Descartar" OnClick="descartar_Click" CommandArgument='<%# Eval("Id") %>' />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div id="finaliza" class="row">
                    <asp:Button runat="server" ID="BtnFinaliza" Text="Finalizar" OnClick="BtnFinaliza_Click" />
                </div>
            </div>
            <div id="finalizar"></div>
        </div>
    </div>
</asp:Content>
