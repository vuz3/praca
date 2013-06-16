<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller_Service extends Controller_Site {

    public $template = 'sites/service';

    public function action_serviceAdd() {
        $post = $this->request->post();
        if (!empty($post['users_id']) && !empty($post['title']) && !empty($post['price'])) {
            $this->add_services($post['users_id'], $post['title'], $post['price']);
        }
    }

    public function action_serviceShow() {
        if (Auth::instance()->logged_in()) {
            $this->template->elements = $this->show_services(Auth::instance()->get_user()->id);
        }
        else
            $this->template->elements = null;
    }

}
