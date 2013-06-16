<?php
if (isset($message))
    $message;

if (isset($elements)) {
    if (is_object($elements) || is_array($elements)) {
        foreach ($elements as $element) {
            ?>
            <div style="width: 50px; height: 50px; background-color: green">
                <?= $element->users->username ?>
                <?= HTML::anchor('comunity/show/' . $element->users->username . '', 'Dołącz') ?>
            </div>
            <?php
        }
    } else {
        echo $elements;
    }
}