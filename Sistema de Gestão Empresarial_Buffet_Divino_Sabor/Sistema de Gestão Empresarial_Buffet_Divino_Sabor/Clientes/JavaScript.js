$(document).ready(function () {
    $('#BtnAddItem').click(function () {
        // envia uma solicitação AJAX para o servidor
        $.ajax({
            type: 'POST',
            url: 'Menu.aspx',
            data: { itemId: $('#ItemID').val() },
            success: function (data) {
                // atualiza o conteúdo do repeater com os dados retornados pelo servidor
                $('#RepeatPratoSelected').html(data);
            }
        });
    });
});