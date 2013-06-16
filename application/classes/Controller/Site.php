<?php

defined('SYSPATH') or die('No direct script access.');

/**
 * Controller to view your subpage
 * 
 * @author Przmeyslaw Kotlowski <john.doe@example.com>
 */
class Controller_Site extends Controller_MainController {

    public $template = 'site';

    /**
     * Css folder
     * it's can be array or href
     */
    private $_CSS_ = array(
        'assets/css/',
        'assets/css/manage',
    );

    /**
     * JS folders
     * it's can be array or href
     */
    private $_JS_ = array(
        'assets/js/core/',
        'assets/js/manage/',
        'assets/js/',
        'code.jquery.com/ui/1.10.2/jquery-ui.js',
    );

    public function __construct(Request $request, Response $response) {
        parent::__construct($request, $response);
    }

    /**
     * Set the variable before site were load
     */
    public function before() {
        parent::before();
        $settings = ORM::factory('Manage_Settings')->find();

        $this->template->title = $settings->title;
        $this->template->js = view::factory('partial/js')
                ->set('scripts', $this->check_js($this->_JS_));
        $this->template->css = View::factory('partial/css')
                ->set('styles', $this->check_css($this->_CSS_));
        $this->template->meta_tag = View::factory('partial/meta_tag');
        $this->template->icon = URL::base() . '/assets/images/other/' . $settings->favicon;
    }

    /**
     * Set the variable after site were load
     */
    public function after() {
        $user = null;
        $path = 'header';
        if(Auth::instance()->logged_in()) {
            $user = Auth::instance()->get_user();
            $path = 'header_logged';
        }
        $this->template->header = View::factory('partial/' . $path . '')
                ->bind('user',$user)
                ->set('check_trans',$this->check_Transmision($user->id));
        $this->template->menu = View::factory('partial/menu');
        $this->template->footer = View::factory('partial/footer');
        parent::after();
    }

    public function action_index() {
        $this->template->center = view::factory('sites/index')
                ->bind('elements', $elements);
        $elements = $this->get_transmision();
    }

}