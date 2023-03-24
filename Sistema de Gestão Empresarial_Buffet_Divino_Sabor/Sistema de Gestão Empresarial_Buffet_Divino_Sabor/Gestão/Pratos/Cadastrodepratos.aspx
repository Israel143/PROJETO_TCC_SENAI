<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrodepratos.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Menu.Cadastrodepratos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row text-center">
        <h1>Cadastro de novos pratos</h1>
    </div>

   
        <div class="col-sm-2" style="padding-right:40px;">

            <h3>Pratos de entrada</h3>

            <br />
            <asp:Label Text="Alcatra ao molho roti" runat="server" ID="Alcatra_ao_molho_roti"></asp:Label>
            <br />
            <asp:Label Text="Caprese no palito" runat="server" ID="Caprese_no_palito"></asp:Label>
            <br />
            <asp:Label Text="Canapés de salame" runat="server" ID="Canapes_de_salame"></asp:Label>
            <br />
            <asp:Label Text="Patê de azeitona com torradinhas" runat="server" ID="Pate_de_azeitona_com_torradinhas"></asp:Label>
            <br />
            <asp:Label Text="Espetinho de carambola" runat="server" ID="Espetinho_de_carambola"></asp:Label>
            <br />
            <asp:Label Text="Tábua de queijos" runat="server" ID="Tabua_de_queijos"></asp:Label>
            <br />
            <asp:Label Text="Carpaccio" runat="server" ID="Carpaccio"></asp:Label>
            <br />
            <asp:Label Text="Antepasto de berinjela" runat="server" ID="Antepasto_de_berinjela"></asp:Label>
            <br />
            <asp:Label Text="Ceviche clássico" runat="server" ID="Ceviche_classico"></asp:Label>
            <br />
            <asp:Label Text="Polenta grelhada com molho de espinafre e cogumelos" runat="server" ID="Polenta_grelhada"></asp:Label>
            <br />
            <asp:Label Text="Pera assada com catupiry de chuchu" runat="server" ID="Pera_assada"></asp:Label>
            <br />
            <asp:Label Text="Coquetel de camarão" runat="server" ID="Coquetel_de_camarao"></asp:Label>
            <br />
            <asp:Label Text="Vinagrete de jilo" runat="server" ID="Vinagrete_de_jilo"></asp:Label>
            <br />
            <asp:Label Text="Antepasto de abobrinha com champignon" runat="server" ID="Antepasto_de_abobrinha"></asp:Label>
            <br />
            <asp:Label Text="Confit de tomate e cebola" runat="server" ID="Confit_tomate"></asp:Label>
            <br />

        </div>

        <div class="col-sm-2">

            <h3>Saladas</h3>

            <br />
            <asp:Label Text="Salada de feijão branco" runat="server" ID="Salada_de_feijao_branco"></asp:Label>
            <br />
            <asp:Label Text="Salada de repolho cremoso" runat="server" ID="Salada_de_repolho_cremoso"></asp:Label>
            <br />
            <asp:Label Text="Salada de batata com ovos" runat="server" ID="Salada_de_batata"></asp:Label>
            <br />
            <asp:Label Text="Salada de berinjela" runat="server" ID="Salada_de_berinjela"></asp:Label>
            <br />
            <asp:Label Text="Salada com hortelã" runat="server" ID="Salada_com_hortela"></asp:Label>
            <br />
            <asp:Label Text="Salada de rúcula com manga" runat="server" ID="Salada_de_rucula"></asp:Label>
            <br />
            <asp:Label Text="Salada mediterrânea" runat="server" ID="Salada_mediterranea"></asp:Label>
            <br />
            <asp:Label Text="Vinagrete de verão" runat="server" ID="Vinagrete_de_verao"></asp:Label>
            <br />
            <asp:Label Text="Salada Niçoise" runat="server" ID="Salada_Nicoise"></asp:Label>
            <br />
            <asp:Label Text="Salada caesar com frango grelhado" runat="server" ID="Salada_caesar"></asp:Label>
            <br />
            <asp:Label Text="Salada com ricota" runat="server" ID="Salada_com_ricota"></asp:Label>
            <br />
            <asp:Label Text="Salada Verão" runat="server" ID="Salada_Verão"></asp:Label>
            <br />
            <asp:Label Text="Salada de brócolis e couve-flor" runat="server" ID="Salada_de_brocolis"></asp:Label>
            <br />
            <asp:Label Text="Salada com abacaxi grelhado" runat="server" ID="Salada_com_abacaxigrelhado"></asp:Label>
            <br />
            <asp:Label Text="Salada tropical com maionese" runat="server" ID="Salada_tropical_com_maionese"></asp:Label>
            <br />
            <asp:Label Text="Salada tropical no espeto" runat="server" ID="Salada_tropical"></asp:Label>
        </div>


        <div class="col-sm-2">

            <h3>Pratos principais</h3>

            <br />
            <asp:Label Text="Contra Filé Grelhado" runat="server" ID="Contra_File_Grelhado"></asp:Label>
            <br />
            <asp:Label Text="Espaguete Formaggio Quatro Queijos" runat="server" ID="Espaguete_Formaggio"></asp:Label>
            <br />
            <asp:Label Text="Risoto de Moqueca Frutos do Mar" runat="server" ID="Risoto_de_Moqueca"></asp:Label>
            <br />
            <asp:Label Text="Milanesa de Carne" runat="server" ID="Milanesa_de_Carne"></asp:Label>
            <br />
            <asp:Label Text="Feijoada do Rango Brazuca" runat="server" ID="Feijoada_do_Rango"></asp:Label>
            <br />
            <asp:Label Text="Estrogonofe de Frango Deli Express by Sodexo'" runat="server" ID="Estrogonofe_de_FrangoDeli"></asp:Label>
            <br />
            <asp:Label Text="Bacalhau Zé do Pipo A Quinta do Marquês" runat="server" ID="Bacalhau_Ze"></asp:Label>
            <br />
            <asp:Label Text="Almôndegas" runat="server" ID="Almondegas"></asp:Label>
            <br />
            <asp:Label Text="Arroz de forno" runat="server" ID="Arroz_de_forno"></asp:Label>
            <br />
            <asp:Label Text="Bolo de carne vegano" runat="server" ID="Bolo_de_carnevegano"></asp:Label>
            <br />
            <asp:Label Text="Brócolis refogado com cenoura" runat="server" ID="Brocolis_refogado"></asp:Label>
            <br />
            <asp:Label Text="Costelinha de porco na panela de pressão" runat="server" ID="Costelinha_de_porco"></asp:Label>
            <br />
            <asp:Label Text="Espaguete integral ao alho e óleo" runat="server" ID="Espaguete_integral"></asp:Label>
            <br />
            <asp:Label Text="Estrogonofe de berinjela" runat="server" ID="Estrogonofe_de_berinjela"></asp:Label>
            <br />
            <asp:Label Text="Filé de frango com molho de mostarda" runat="server" ID="File_de_frango"></asp:Label>
            <br />
            <asp:Label Text="Rocambole de carne moída" runat="server" ID="Rocambole_de_carne_moida"></asp:Label>
        </div>

        <br />
        <div class="col-sm-2">

            <h3>Sobremesas</h3>

            <br />
            <asp:Label Text="Frozen Yogurt" runat="server" ID="Frozen_Yogurt"></asp:Label>
            <br />
            <asp:Label Text="Suflê de Banana e Canela" runat="server" ID="Sufle_de_Banana"></asp:Label>
            <br />
            <asp:Label Text="Mousse de Chocolate Light" runat="server" ID="Mousse_de_Chocolate"></asp:Label>
            <br />
            <asp:Label Text="Petit Gâteau Tradicional" runat="server" ID="Petit_Gateau_Tradicional"></asp:Label>
            <br />
            <asp:Label Text="Crème Brûlée" runat="server" ID="Creme_Brulee"></asp:Label>
            <br />
            <asp:Label Text="Tiramisù" runat="server" ID="Tiramisu"></asp:Label>
            <br />
            <asp:Label Text="Sagu" runat="server" ID="Sagu"></asp:Label>
            <br />
            <asp:Label Text="Salada de frutas" runat="server" ID="Salada_de_frutas"></asp:Label>
            <br />
            <asp:Label Text="Chico Balanceado" runat="server" ID="Chico_Balanceado"></asp:Label>
            <br />
            <asp:Label Text="Canjica com leite condensado" runat="server" ID="Canjica_com_leitecondensado"></asp:Label>
            <br />
            <asp:Label Text="Arroz Doce" runat="server" ID="Arroz_Doce"></asp:Label>
            <br />
            <asp:Label Text="Brownie" runat="server" ID="Brownie"></asp:Label>
            <br />
            <asp:Label Text="Mini Churros" runat="server" ID="Mini_Churros"></asp:Label>
            <br />
            <asp:Label Text="Pavê de Cookies" runat="server" ID="Pave_de_Cookies"></asp:Label>
            <br />
            <asp:Label Text="Cheesecake de Frutas Vermelhas" runat="server" ID="Cheesecake_de_Frutas_Vermelhas"></asp:Label>
            <br />
            <asp:Label Text="Churros" runat="server" ID="Churros"></asp:Label>
        </div>

        <br />
        <div class="col-sm-2">


            <h3>Bebidas</h3>
            <br />


            <asp:Label Text="Suco de Laranja" runat="server" ID="Suco_de_Laranja"></asp:Label>
            <br />
            <asp:Label Text="Suco de Uva" runat="server" ID="Suco_de_Uva"></asp:Label>
            <br />
            <asp:Label Text="Suco de Morango" runat="server" ID="Suco_de_Morango"></asp:Label>
            <br />
            <asp:Label Text="Suco de Goiaba" runat="server" ID="Suco_de_Goiaba"></asp:Label>
            <br />
            <asp:Label Text="Suco de Maracujá" runat="server" ID="Suco_de_Maracuja"></asp:Label>
            <br />
            <asp:Label Text="Suco de limão" runat="server" ID="Suco_de_limao"></asp:Label>
            <br />
            <asp:Label Text="Suco de manga" runat="server" ID="Suco_de_manga"></asp:Label>
            <br />
            <asp:Label Text="Suco de acerola" runat="server" ID="Suco_de_acerola"></asp:Label>
            <br />
            <asp:Label Text="Suco de abacaxi" runat="server" ID="Suco_de_abacaxi"></asp:Label>
            <br />
            <asp:Label Text="Suco de hortelã" runat="server" ID="Suco_de_hortela"></asp:Label>
            <br />
            <asp:Label Text="Fanta Uva" runat="server" ID="Fanta_Uva"></asp:Label>
            <br />
            <asp:Label Text="Fanta Laranja" runat="server" ID="Fanta_Laranja"></asp:Label>
            <br />
            <asp:Label Text="Fanta Mistério" runat="server" ID="Fanta_Misterio"></asp:Label>
            <br />
            <asp:Label Text="Sprite" runat="server" ID="Sprite"></asp:Label>
            <br />
            <asp:Label Text="Coca-Cola" runat="server" ID="Coca_Cola"></asp:Label>
            <br />
            <asp:Label Text="Guaraná" runat="server" ID="Guarana"></asp:Label>

        </div>
    </div>
    <br />
    <div class="col-sm-12">
        <br />

        <asp:TextBox runat="server" ID="txt_cadastro_pratos" class="txtbox"></asp:TextBox>

    </div>
</asp:Content>
