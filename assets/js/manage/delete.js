$(document).ready(function() {



    /**
     * Delete items
     * 
     */

    var trash_array = jQuery.makeArray(trash);
    var dane;
    var co;
    var site_name;






    jQuery.each(trash_array, function(i, k) {
        //$(k).click(function() {
        $("#dialog-confirm").dialog({
            modal: true,
            autoOpen: false,
            height: 500,
            width: 450,
            buttons: {
                'Delete': function() {
                    co = $(k).attr("id");
                    dane = $(k).attr('value');
                    site_name = $(k).attr('class');
                    alert($(k).attr('value'));
                    site_name = site.toString();
                    $(this).dialog("close");
                    var action = "/tdesign/useful/" + site_name + "/delete";
                    jQuery.post(action,
                            {
                                what: dane,
                            },
                            function(response) {
                                if (response != 'ok') {
                                    $("#content").load("/tdesign/useful/" + site_name + "/show");
                                } else {
                                    $("#content").load("/tdesign/useful/" + site_name + "/show");
                                }
                            }).done(function() {
                        $("#content").load("/tdesign/useful/sites/show");
                    });
                },
                'Cancel': function() {
                    $(this).dialog("close");
                }
            }
        });

        $(k).click(function() {
            $("#dialog-confirm").dialog("open");
        });

    });




});