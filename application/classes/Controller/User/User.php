<?php defined('SYSPATH') or die('No direct script access.');

/**
 * 
 * @author Przemysław Kotłowski <john.doe@example.com>
 * 
 */
class Controller_User_User extends Controller_MainController {

    /**
     * Css folder
     * it's can be array or href
     */
    private $_CSS_ = 'assets/css/manage/';

    /**
     * JS folders
     * it's can be array or href
     */
    private $_JS_ = array(
        'assets/js/core/',
        'assets/js/manage/',
    );

    /**
     * Head template
     *
     * @var string
     */
    public $template = 'manage/site';

    /**
     * Function to chceck if you are logged in
     * on site or not, if you don't you will be
     * redirect to webhome
     * 
     * @param Request $request
     * @param Response $response
     */
    public function __construct(Request $request, Response $response) {
        parent::__construct($request, $response);
        if (!Auth::instance()->logged_in()) {
            $this->redirect('/');
        }
    }

    /**
     * Get and set settings/script and styles
     * on manage site before site was redner
     */
    public function before() {
        parent::before();
        $this->template->title = 'My Own CMS (MOC)';
        $this->template->js = View::factory('partial/js')
                ->set('scripts', $this->check_js($this->_JS_));
        $this->template->css = View::factory('partial/css')
                ->set('styles', $this->check_css($this->_CSS_));
        $this->template->meta_tag = View::factory('partial/meta_tag');
        $this->template->icon = '/tdesign/assets/images/favicon.ico';
    }

    /**
     * Set header and menu after get content site
     */
    public function after() {
        $this->template->header = View::factory('manage/partial/header')
                ->set('user', Auth::instance()->get_user());
        $this->template->menu = View::factory('manage/partial/menu');
        parent::after();
    }

    /**
     * Load index
     */
    public function action_index() {
        $this->template->center = View::factory('manage/sites/index');
    }

    /**
     * Logout users
     
    public function action_logout() {
        if (Auth::instance()->logged_in()) {
            Auth::instance()->logout();
            $this->redirect('/');
        } else {
            echo 'You are not loged';
        }
    }*/

}