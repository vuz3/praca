$(document).ready(function() {
    $(function() {
        $("#dialog-form").dialog({
            autoOpen: false,
            height: 500,
            width: 450,
            modal: true,
            buttons: {
                "Stwórz stronę": function() {
                    $(this).dialog("close");
                    var title = $("#template").val();
                    var content = $("#content").val();
                    var lang = $("#language").val();
                    var action = "/tdesign/useful/sites/add";
                    $(this).dialog("close");

                    if ('' === title || '' === lang) {
                        alert("Żadne pole nie może zostać puste");
                    } else {

                        jQuery.post(action,
                                {
                                    title: title,
                                    content: content,
                                    lang: lang
                                },
                        function(response) {
                            if (response != 'ok') {
                                $("#content").load("/tdesign/useful/sites/show");
                            } else {
                                $("#content").load("/tdesign/useful/sites/show");
                            }
                        }).done(function() {
                            //window.location.reload();
                        });

                    }

                },
                'Cancel': function() {
                    $(this).dialog("close");
                }
            }
        });

        $("#template_add").click(function() {
            $("#dialog-form").dialog("open");
        });
    });
});