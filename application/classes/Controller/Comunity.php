<?php

defined('SYSPATH') or die('No direct script access.');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller_Comunity extends Controller_Site {

    public function action_publish() {
        $link = '';

        $this->template->center = View::factory('partial/publisher')
                ->bind('link', $link)
                ->bind('services', $services);

        if (Auth::instance()->logged_in()) {
            $login = Auth::instance()->get_user();
            $chat = ORM::factory('Transmision');
            $check_chat = $chat->where('users_id', '=', $login->id)->find();
            if (0 === $check_chat->count_all()) {
                try {
                    $chat->publisher_id = $login;
                    $chat->active = 'on';
                    $chat->save();
                } catch (ORM_Validation_Exception $exc) {
                    echo $exc->getMessage();
                }
            }
            $link = $login;
            $services = $this->show_services($login->id);
        } else {
            $this->redirect('login');
        }
    }

    public function action_show() {
        $this->template->center = View::factory('partial/subscribe');
        $user = $this->request->param('login');
        $username = Auth::instance()->get_user();

        if (Auth::instance()->logged_in()) {
            /* if ($user === $username->username) {
              $this->redirect('/');
              echo "nie mozna wejsc na wlasny czat...";
              } */
        }
    }

    public function action_end() {
        $user = Auth::instance()->get_user();
        $trans = ORM::factory('Transmision')->where('publisher_id', '=', $user->id)->find();
        var_dump($trans);
        try {
            if ($trans)
                if ($trans->delete()->where('publisher_id', '=', $user->id)) {
                    $this->redirect('/');
                }
        } catch (ORM_Validation_Exception $exc) {
            echo $exc->getMessage();
        }
    }

    public function action_private() {
        
    }

}
