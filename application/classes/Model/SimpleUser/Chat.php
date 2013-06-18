<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_SimpleUser_Chat extends ORM {
    
        protected $_table_name = 'chat';
    
        public $_belongs_to = array(
        'users' => array(
            'model' => 'Users',
            'foreign_key' => 'users_id',
        ),
    );
    
}
