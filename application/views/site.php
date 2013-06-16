<!DOCTYPE HTML>
<html>
    <head>
        <title><? if (isset($title)) echo $title ?></title>
        <?php if (isset($meta_tag)) echo $meta_tag . "\n"; ?>
        <?php
        if (isset($css))
            echo $css . "\n";
        if (isset($js))
            echo $js . "\n";
        ?>

        <link rel="shortcut icon" href="<?php if (isset($icon)) echo $icon; ?>" />
    </head>
    <body>
        <div id="container">
            <header>

                <div id="logo">	
                    <?php
                    if (isset($header))
                        echo $header . "\n";
                    ?>
                </div>

                <nav id="menu">
                    <?php
                    if (isset($menu))
                        echo $menu . "\n";
                    ?> 
                </nav>

            </header>

            <div id="content">
                <?php
                if (isset($center))
                    echo $center . "\n";
                ?>
                <?php
                if (isset($pagination))
                    echo "<div id=\"pagination\">" . $pagination . "</div>";
                ?>
            </div>

        </div>

        <footer id="stopka" >
            <?php
            if (isset($footer))
                echo $footer . "\n";
            ?>
        </footer>
    </body>
</html>


