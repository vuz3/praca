<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (!empty($show_article)) {
    
    foreach ($show_article as $article) {
        echo "<div class=\"article\">";
        echo $article['id'] . " " . $article['title'];
        echo "<span values=\"" . $article['id'] . "\" id=trash>   
             <img src=\"/cms/assets/images/nice_trash.png\">
             </span>
             <span values=\"" . $article['id'] . "\" id=\"edit\">
             <img src=\"/cms/assets/images/Pencil-icon.png\">
             </span>
             </div>";
        echo "<hr \><br>";
    }
}
?>

<div id="dialog-confirm" title="Delete item?">
 <p><span class="ui-icon ui-icon-alert"></span>You shure u want to delete y</p>
</div>