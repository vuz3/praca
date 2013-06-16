<?php

/**
 * JS files
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */

if (is_array($scripts)) {
    foreach ($scripts as $script) {
        echo HTML::script($script) . "\n";
    }
}
else
    echo HTML::script($scripts) . "\n";
