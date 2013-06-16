<?php

defined('SYSPATH') or die('No direct script access.');

// -- Environment setup --------------------------------------------------------
// Load the core Kohana class
require SYSPATH . 'classes/Kohana/Core' . EXT;

if (is_file(APPPATH . 'classes/Kohana' . EXT)) {
    // Application extends the core
    require APPPATH . 'classes/Kohana' . EXT;
} else {
    // Load empty core extension
    require SYSPATH . 'classes/Kohana' . EXT;
}

/**
 * Set the default time zone.
 *
 * @link http://kohanaframework.org/guide/using.configuration
 * @link http://www.php.net/manual/timezones
 */
date_default_timezone_set('Europe/Warsaw');

/**
 * Set the default locale.
 *
 * @link http://kohanaframework.org/guide/using.configuration
 * @link http://www.php.net/manual/function.setlocale
 */
setlocale(LC_ALL, 'pl_PL.utf-8');

/**
 * Enable the Kohana auto-loader.
 *
 * @link http://kohanaframework.org/guide/using.autoloading
 * @link http://www.php.net/manual/function.spl-autoload-register
 */
spl_autoload_register(array('Kohana', 'auto_load'));

/**
 * Optionally, you can enable a compatibility auto-loader for use with
 * older modules that have not been updated for PSR-0.
 *
 * It is recommended to not enable this unless absolutely necessary.
 */
spl_autoload_register(array('Kohana', 'auto_load_lowercase'));

/**
 * Enable the Kohana auto-loader for unserialization.
 *
 * @link http://www.php.net/manual/function.spl-autoload-call
 * @link http://www.php.net/manual/var.configuration#unserialize-callback-func
 */
ini_set('unserialize_callback_func', 'spl_autoload_call');

// -- Configuration and initialization -----------------------------------------

/**
 * Set the default language
 */
I18n::lang('pl-pl');

Cookie::$salt = 'przemek';
Session::$default = 'database';

/**
 * Set Kohana::$environment if a 'KOHANA_ENV' environment variable has been supplied.
 *
 * Note: If you supply an invalid environment name, a PHP warning will be thrown
 * saying "Couldn't find constant Kohana::<INVALID_ENV_NAME>"
 */
if (isset($_SERVER['KOHANA_ENV'])) {
    Kohana::$environment = constant('Kohana::' . strtoupper($_SERVER['KOHANA_ENV']));
}

/**
 * Initialize Kohana, setting the default options.
 *
 * The following options are available:
 *
 * - string   base_url    path, and optionally domain, of your application   NULL
 * - string   index_file  name of your index file, usually "index.php"       index.php
 * - string   charset     internal character set used for input and output   utf-8
 * - string   cache_dir   set the internal cache directory                   APPPATH/cache
 * - integer  cache_life  lifetime, in seconds, of items cached              60
 * - boolean  errors      enable or disable error handling                   TRUE
 * - boolean  profile     enable or disable internal profiling               TRUE
 * - boolean  caching     enable or disable internal caching                 FALSE
 * - boolean  expose      set the X-Powered-By header                        FALSE
 */
Kohana::init(array(
    'base_url' => '/praca_mark_I/',
    'index_file' => false,
));

/**
 * Attach the file write to logging. Multiple writers are supported.
 */
Kohana::$log->attach(new Log_File(APPPATH . 'logs'));

/**
 * Attach a file reader to config. Multiple readers are supported.
 */
Kohana::$config->attach(new Config_File);

/**
 * Enable modules. Modules are referenced by a relative or absolute path.
 */
Kohana::modules(array(
    'auth' => MODPATH . 'auth', // Basic authentication
    'database' => MODPATH . 'database', // Database access
    'image'      => MODPATH.'image',      // Image manipulation
    'pagination'  => MODPATH.'pagination',  // Pagination
    'orm' => MODPATH . 'orm', // Object Relationship Mapping
    
));

/**
 * Set the routes. Each route must have a minimum of a name, a URI and a set of
 * defaults for the URI.


Route::set('forUser', 'user(/<action>)')
        ->defaults(array(
            'directory' => 'User',
            'controller' => 'User',
            'action' => 'index',
        ));

/**
 * Rout to login and register form
 */
Route::set('auth', '(<lang>/)<action>',
  array(
      'lang' => '[a-z]{1,3}',
      'action' => '(login|register)'
  ))
  ->defaults(array(
    'controller' => 'login'
  ));

Route::set('usersys', 'my/(<lang>/)(<controller>(/<action>(/<login>)))',
  array(
    'lang' => '[a-z]{1,3}',
    'login' => '[a-zA-Z0-9]+',
  ))
  ->defaults(array(
      'directory' => 'User',
      'controller' => 'site',
      'action' => 'index',
  ));

Route::set('def', '(<lang>/)(<controller>(/<action>(/<login>)))',
  array(
    'lang' => '[a-z]{1,3}',
    'login' => '[a-zA-Z0-9]+',
  ))
  ->defaults(array(
      'controller' => 'site',
      'action' => 'index',
  ));



/*Route::set('publish', '(<lang>/)(<path>(/<login>))',
  array(
    'lang' => '[a-z]{1,2}', 
    'path' => '[a-z]+',
    'login' => '[a-z]+',
  ))
  ->defaults(array(
      'controller' => 'Site',
      'action' => 'render',
      'lang' => 'pl',
      'path' => null,
      'page' => null,
  ));*/

