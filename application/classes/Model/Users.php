<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_Users extends ORM {

    protected $_table_name = 'users';
        
    public $_has_one = array(
        'transmision' => array(
            'model' => 'Transmision',
            'foreign_key' => 'users_id',
        ),
        'service' => array(
            'model' => 'SimpleUser_Services',
            'foreign_key' => 'users_id',
        ),
    );

}
