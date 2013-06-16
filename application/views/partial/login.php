<?php
/**
 * Partial login form to sites/login site
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */

?>
<div class="user-icon"></div>
<div class="email-icon"></div>
<div class="pass-icon"></div>
<?php
echo Form::open('', array('class' => 'login-form', 'name' => 'login-form')) .
 "<!--HEADER-->
<div class=\"header\">
    <!--TITLE--><h1>Login Form</h1><!--END TITLE-->
    <!--DESCRIPTION--><span>Fill out the form below to login to my super awesome imaginary control panel.</span><!--END DESCRIPTION-->
</div>
<!--END HEADER-->\n" .
 "<div class=\"content\">\n" .
 Form::label('login', __('Nick') . ':') . "\n" .
 Form::input('username', '', array('id' => 'login', 'placeholder' => 'Nick', 'class' => 'input username', 'value' => 'Username', 'onfocus' => 'this.value=\'\'')) . "<br />\n" .
 Form::label('password', __('Password') . ':') .
 Form::password('password', '', array('id' => 'password', 'placeholder' => 'Password', 'class' => 'input password', 'value' => 'password')) . "<br />\n" .
 '</div>' .
 '<div class="footer">' .
 Form::submit('Submit', 'Submit', array('id' => 'submit', 'class' => 'button')) .
 '</div>' .
 Form::close();