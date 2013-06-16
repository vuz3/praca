<?php
/**
 * Setings view
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */
if (isset($msg)) {
    echo $msg . "\n";
}
?>
<div id="settings">
<?php
echo Form::open('', array('id' => 'form')) .
 '<fieldset>' .
 '<legend>' . __('Uzupełnij pola') . '</legend>' .
 //$error.
Form::label('title', __('Tytuł') . ':') .
 Form::input('title', $setting->title, array(
    'id' => 'title',
)) . '<br>' .
 Form::label('icon', __('Ikona strony') . ':') .
 Form::input('icon', $setting->favicon, array(
    'id' => 'icon',
)) . '<br>' .
 Form::submit('Submit', 'Submit', array('id' => 'submit')) .
 '</fieldset>' .
 Form::close();
?>
</div>