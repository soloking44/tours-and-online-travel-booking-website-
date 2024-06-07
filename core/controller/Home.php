<?php 

$title = 'Home'.'|'.SITE_TITLE;

$loggedin = Session::get('loggedin');




require_once 'view/guest/view.home.php';
