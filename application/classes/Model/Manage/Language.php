<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_Manage_Language extends ORM {

    protected $_table_name = 'language';

    /**
     * Marge to content table;
     *
     * @var array 
     */
    public $_has_many = array(
        'menu' => array(
            'model' => 'Manage_Menu',
            'foreign_key' => 'id',
        ),
    );

}
