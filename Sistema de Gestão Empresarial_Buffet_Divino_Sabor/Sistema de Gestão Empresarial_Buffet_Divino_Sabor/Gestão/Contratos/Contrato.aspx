<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contrato.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos.Contrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Busca de Contratos/EstiloContratos.css" />
    <link rel="stylesheet" href="../../CSS PADRÃO/EstiloPadrao.css" />
    <link rel="stylesheet" type="text/css" href="print.css" media="print" />
    <script src="../../JS PADRÃO/NavBarPadrao.js"></script>

    <div id="contrato" style="background-color:white; padding:50px; margin-top:50px">
        <p>
        <b>IDENTIFICAÇÃO DAS PARTES CONTRATANTES</b>
        </p>
        <p>
            <b>CONTRATANTE:</b> <b><%=Nome_da_Contratante%></b>, com telefone <b><%=Contato_Contrante%></b> portador do email <b><%=Email_Contratante%></b>.
        </p>
        <br />
        <p>
            <b>CONTRATADA:</b> <b><%=Nome_da_Contratada%></b>, inscrita no C.N.P.J. sob o nº<b><%=CNPJ_Contratada%></b>, neste ato  residente e domiciliado na <b><%=Endereco_Contratada%></b> ,email <b><%=Email_Contratada%></b> ,contato <b><%=Contato_Contratada%></b></p>.
        <br />
        As partes acima identificadas têm, entre si, justo e acertado o presente Contrato de Prestação de Serviços de Buffet, que se regerá pelas cláusulas seguintes e pelas condições de preço, forma e termo de pagamento descritas no presente.
        <p>
            <br />
           <b>DO OBJETO DO CONTRATO</b>
        </p>

        <br />
        <p>
            <b>Cláusula 1ª.</b> É objeto do presente contrato a prestação pela CONTRATADA à CONTRATANTE dos serviços de Buffet, em evento que se realizará na data de <b><%=Data%></b>, no salão de festas.
        <br />
        <b>EVENTO</b>
        <p>
            <b>Cláusula 2ª.</b> O evento, para cuja realização são contratados os serviços de buffet, é um baile de confraternização da empresa CONTRATANTE, e contará com a presença de pessoas.
        </p>
        <br />
        <p>
            Parágrafo único. O evento realizar-se-á no horário e local indicado no caput da cláusula 1ª, devendo o serviço de buffet ser prestado até às horas contratada.
        </p>
        <br />
        <p>
            <b>OBRIGAÇÕES DA CONTRATANTE</b>
        </p>
        <br />
        <p>
            <b>Cláusula 3ª.</b> A CONTRATANTE deverá fornecer à CONTRATADA todas as informações necessárias à realização adequada do serviço de buffet, devendo especificar os detalhes do evento, necessários ao perfeito fornecimento do serviço, e a forma como este deverá ser prestado.
        </p>
        <br />
        <p>
            <b>Cláusula 4ª.</b>  A CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na <b>cláusula 6ª</b>.
        </p>
        <br />
        <p>
            <b>OBRIGAÇÕES DA CONTRATADA</b>
        </p>
        <br />
        <p>
            <b>Cláusula 5ª.</b> É dever da CONTRATADA oferecer um serviço de buffet de acordo com as especificações da CONTRATANTE, devendo o serviço iniciar-se às 2 horas antes  e terminar às 2 horas depois.
        </p>
        <br />
        <p>
            Parágrafo único. A CONTRATADA está obrigada a fornecer aos convidados do CONTRATANTE produtos de alta qualidade, que deverão ser preparados e servidos dentro de rigorosas normas de higiene e limpeza.
        </p>
        <br />
        <p>
            <b>Cláusula 6ª.</b> A CONTRATADA será responsável pela ornamentação do salão, fornecendo toalhas e enfeites de mesa, pratos, copos, taças, talheres, bandejas, richaud, balde de gelo, e demais utensílios, cujo rol segue em anexo ao presente contrato, necessários para o melhor desempenho da prestação do serviço.
        </p>
        <br />
        <p>
            <b>Cláusula 7ª.</b> A CONTRATADA compromete-se a chegar no local do evento às horas, a fim de arrumar o salão com antecedência de duas horas.
        </p>
        <br />
        <p>
            <b>Cláusula 8ª.</b> A CONTRATADA se compromete a fornecer o cardápio escolhido pela CONTRATANTE, cujas especificações, inclusive de quantidade a ser servida, encontram-se em documento anexo ao presente contrato, passando a integrar-lhe.
        </p>
        <br />
        <p>
            <b>Cláusula 9.</b> A CONTRATADA será a única e exclusiva responsável por todos os seus empregados que trabalharem no evento referido na cláusula 2ª, cabendo a ela o cumprimento das obrigações sociais, trabalhistas, previdenciárias, tributárias, entre outras, referentes à prestação dos serviços ora contratados.
        </p>
        <br />
        <p>
            <b>Cláusula 10.</b> A CONTRATADA obriga-se a manter todos os seus empregados devidamente uniformizados durante a prestação dos serviços ora contratados, garantindo que todos eles possuem os requisitos de urbanidade, moralidade e educação.
        </p>
        <br />
        <p>
            Parágrafo único. Caso algum empregado seja afastado em virtude de procedimento ou conduta inadequada, a critério do CONTRATANTE, a CONTRATADA poderá substituí-lo, sob pena de ser obrigada ao pagamento da multa contratual determinada na cláusula 16 deste instrumento.
        </p>
        <br />
        <p>
            <b>PREÇO E DAS CONDIÇÕES DE PAGAMENTO</b>
        </p>
        <br />
        <p>
            <b>Cláusula 11.</b> O serviço contratado no presente instrumento será remunerado pela quantia de (valor expresso), devendo ser pago em dinheiro ou cheque, até a data de <b><%=Data%></b>.
        </p>
        <br />
        <p>
            <b>INADIMPLEMENTO</b>
        </p>
        <br />
        <p>
            <b>Cláusula 12.</b> Em caso de inadimplemento por parte do CONTRATANTE quanto ao pagamento do serviço prestado, deverá incidir sobre o valor do presente instrumento, multa pecuniária de 2%, juros de mora de 1% ao mês e correção monetária.
        </p>
        <br />
        <p>
            Parágrafo único. Em caso de cobrança judicial, devem ser acrescidas custas processuais e 20% de honorários advocatícios.
        </p>
        <br />
        <p>
            <b>DA DEVOLUÇÃO</b>
        </p>
        <br />
        <p>
            <b>Cláusula 13.</b> Todos os utensílios e objetos fornecidos pela CONTRATADA, cujo rol encontra-se em anexo, deverão ser devolvidos em perfeito estado de conservação, sob pena da CONTRATANTE arcar com os respectivos valores de reposição, os quais encontram-se também discriminados no aludido rol.
        </p>
        <br />
        <p>
            Parágrafo primeiro. Os valores de reposição deverão ser pagos até duas horas após a realização do evento, sob pena de incidir a aplicação da multa, dos juros e da correção monetária, previstos na cláusula anterior.
        </p>
        <br />
        <p>
            Parágrafo segundo. Estão incluídos nos objetos, referidos no caput da presente cláusula, os enfeites das mesas.
        </p>
        <br />
        <p>
            <b>DA RESCISÃO</b>
        </p>
        <br />
        <p>
            <b>Cláusula 14.</b> O presente contrato poderá ser rescindido unilateralmente por qualquer uma das partes, desde que haja comunicação formal por escrito justificando o motivo. Deverá acontecer, além disso, até 2 dias corridos, antes da data prevista para o evento.
        </p>
        <br />
        <p>
            <b>DAS MULTAS CONTRATUAIS</b>
        </p>
        <br />
        <p>
            <b>Cláusula 15.</b> Salvo o caso de rescisão já previsto na cláusula imediatamente anterior, fica estabelecido que a parte infratora a quaisquer cláusulas do presente contrato, pagará à parte prejudicada multa equivalente a (valor expresso) sobre o valor do contrato, independente de ação judicial específica para ressarcimento de perdas e danos que poderá ser movida pela parte prejudicada.
        </p>
        <br />
        <p>
            <b>DAS CONDIÇÕES GERAIS</b>
        </p>
        <br />
        <p>
            <b>Cláusula 16.</b> A quantidade de comida e bebida foi determinada de acordo com a indicação da CONTRATADA, e, portanto, esta poderá ser responsabilizada pela insuficiência da comida e/ou da bebida fornecida no evento, devendo proceder à devolução do valor pago pela CONTRATANTE.
        </p>
        <br />
        <p>
            Parágrafo único. Caso seja possível, e para afastar a devolução determinada no caput da presente cláusula, a CONTRATADA poderá complementar o buffet servido, durante a realização do evento.
        </p>
        <br />
        <p>
            <b>Cláusula 17.</b> O cardápio foi elaborado de acordo com o número de convidados determinado pela CONTRATANTE, e de acordo com as solicitações desta. Portanto, a CONTRATADA não será responsabilizada se, atendidas as especificações contratadas, a insuficiência da comida e/ou da bebida resultar da entrada de número maior de pessoas no evento.
        </p>
        <br />
        <p>
            <b>Cláusula 18.</b> Salvo com a expressa autorização da CONTRATANTE, não pode a CONTRATADA transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
        </p>
        <br />
        <p>
            <b>Cláusula 19.</b> Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.
        </p>
        <br />
        <p>
            <b>Cláusula 20.</b> Qualquer alteração, modificação, complementação, ou ajuste, somente será reconhecido e produzirá efeitos legais, se incorporado ao presente contrato mediante Termo Aditivo, devidamente assinado pelas partes contratantes.
        </p>
        <br />
        <b>FORO</b>
        <br />
        <p>
            <b>Cláusula 21.</b> Para dirimir quaisquer controvérsias oriundas do presente contrato, as partes elegem o foro da comarca;
        </p>
        <br />
        <p>
            Por estarem assim justos e contratados, firmam o presente instrumento, em duas vias de igual teor.
        </p>
        <br />
        <br />
        <p style="text-align:right">
    
            Itajubá, <b><%=Data%></b> e Ano <b><%=DataZ.Year%></b>
        </p>
        <br />
        <p>
            <center>
            
            _________________________________________<br />
     <br />
      Nome da Contratante <b><%=Nome_da_Contratante%></b>
                </center>
        </p>
        <br />
        <br />

        <center>
         _________________________________________<br />
       <br />
       Nome da Contratada <b><%=Nome_da_Contratada%></b> 
         </center>
    
    </div>
    <footer style="text-align: center">
        <div class="hidden-print">
            <button type="button" value="imprimir" onclick="window.print();" class="my-btn-lg" style="align-content: center; margin-top:15px; margin-left:500px">Imprimir</button>
        </div>
    </footer>
</asp:Content>
