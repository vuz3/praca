<?php

/**
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
if (isset($sites)) {
    foreach ($sites as $site) {
        $option[] = array(
            $site->id => $site->template,
        );
    }
}

echo Form::open('', array('class' => 'content_add', 'enctype' => 'multipart/form-data')) .
 Form::label('site', __('Strona') . ':') . "\n" .
 Form::select('site', $option, '', array('class' => 'site_choose')) . "<br />\n" .
 Form::label('image', __('Zdjecie') . ':') . "\n" .
 Form::file('image', array('class' => 'site_img', 'id' => 'image')) . "<br />\n" .
 Form::label('title', __('Tytul') . ':') . "\n" .
 Form::input('title', '', array('id' => 'content_title', 'placeholder' => 'Tytul', 'class' => 'title')) . "<br />\n" .
 Form::label('content', __('Tresc') . ':') .
 Form::textarea('content', '', array('id' => 'content_add', 'cols' => '50', 'rows' => '20', 'class' => 'textarea')) . "<br />\n" .
 Form::submit('Add', 'Add', array('id' => 'add', 'class' => 'dodaj')) .
 Form::close();
?>