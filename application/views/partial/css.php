<?php

/**
 * Css files
 * 
 * @author Przemyslw Kotlowski <john.doe@example.com>
 */

if (is_array($styles)) {
    foreach ($styles as $styl) {
        echo HTML::style($styl) . "\n";
    }
}
else
    echo HTML::style($styles) . "\n";