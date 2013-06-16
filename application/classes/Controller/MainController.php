<?php defined('SYSPATH') or die('No direct script access.');

/**
 * "main controller" it's a contener for 
 * other function which use other controller
 * 
 * @author Przemyslaw Kotlowski <john.doe@example.com>
 */

class Controller_MainController extends Controller_Template {

    /**
     * Functions get array with or simply href to
     * folder with css, and return all
     * files with extend *css or null if
     * file dosn't exists
     * 
     * @param mixed $where
     * @return mixed
     */
    protected function check_css($where) {
        $css = null;
        if (is_array($where)) {
            foreach ($where as $location) {
                foreach (glob($location . '*.css') as $file) {
                    $css[] = $file;
                }
            }
        } else {
            foreach (glob($where . '*.css') as $file) {
                $css[] = $file;
            }
        }
        return $css;
    }

    /**
     * Functions get array with href or simply href to
     * folder with js, and return all
     * files with extend *js or null if
     * file dosn't exists
     * 
     * @param mixed $where
     * @return mixed
     */
    protected function check_js($where) {
        $js = null;
        if (is_array($where)) {
            foreach ($where as $location) {
                foreach (glob($location . '*.js') as $file) {
                    $js[] = $file;
                }
            }
        } else {
            foreach (glob($where . '*.js') as $file) {
                $js[] = $file;
            }
        }
        (null != $js) ? $js : $js = null;
        return $js;
    }
    
    protected function check_Transmision($user_id) {
        if(!empty($user_id))
        $transmision = ORM::factory('Transmision',$user_id);
        if($transmision->loaded()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Get menu elements from databases
     * 
     * @return array
     
    public function get_menu($lang_id) {
        if (null === $lang_id || empty($lang_id)) {
            $lang_id = 1;
        }

        $menu = ORM::factory('Manage_Menu')->where('language_id', '=', $lang_id)->find_all();

        return $menu;
    }

    /**
     * Get template name of site
     * 
     * @return array
    
    public function get_template($path, $lang_id) {
        $menu = ORM::factory('Manage_Menu');
        $menu_result = $menu->where('href', 'LIKE', '%' . $path . '%')->find();
        
        if (!empty($menu_result)) {
            $result = ORM::factory('Manage_Sites')->where('menu_id', '=', $menu_result->menu_id)->and_where('language_id', '=', $lang_id)->find();
            return $result;
        }
    }

    /**
     * Get the content site
     * 
     * @param int $id
     * @return object
     
    public function get_content($id) {
        $content = ORM::factory('Manage_Content');
        $content_result = $content->where('sites_id', '=', $id)->find_all();
        return $content_result;
    }*/
    
    public function get_transmision() {
        $transmision = ORM::factory('Transmision')->where('active','=','on')->find_all();
        if(0 === $transmision->count()) {
            $transmision = "Brak nadających w tym momencie";
        }
        return $transmision;
    }
    
}