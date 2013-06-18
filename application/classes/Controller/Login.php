<?php

defined('SYSPATH') or die('No direct script access.');

/**
 * Controller responsible for login and logout
 * 
 * @author Przemylaw Kotlowski <john.doe@example.com>
 */
class Controller_Login extends Controller_Template {

    public $template = 'sites/login';

    public function after() {
        $this->template->style_file = '/assets/css/logform/logform.css';
        $this->template->script_file = '/assets/js/core/jquery-1.9.1.js';
        parent::after();
    }

    /**
     * Login users
     * 
     * @throws Exception
     */
    public function action_login() {
        if (!Auth::instance()->logged_in()) {
            $this->template->login_partial = View::factory('partial/login');
            $post = $this->request->post();
            if (isset($post['Submit'])) {
                $r = Auth::instance()->login(trim($post['username']), trim($post['password']));
                if (!$r) {
                    $this->template->msg = 'Sorry we can not login in now please check username and password<br> ';
                }
                else
                    $this->redirect('my/user');
            }
        } else {
            $this->redirect('my/user');
        }
    }

    /**
     * Register users
     */
    public function action_register() {
        if (!Auth::instance()->logged_in()) {
            $this->template->login_partial = View::factory('partial/register');
            $post = $this->request->post();
            if (isset($post['Submit'])) {
                $email = trim($post['email']);
                $username = trim($post['username']);
                $password = trim($post['password']);
                $client = ORM::factory('User');
                $client->email = $email;
                $client->username = $username;
                $client->password = $password;
                try {
                    $client->save();
                    $role = ORM::factory('Role', '1');
                    $client->add('roles', $role);
                    try {
                        $client->save();
                        $this->template->msg = 'Congratulations!';
                    } catch (ORM_Validation_Exception $exc) {
                        $this->template->msg = $exc->errors('models');
                    }
                } catch (ORM_Validation_Exception $exc) {
                    $this->template->msg = $exc->errors('models');
                }
            }
        } else {
            echo 'You are currently loged';
        }
    }

    public function action_logout() {
        if (Auth::instance()->logged_in()) {
            if (Auth::instance()->logout()) {
                $this->redirect('/');
            }
        }
    }

}
