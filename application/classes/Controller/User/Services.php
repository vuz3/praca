<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller_User_Services extends Controller_Site {

    private $orm_services = null;

    public function __construct(Request $request, Response $response) {
        parent::__construct($request, $response);
        $this->orm_services = ORM::factory('SimpleUser_Services');
    }

    public function action_del() {
        
    }

}