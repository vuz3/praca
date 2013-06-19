<?php

defined('SYSPATH') or die('No direct script access.');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller_User_Chat extends Controller_Site {

    public $template = 'partial/chat';
    public $user;

    public function __construct(Request $request, Response $response) {
        parent::__construct($request, $response);
        $this->user = Auth::instance();
    }

    public function action_addMessage() {
        $post = $this->request->post();
        if (!empty($post['cls']) && null !== $post['cls']) {
            $chat_id = explode('_', $post['cls']);
            var_dump($chat_id[1]);
            if (!empty($post['msg'])) {
                $myuser = $this->user->get_user()->id;
                $chat = ORM::factory('SimpleUser_Chat');
                $chat->users_id = $myuser;
                $chat->message = $post['msg'];
                $chat->time = date('H:i:s');

                try {
                    if ($chat->save()) {
                        return $this->response->status(200);
                    }
                } catch (ORM_Validation_Exception $exc) {
                    echo $exc->getTraceAsString();
                }
            }
        } else {
            echo "sprawdź link!";
        }
    }

    public function action_showMessage() {
        echo "asdasd";
    }

}
