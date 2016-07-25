<?php
error_reporting(0);
session_start();
ini_set('session.gc_maxlifetime', 6 * 2640 * 360);
session_set_cookie_params('3600');
session_cache_limiter('private');
session_cache_expire(500);
date_default_timezone_set('Asia/Calcutta');
/**
SERVER SETTING
**/
define('WEB_URL', 'http://holidayindian.in/');
define('APP_PATH', '/home1/rajeev12/public_html/HOLIDAYINDIAN.IN/');

/**
LOCAL SETTING
**/

/*define('APP_PATH', 'C:/xampp/htdocs/holidayindia/');
define('WEB_URL', 'http://localhost/holidayindia/');*/

//echo $_SERVER['DOCUMENT_ROOT']; exit;

define('MODULE_PAYMENT_EBS_MODE', 'LIVE'); //LIVE
define('MODULE_PAYMENT_EBS_ACCOUNTID', 19095); 
define('MODULE_PAYMENT_EBS_SECRET_KEY', 'f5bd741b913490b0744dd4f85d41e110'); 

/*define('CAT_IMAGE_WRITE', APP_PATH.'category/');

define('CAT_IMAGE_READ', WEB_URL.'category/');*/

define('PLACE_IMAGE_WRITE', APP_PATH.'images/');

define('PLACE_IMAGE_READ', WEB_URL.'images/');



define('SITE_TITLE', 'India Holiday');
include('connect.php');
include('functions.php');
$obj = new mysql();
//$obj->altertable(); exit;
?>