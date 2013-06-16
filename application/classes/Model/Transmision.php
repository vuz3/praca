<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_Transmision extends ORM {

    protected $_table_name = 'konferencje';
    
    protected $_primary_key = 'users_id';
    
    
    
    public $_belongs_to = array(
        'users' => array(
            'model' => 'Users',
            'foreign_key' => 'users_id',
        ),
    );

}
