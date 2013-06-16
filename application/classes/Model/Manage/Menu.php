<?php

/**
 * ORM to menu manage
 * 
 * @author Przemysław Kotłowski <john.doe@example.com>
 */
class Model_Manage_Menu extends ORM {

    protected $_primary_key = 'menu_id';
    protected $_table_name = 'menu';
    
    
    public $_belongs_to = array(
        'language' => array(
            'model' => 'Manage_Language',
            'foreign_key' => 'language_id',
        ),
    );

}
