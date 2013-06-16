<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_Manage_Content extends ORM {
    
    protected $_table_name = 'content';
    
    /**
     * Merge to sites table
     *
     * @var type 
     */
    public $_belongs_to = array(
        'sites' => array(
            'model' => 'Manage_Sites',
            'foreign_key' => 'sites_id',
        ),
    );
    
}
