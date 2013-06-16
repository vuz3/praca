<?php

defined('SYSPATH') or die('No direct script access.');

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
        if (!empty($user_id))
            $transmision = ORM::factory('Transmision', $user_id);
        if ($transmision->loaded()) {
            return true;
        } else {
            return false;
        }
    }

    public function get_transmision() {
        $transmision = ORM::factory('Transmision')->where('active', '=', 'on')->find_all();
        if (0 === $transmision->count()) {
            $transmision = "Brak nadających w tym momencie";
        }
        return $transmision;
    }

    public function add_services($user_id, $title, $price) {
        if (!empty($user_id) && !empty($title) && !empty($price)) {
            $service = ORM::factory('SimpleUser_Services');
            $service->users_id = $user_id;
            $service->title = $title;
            $service->price = $price;
            try {
                if($service->save()) {
                    return true;
                }else return false;
            } catch (ORM_Validation_Exception $exc) {
                return false;
            }
        }
    }

    public function show_services($user_id) {
        if (!empty($user_id)) {
            $service = ORM::factory('SimpleUser_Services')->where('users_id','=',$user_id)->find_all();
            return $service;
        }
        else
            return false;
    }

}