<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contrato.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos.Contrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Busca de Contratos/EstiloContratos.css" />
    <link rel="stylesheet" type="text/css" href="print.css" media="print" />
    <div></div>
    <p>
        <header><b>CONTRATO DE PRESTAÇÃO DE SERVIÇOS DE BUFFET</b></header>
    </p>

    <article style="text-align: justify"></article>
    <p>
        IDENTIFICAÇÃO DAS PARTES CONTRATANTES
    </p>
    <p>
        CONTRATANTE: <%=Nome_da_Contratante%>, com sede em <%=Sede_Contratante%>, na Rua <%=Rua_Contratante%>, nº <%=Numero_Contratante%>, bairro <%=Bairro_Contratante%>, Cep <%=CEP_Contratante%>, no Estado <%=Estado_Contratante%>, inscrita no C.N.P.J. sob o nº <%=CNPJ_Contratante%>, e no Cadastro Estadual sob o nº <%=Numero_Estadual_Contrante%>, neste ato representada pelo seu diretor <%=Diretor_Contratante%>, <%=Nacionalidade_Contratante%>, <%=Estado_Civil_Contrante%>, <%=Profissao_Contrante%>, Carteira de Identidade nº <%=Numero_da_Indentidade_Contrante%>, C.P.F. nº <%=CPF_Contrante%>, residente e domiciliado na Rua <%=Rua_Contratante%>, nº<%=Numero_Contratante%>, bairro <%=Bairro_Contratante%>, Cep <%=CEP_Contratante%>, Cidade <%=Cidade_Contrante%>, no Estado <%=Estado_Contratante %>.
    </p>
    <br />
    <p>
        CONTRATADA: <%=Nome_da_Contratada%>, com sede em <%=Sede_Contratada%>, na Rua <%=Rua_Contratada%>, nº <%=Numero_Contratada%>, bairro <%=Bairro_Contratada%>, Cep <%=CEP_Contratada%>, no Estado <%=Estado_Contratada%>, inscrita no C.N.P.J. sob o nº <%=CNPJ_Contratada%>, e no Cadastro Estadual sob o nº <%=Numero_Estadual_Contratada%>, neste ato representada pelo seu diretor <%=Diretor_Contratada%>, <%=Nacionalidade_Contratada%>, <%=Estado_Civil_Contratada%>, <%=Profissao_Contratada%>, Carteira de Identidade nº <%=Numero_da_Indentidade_Contratada%>, C.P.F. nº <%=CPF_Contratada%>, residente e domiciliado na Rua <%=Rua_Contratada %>, nº <%=Numero_Contratada%>, bairro <%=Bairro_Contratada%>, Cep <%=CEP_Contratada%>, Cidade <%=Cidade_Contratada%>, no Estado <%=Estado_Contratada%>.
    </p>
    <br />
    As partes acima identificadas têm, entre si, justo e acertado o presente Contrato de Prestação de Serviços de Buffet, que se regerá pelas cláusulas seguintes e pelas condições de preço, forma e termo de pagamento descritas no presente.
    <p>
        <br />
        DO OBJETO DO CONTRATO
    </p>

    <br />
    <p>
        <b>Cláusula 1ª.</b> É objeto do presente contrato a prestação pela CONTRATADA à CONTRATANTE dos serviços de Buffet, em evento que se realizará na data de <%=Data%>, às <%=Horas%> horas, no salão de festas <%=Salao_Festas%>, situado à Rua <%=Rua_Festas%>, nº <%=Numero_Festa%>, Bairro <%=Bairro_Festa%>, na cidade de <%=Cidade_Festa%>, no Estado de <%=Estado_Festa%>.
    </p>
    <br />
    DO EVENTO
    <p>
        <b>Cláusula 2ª.</b> O evento, para cuja realização são contratados os serviços de buffet, é um baile de confraternização da empresa CONTRATANTE, e contará com a presença de <%=Quantidade_Pessoas%> pessoas.
    </p>
    <br />
    <p>
        Parágrafo único. O evento realizar-se-á no horário e local indicado no caput da cláusula 1ª, devendo o serviço de buffet ser prestado até às <%=Horas%> horas.
    </p>
    <br />
    <p>
        OBRIGAÇÕES DA CONTRATANTE
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
        OBRIGAÇÕES DA CONTRATADA
    </p>
    <br />
    <p>
        <b>Cláusula 5ª.</b> É dever da CONTRATADA oferecer um serviço de buffet de acordo com as especificações da CONTRATANTE, devendo o serviço iniciar-se às <%=Horas%> e terminar às <%=Horas%> horas.
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
        <b>Cláusula 7ª.</b> A CONTRATADA compromete-se a chegar no local do evento às <%=Horas%> horas, a fim de arrumar o salão com antecedência de <%=Horas%> horas.
    </p>
    <br />
    <p>
        <b>Cláusula 8ª.</b> A CONTRATADA se compromete a fornecer o cardápio escolhido pela CONTRATANTE, cujas especificações, inclusive de quantidade a ser servida, encontram-se em documento anexo ao presente contrato, passando a integrar-lhe.
    </p>
    <br />
    <p>
        <b>Cláusula 9ª.</b> A CONTRATADA fornecerá <%=Garcons%> garçons e <%=Copeiros%> copeiros para a prestação dos serviços ora contratados.
    </p>
    <br />
    <p>
        <b>Cláusula 10.</b> A CONTRATADA será a única e exclusiva responsável por todos os seus empregados que trabalharem no evento referido na cláusula 2ª, cabendo a ela o cumprimento das obrigações sociais, trabalhistas, previdenciárias, tributárias, entre outras, referentes à prestação dos serviços ora contratados.
    </p>
    <br />
    <p>
        <b>Cláusula 11.</b> A CONTRATADA obriga-se a manter todos os seus empregados devidamente uniformizados durante a prestação dos serviços ora contratados, garantindo que todos eles possuem os requisitos de urbanidade, moralidade e educação.
    </p>
    <br />
    <p>
        Parágrafo único. Caso algum empregado seja afastado em virtude de procedimento ou conduta inadequada, a critério do CONTRATANTE, a CONTRATADA poderá substituí-lo, sob pena de ser obrigada ao pagamento da multa contratual determinada na cláusula 16 deste instrumento.
    </p>
    <br />
    <p>
        DO PREÇO E DAS CONDIÇÕES DE PAGAMENTO
    </p>
    <br />
    <p>
        <b>Cláusula 12.</b> O serviço contratado no presente instrumento será remunerado pela quantia de R$ <%=Valor%> (valor expresso), devendo ser pago em dinheiro ou cheque, até a data de <%=Data%>.
    </p>
    <br />
    <p>
        DO INADIMPLEMENTO
    </p>
    <br />
    <p>
        <b>Cláusula 13.</b> Em caso de inadimplemento por parte do CONTRATANTE quanto ao pagamento do serviço prestado, deverá incidir sobre o valor do presente instrumento, multa pecuniária de 2%, juros de mora de 1% ao mês e correção monetária.
    </p>
    <br />
    <p>
        Parágrafo único. Em caso de cobrança judicial, devem ser acrescidas custas processuais e 20% de honorários advocatícios.
    </p>
    <br />
    <p>
        DA DEVOLUÇÃO
    </p>
    <br />
    <p>
        <b>Cláusula 14.</b> Todos os utensílios e objetos fornecidos pela CONTRATADA, cujo rol encontra-se em anexo, deverão ser devolvidos em perfeito estado de conservação, sob pena da CONTRATANTE arcar com os respectivos valores de reposição, os quais encontram-se também discriminados no aludido rol.
    </p>
    <br />
    <p>
        Parágrafo primeiro. Os valores de reposição deverão ser pagos até <%=Horas%> horas após a realização do evento, sob pena de incidir a aplicação da multa, dos juros e da correção monetária, previstos na cláusula anterior.
    </p>
    <br />
    <p>
        Parágrafo segundo. Estão incluídos nos objetos, referidos no caput da presente cláusula, os enfeites das mesas.
    </p>
    <br />
    <p>
        DA RESCISÃO
    </p>
    <br />
    <p>
        <b>Cláusula 15.</b> O presente contrato poderá ser rescindido unilateralmente por qualquer uma das partes, desde que haja comunicação formal por escrito justificando o motivo. Deverá acontecer, além disso, até <%=Dias%> dias corridos, antes da data prevista para o evento.
    </p>
    <br />
    <p>
        DAS MULTAS CONTRATUAIS
    </p>
    <br />
    <p>
        <b>Cláusula 16.</b> Salvo o caso de rescisão já previsto na cláusula imediatamente anterior, fica estabelecido que a parte infratora a quaisquer cláusulas do presente contrato, pagará à parte prejudicada multa equivalente a <%=Porcetagem%>% (valor expresso) sobre o valor do contrato, independente de ação judicial específica para ressarcimento de perdas e danos que poderá ser movida pela parte prejudicada.
    </p>
    <br />
    <p>
        DAS CONDIÇÕES GERAIS
    </p>
    <br />
    <p>
        <b>Cláusula 17.</b> A quantidade de comida e bebida foi determinada de acordo com a indicação da CONTRATADA, e, portanto, esta poderá ser responsabilizada pela insuficiência da comida e/ou da bebida fornecida no evento, devendo proceder à devolução de <%=Porcetagem%>% do valor pago pela CONTRATANTE.
    </p>
    <br />
    <p>
        Parágrafo único. Caso seja possível, e para afastar a devolução determinada no caput da presente cláusula, a CONTRATADA poderá complementar o buffet servido, durante a realização do evento.
    </p>
    <br />
    <p>
        <b>Cláusula 18.</b> O cardápio foi elaborado de acordo com o número de convidados determinado pela CONTRATANTE, e de acordo com as solicitações desta. Portanto, a CONTRATADA não será responsabilizada se, atendidas as especificações contratadas, a insuficiência da comida e/ou da bebida resultar da entrada de número maior de pessoas no evento.
    </p>
    <br />
    <p>
        <b>Cláusula 19.</b> Salvo com a expressa autorização da CONTRATANTE, não pode a CONTRATADA transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
    </p>
    <br />
    <p>
        <b>Cláusula 20.</b> Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.
    </p>
    <br />
    <p>
        <b>Cláusula 21.</b> Qualquer alteração, modificação, complementação, ou ajuste, somente será reconhecido e produzirá efeitos legais, se incorporado ao presente contrato mediante Termo Aditivo, devidamente assinado pelas partes contratantes.
    </p>
    <br />
    DO FORO
    <br />
    <p>
        <b>Cláusula 22.</b> Para dirimir quaisquer controvérsias oriundas do presente contrato, as partes elegem o foro da comarca de <%=Comarca%>;
    </p>
    <br />
    <p>
        Por estarem assim justos e contratados, firmam o presente instrumento, em duas vias de igual teor, juntamente com 2 duas <%=Testemunhas%> testemunhas.
    </p>
    <br />
    <br />
    <p style="text-align:right">
    
        Local<%=Local%>, Data<%=Data%>  e Ano<%=Ano%>
    </p>
    <br />
    <p>
        <center>
            
        _________________________________________<br />
 <br />
  Nome da Contratante <%=Nome_da_Contratante%> 
            </center>
    </p>
    <br />
    <br />

    <center>
     _________________________________________<br />
   <br />
   Nome da Contratada <%=Nome_da_Contratada%> 
     </center>
    <br />
    </p>
    <br />
    <p>
        <center>
        _________________________________________<br />
        <br />
       Nome da Testemunha 1 <%=Nome_Testemunha%>, RG <%=RG_Testemunha%>  
       
         </center>

    </p>
    <br />
    <p>
        <center>
        _________________________________________<br />
        <br />
     Nome da Testemunha 2 <%=Nome_Testemunha2%>, RG <%=RG_Testemunha2%> 
       </center>
    </p>
    <br />
    <article></article>
    <footer style="text-align: center">
        <div>

            <button type="button" value="imprimir" onclick="window.print();" class="buttonT" style="align-content: center">Imprimir</button>
        </div>
    </footer>
</asp:Content>
