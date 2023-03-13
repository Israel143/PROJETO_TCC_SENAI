<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contrato.aspx.cs" Inherits="Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Gestão.Contratos.Contrato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Busca de Contratos/EstiloContratos.css" />
    <link rel="stylesheet" type="text/css" href="print.css" media="print" />
    <div></div>
    class="container-principal2" style="margin-top: 20px; margin-bottom: 50px">
        <div></div>
    id="contrato" style="margin-bottom: auto;">
            <header>CONTRATO DE PRESTAÇÃO DE SERVIÇOS DE BUFFET</header>
    <article style="text-align: justify"></article>
        IDENTIFICAÇÃO DAS PARTES CONTRATANTES

CONTRATANTE: <%=Nome_da_Contratante%>, com sede em <%=Sede_Contratante%>, na Rua <%=Rua_Contratante%>, nº <%=Numero_Contratante%>, bairro <%=Bairro_Contratante%>, Cep <%=CEP_Contratante%>, no Estado <%=Estado_Contratante%>, inscrita no C.N.P.J. sob o nº <%=CNPJ_Contratante%>, e no Cadastro Estadual sob o nº <%=Numero_Estadual_Contrante%>, neste ato representada pelo seu diretor <%=Diretor_Contratante%>, <%=Nacionalidade_Contratante%>), <%=Estado_Civil_Contrante%>), <%=Profissao_Contrante%>, Carteira de Identidade nº <%=Numero_da_Indentidade_Contrante%>, C.P.F. nº <%=CPF_Contrante%>, residente e domiciliado na Rua <%=Rua_Contratante%>, nº<%=Numero_Contratante%>, bairro <%=Bairro_Contratante%>, Cep <%=CEP_Contratante%>, Cidade <%=Cidade_Contrante%>, no Estado <%=Estado_Contratante %>;
<br />
CONTRATADA: <%=Nome_da_Contratada%>), com sede em <%=Sede_Contratada%>, na Rua <%=Rua_Contratada%>, nº <%=Numero_Contratada%>, bairro <%=Bairro_Contratada%>, Cep <%=CEP_Contratada%>, no Estado <%=Estado_Contratada%>, inscrita no C.N.P.J. sob o nº <%=CNPJ_Contratada%>, e no Cadastro Estadual sob o nº <%=Numero_Estadual_Contratada%>, neste ato representada pelo seu diretor <%=Diretor_Contratada%>, <%=Nacionalidade_Contratada%>, <%=Estado_Civil_Contratada%>, <%=Profissao_Contratada%>, Carteira de Identidade nº <%=Numero_da_Indentidade_Contratada%>, C.P.F. nº <%=CPF_Contratada%>, residente e domiciliado na Rua <%=Rua_Contratada %>, nº <%=Numero_Contratada%>, bairro <%=Bairro_Contratada%>, Cep <%=CEP_Contratada%>, Cidade <%=Cidade_Contratada%>, no Estado <%=Estado_Contratada%>.
<br />
As partes acima identificadas têm, entre si, justo e acertado o presente Contrato de Prestação de Serviços de Buffet, que se regerá pelas cláusulas seguintes e pelas condições de preço, forma e termo de pagamento descritas no presente.
<br />
DO OBJETO DO CONTRATO
<br />
Cláusula 1ª. É objeto do presente contrato a prestação pela CONTRATADA à CONTRATANTE dos serviços de Buffet, em evento que se realizará na data de <%=Data%>, às <%=Horas%> horas, no salão de festas <%=Salao_Festas%>, situado à Rua <%=Rua_Festas%>, nº <%=Numero_Festa%>, Bairro <%=Bairro_Festa%>, na cidade de <%=Cidade_Festa%>, no Estado de <%=Estado_Festa%>.
<br />
DO EVENTO
<br />
Cláusula 2ª. O evento, para cuja realização são contratados os serviços de buffet, é um baile de confraternização da empresa CONTRATANTE, e contará com a presença de (xxx) pessoas.
<br />
Parágrafo único. O evento realizar-se-á no horário e local indicado no caput da cláusula 1ª, devendo o serviço de buffet ser prestado até às (xxx) horas.
<br />
OBRIGAÇÕES DA CONTRATANTE
<br />
Cláusula 3ª. A CONTRATANTE deverá fornecer à CONTRATADA todas as informações necessárias à realização adequada do serviço de buffet, devendo especificar os detalhes do evento, necessários ao perfeito fornecimento do serviço, e a forma como este deverá ser prestado.
<br />
Cláusula 4ª. A CONTRATANTE deverá efetuar o pagamento na forma e condições estabelecidas na cláusula 6ª.
<br />
OBRIGAÇÕES DA CONTRATADA
<br />
Cláusula 5ª. É dever da CONTRATADA oferecer um serviço de buffet de acordo com as especificações da CONTRATANTE, devendo o serviço iniciar-se às <%=Horas%> e terminar às <%=Horas%> horas.
<br />
Parágrafo único. A CONTRATADA está obrigada a fornecer aos convidados do CONTRATANTE produtos de alta qualidade, que deverão ser preparados e servidos dentro de rigorosas normas de higiene e limpeza.
<br />
Cláusula 6ª. A CONTRATADA será responsável pela ornamentação do salão, fornecendo toalhas e enfeites de mesa, pratos, copos, taças, talheres, bandejas, richaud, balde de gelo, e demais utensílios, cujo rol segue em anexo ao presente contrato, necessários para o melhor desempenho da prestação do serviço.
<br />
Cláusula 7ª. A CONTRATADA compromete-se a chegar no local do evento às <%=Horas%> horas, a fim de arrumar o salão com antecedência de <%=Horas%> horas.
<br />
Cláusula 8ª. A CONTRATADA se compromete a fornecer o cardápio escolhido pela CONTRATANTE, cujas especificações, inclusive de quantidade a ser servida, encontram-se em documento anexo ao presente contrato, passando a integrar-lhe.
<br />
Cláusula 9ª. A CONTRATADA fornecerá <%=Garcons%> garçons e <%=Copeiros%> copeiros para a prestação dos serviços ora contratados.
<br />
Cláusula 10. A CONTRATADA será a única e exclusiva responsável por todos os seus empregados que trabalharem no evento referido na cláusula 2ª, cabendo a ela o cumprimento das obrigações sociais, trabalhistas, previdenciárias, tributárias, entre outras, referentes à prestação dos serviços ora contratados.
<br />
Cláusula 11. A CONTRATADA obriga-se a manter todos os seus empregados devidamente uniformizados durante a prestação dos serviços ora contratados, garantindo que todos eles possuem os requisitos de urbanidade, moralidade e educação.
<br />
Parágrafo único. Caso algum empregado seja afastado em virtude de procedimento ou conduta inadequada, a critério do CONTRATANTE, a CONTRATADA poderá substituí-lo, sob pena de ser obrigada ao pagamento da multa contratual determinada na cláusula 16 deste instrumento.
<br />
DO PREÇO E DAS CONDIÇÕES DE PAGAMENTO
<br />
Cláusula 12. O serviço contratado no presente instrumento será remunerado pela quantia de R$ <%=Valor%> (valor expresso), devendo ser pago em dinheiro ou cheque, até a data de <%=Data%>.
<br />
DO INADIMPLEMENTO
<br />
Cláusula 13. Em caso de inadimplemento por parte do CONTRATANTE quanto ao pagamento do serviço prestado, deverá incidir sobre o valor do presente instrumento, multa pecuniária de 2%, juros de mora de 1% ao mês e correção monetária.
<br />
Parágrafo único. Em caso de cobrança judicial, devem ser acrescidas custas processuais e 20% de honorários advocatícios.
<br />
DA DEVOLUÇÃO
<br />
Cláusula 14. Todos os utensílios e objetos fornecidos pela CONTRATADA, cujo rol encontra-se em anexo, deverão ser devolvidos em perfeito estado de conservação, sob pena da CONTRATANTE arcar com os respectivos valores de reposição, os quais encontram-se também discriminados no aludido rol.
<br />
Parágrafo primeiro. Os valores de reposição deverão ser pagos até <%=Horas%> horas após a realização do evento, sob pena de incidir a aplicação da multa, dos juros e da correção monetária, previstos na cláusula anterior.
 <br />
Parágrafo segundo. Estão incluídos nos objetos, referidos no caput da presente cláusula, os enfeites das mesas.
<br />
DA RESCISÃO
<br />
Cláusula 15. O presente contrato poderá ser rescindido unilateralmente por qualquer uma das partes, desde que haja comunicação formal por escrito justificando o motivo. Deverá acontecer, além disso, até <%=Dias%> dias corridos, antes da data prevista para o evento.
<br />
DAS MULTAS CONTRATUAIS
<br />
Cláusula 16. Salvo o caso de rescisão já previsto na cláusula imediatamente anterior, fica estabelecido que a parte infratora a quaisquer cláusulas do presente contrato, pagará à parte prejudicada multa equivalente a <%=Porcetagem%>% (valor expresso) sobre o valor do contrato, independente de ação judicial específica para ressarcimento de perdas e danos que poderá ser movida pela parte prejudicada.
<br />
DAS CONDIÇÕES GERAIS
<br />
Cláusula 17. A quantidade de comida e bebida foi determinada de acordo com a indicação da CONTRATADA, e, portanto, esta poderá ser responsabilizada pela insuficiência da comida e/ou da bebida fornecida no evento, devendo proceder à devolução de <%=Porcetagem%>% do valor pago pela CONTRATANTE.
<br />
Parágrafo único. Caso seja possível, e para afastar a devolução determinada no caput da presente cláusula, a CONTRATADA poderá complementar o buffet servido, durante a realização do evento.
<br />
Cláusula 18. O cardápio foi elaborado de acordo com o número de convidados determinado pela CONTRATANTE, e de acordo com as solicitações desta. Portanto, a CONTRATADA não será responsabilizada se, atendidas as especificações contratadas, a insuficiência da comida e/ou da bebida resultar da entrada de número maior de pessoas no evento.
<br />
Cláusula 19. Salvo com a expressa autorização da CONTRATANTE, não pode a CONTRATADA transferir ou subcontratar os serviços previstos neste instrumento, sob o risco de ocorrer a rescisão imediata.
<br />
Cláusula 20. Este contrato deverá ser registrado no Cartório de Registro de Títulos e Documentos.
<br />
Cláusula 21. Qualquer alteração, modificação, complementação, ou ajuste, somente será reconhecido e produzirá efeitos legais, se incorporado ao presente contrato mediante Termo Aditivo, devidamente assinado pelas partes contratantes.
<br />
DO FORO
<br />
Cláusula 22. Para dirimir quaisquer controvérsias oriundas do presente contrato, as partes elegem o foro da comarca de <%=Comarca%>;
<br />
Por estarem assim justos e contratados, firmam o presente instrumento, em duas vias de igual teor, juntamente com 2 duas <%=Testemunhas%> testemunhas.
<br />
(Local<%=Local%>,Data<%=Data%> e Ano<%=Ano%>).
<br />
(Nome Contratante<%=Nome_da_Contratante%> e Assinatura Contrante<%=Assinatura_Contratante%>).
<br />
(Nome Contratado<%=Nome_da_Contratada%> e Assinatura Contratado<%=Assinatura_Contratado%>).
<br />
(Nome Testemunha<%=Nome_Testemunha%>,RG<%=RG_Testemunha%> e Assinatura da Testemunha<%=Assinatura_Testemunha1%>).
<br />
(Nome Testemunha2<%=Nome_Testemunha2%>,RG <%=RG_Testemunha2%> e Assinatura da Testemunha 2 <%=Assinatura_Testemunha2%>).
<br />
        <article></article>
         <footer style="text-align: center">
             <div>
                 class="hidden-print">
                    <button type="button" value="imprimir" onclick="window.print();" class="buttonT" style="align-content: center">Imprimir</button>
             </div>
         </footer>
</asp:Content>
