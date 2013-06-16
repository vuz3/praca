<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller_Service extends Controller_Site {

    public function action_serviceAdd() {
        $post = $this->request->post();
        if (!empty($post['id']) && !empty($post['title']) && !empty($post['price'])) {
            $this->add_services($post['id'], $post['title'], $post['price']);
        }
    }

    public function action_serviceShow() {
        echo "asdasd";
        /* $this->template->service = View::factory('partial/service')
          ->bind('elements', $elements);
          if (Auth::instance()->logged_in()) {

          // $elements = $this->show_services(Auth::instance()->get_user()->id);
          } */
    }

}
