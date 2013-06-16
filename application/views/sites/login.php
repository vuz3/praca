<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>

        <!--------------------
        LOGIN FORM
        by: Amit Jakhu
        www.amitjakhu.com
        --------------------->

        <!--META-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Login Form</title>

        <!--STYLESHEETS-->
        <?php if (isset($style_file)) echo HTML::style($style_file); ?>

        <!--SCRIPTS-->
        <?php if (isset($script_file)) echo HTML::script($script_file); ?>
        <!--Slider-in icons-->
        <script type="text/javascript">
            $(document).ready(function() {
                $(".username").focus(function() {
                    $(".user-icon").css("left", "-48px");
                });
                $(".username").blur(function() {
                    $(".user-icon").css("left", "0px");
                });

                $("#email").focus(function() {
                    $(".email-icon").css("left", "-48px");
                });
                $("#email").blur(function() {
                    $(".email-icon").css("left", "0px");
                });

                $(".password").focus(function() {
                    $(".pass-icon").css("left", "-48px");
                });
                $(".password").blur(function() {
                    $(".pass-icon").css("left", "0px");
                });
            });
        </script>

    </head>
    <body>
        <?php
        if (isset($msg)) {
            if(is_array($msg)) {
                foreach($msg as $el) {
                    echo $el;
                }
            }
        }
        ?>
        <div id="wrapper">

            <?php
            if (isset($login_partial))
                echo $login_partial;
            ?>

        </div>
        <div class="gradient"></div>

    </body>
</html>