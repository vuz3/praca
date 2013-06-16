<!DOCTYPE html>
<html>
    <head>
        <title><?php if (isset($title)) echo $title; ?></title>
        <?php
        if (isset($css))
            echo $css . "\n";
        if (isset($js))
            echo $js . "\n";
        ?>
    </head>
    <body>
       	<div id="wrapper">
            <div id="content">
                <div class="c1">
                    <div class="controls">
                        <?php
                        if (isset($header))
                            echo $header . "\n";
                        ?>
                    </div>
                    <div class="tabs">
                        <?php
                        if (isset($center))
                            echo $center . "\n";
                        ?>
                    </div>
                </div>
            </div>
            <aside id="sidebar">
                <strong class="logo"><a href="#">lg</a></strong>
                <?php
                if (isset($menu))
                    echo $menu . "\n";
                ?>
                <span class="shadow"></span>
            </aside>
        </div>
    </body>
</html>