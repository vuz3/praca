/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    var action = '/praca_mark_I/service/';
    $("#dodajUsluge").click(function() {
        var dane2 = $("title").val();
        var dane3 = $("price").val();
        jQuery.post(action + 'serviceAdd',
                {
                    what: dane2,
                },
                function(response) {
                    if (response != 'ok') {
                        $("#services").load('/praca_mark_I/service/serviceShow');
                    } else {
                        $("#services").load('/praca_mark_I/service/serviceShow');
                    }
                }).done(function() {
            $("#services").load('/praca_mark_I/service/serviceShow');
        });
    });
});