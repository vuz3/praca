/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    var action = '/praca_mark_I/my/chat/';
    $("#add").click(function() {
        var dane = $("#usermsg").val();
        jQuery.post(action + 'addMessage/',
                {
                    msg: dane
                },
                function(response) {
                    if (response != 'ok') {
                        $("#chatbox").load(action + 'showMessage/');
                    } else {
                        $("#chatbox").load(action + 'showMessage/');
                    }
                }).done(function() {
            $("#chatbox").load(action + 'showMessage/');
        });
       $("#usermsg").val(''); 
    });
});

