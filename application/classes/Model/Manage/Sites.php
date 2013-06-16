<?php

/**
 * ORM to site manage
 * 
 * @author  Przemysław Kotłowski <john.doe@example.com>
 */

class Model_Manage_Sites extends ORM {
    
    /**
     * Table name
     *
     * @var string 
     */
    protected $_table_name = 'sites';
    
    /**
     * Marge to content table;
     *
     * @var array 
     */
    public $_has_many = array(
        'content' => array(
            'model' => 'Manage_Content',
            'foreign_key' => 'id',
        ),
    );
    
}