$(document).ready(function () {
    $('.btnVerMais').click(function () {
        var id = $(this).attr('data-id');
        var div = $('#InfoAdd' + id);
        if (div.is(':visible')) {
            div.hide();
            this.innerHTML("Esconder");
        } else {
            div.show();
        }
    });
});