/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    var action = '/praca_mark_I/service/';
    $("#dodajUsluge").click(function() {
        var dane1 = $("#user_id").val();
        var dane2 = $("#title").val();
        var dane3 = $("#price").val();
        jQuery.post(action + 'serviceAdd',
                {
                    users_id: dane1,
                    title: dane2,
                    price: dane3,
                },
                function(response) {
                    if (response != 'ok') {
                        $("#service").load('/praca_mark_I/service/serviceShow');
                    } else {
                        $("#service").load('/praca_mark_I/service/serviceShow');
                    }
                }).done(function() {
            $("#service").load('/praca_mark_I/service/serviceShow');
        });
    });
});