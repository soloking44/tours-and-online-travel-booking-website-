<?php
session_start();

define('APP_ROOT', dirname(__FILE__));
define('DS', DIRECTORY_SEPARATOR); 
define('ROOT', 'Travelblog/');
define('SITE_NAME', 'travelblog.com');
define('LOGO', 'assets/images/logo-white.png');
define('LOGODESK', 'assets/images/logo.png');


define('SITE_TITLE', 'Travel Blog');
define('DESCRIPTION', '');
define('FAVICON', 'assets/images/logo-dark.svg');
define('FACEBOOK', 'facebook.com');
define('TWITTER', 'x.com');
define('WHATSAPP', 'whatsapp.com');
define('INSTAGRAM', 'instagram.com');

define('KEYWORDS', '');

// $url = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');

$url = @explode('/', trim(parse_url($_SERVER['REQUEST_URI'])['path'], '/'))[1];
$url = empty($url) ? '/' : $url;

//  $url = @explode('/', trim(parse_url($_SERVER['REQUEST_URI'])['PHP_URL_PATH'], '/'))[1];
//  $url = empty($url) ? '/' : $url; 
// $url = @explode('/', trim(parse_url($_SERVER['REQUEST_URI'])['PHP_URL_PATH'], '/'))[1];

// // If $url is empty, set it to '/'
// $url = empty($url) ? '/' : $url;

// $urlParts = explode('/', trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/'));
// $url = isset($urlParts[1]) ? $urlParts[1] : '/';
// $url = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : '/';



require_once 'core' . DS . 'helper.php'; 
require_once 'core' . DS . 'model'. DS .'DB.php'; 
require_once 'core' . DS . 'model'. DS .'TrackInput.php'; 

require_once 'core'  . DS . 'Session.php';
require_once 'core' . DS . 'Mailer.php';

// require_once 'core' . DS . 'Router.php';

require_once 'core' . DS . 'accesslist.php';












