<?php
/**
 * Register form
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */
?>
<div class="user-icon"></div>
<div class="email-icon"></div>
<div class="pass-icon" style="margin-top: 90px;"></div>
<?php
echo Form::open('', array('class' => 'login-form', 'name' => 'login-form')) .
 "<!--HEADER-->
<div class=\"header\">
    <!--TITLE--><h1>Login Form</h1><!--END TITLE-->
    <!--DESCRIPTION--><span>Fill out the form below to login to my super awesome imaginary control panel.</span><!--END DESCRIPTION-->
</div>
<!--END HEADER-->\n" .
 "<div class=\"content\">\n" .
 Form::label('username', __('Nick') . ':') . "\n" .
 Form::input('username', '', array('id' => 'login', 'placeholder' => 'Nick', 'class' => 'input username', 'value' => 'Username', 'onfocus' => 'this.value=\'\'')) . "<br />\n" .
 Form::label('email', 'Email' . ':') . "\n" .
 Form::input('email', '', array('id' => 'email', 'placeholder' => 'Email', 'class' => 'input email', 'value' => 'Email', 'onfocus' => 'this.value=\'\'')) . "<br />\n" .
 Form::label('password', __('Password') . ':') . "\n" .
 Form::password('password', '', array('id' => 'password', 'placeholder' => 'Password', 'class' => 'input password', 'value' => 'password')) . "<br />\n" .
 '</div>' .
 '<div class="footer">' .
 Form::submit('Submit', 'Register', array('id' => 'submit', 'class' => 'register')) .
 '</div>' .
 Form::close();