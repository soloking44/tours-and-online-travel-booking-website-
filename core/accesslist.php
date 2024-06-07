<?php

$routes = [
    '/' => 'core/controller/Home.php',
    'home' => 'core/controller/Home.php',
    'dashboard' => 'core/controller/Dashboard.php',

    'contact'=> 'core/controller/Contact.php',
    'about'=> 'core/controller/About.php',
    'auth-register' => 'core/controller/Register.php',
    'auth-forgot-password' => 'core/controller/Forgot-Password.php',
    'reset-password' => 'core/controller/Reset-Password.php',
  
    'auth-login' => 'core/controller/Login.php',
    '404' => 'core/controller/404.php',
 

    
    'admin-dashboard' => 'core/controller/Admin-Dashboard.php',
    'admin-settings' => 'core/controller/Admin-Settings.php',
    'view-package' =>'core/controller/View-Package.php',
    'logout' => 'core/controller/Logout.php',





];

$admin_pages = ['admin-dashboard','view-package', 'logout', 'home', '/', ];


$secured_pages = ['home', '/', 'contact', 'about','dashboard', 'logout',];



$guest_pages = ['home', '/', 'contact', 'about','auth-login', 'auth-register'];


if (Session::exists('loggedin')) {
   
    $access_level = toJson($pdo->select("SELECT * FROM users WHERE id=?", [Session::get('loggedin')])->fetch(PDO::FETCH_ASSOC))->access;
   

    switch ($access_level) {
        case 'guest':
            if (in_array($url, $guest_pages)) {
                require $routes[$url];
            }else{
                abort(403);
            }

            break;
            case 'secured':
           
                if (in_array($url, $secured_pages)) {
                    require $routes[$url];
                }else{
                    abort(403);
    
                }
                break;

        case 'admin':
           
            if (in_array($url, $admin_pages)) {
                require $routes[$url];
            }else{
                abort(403);

            }
            break;
    }

} else {
  
    if (in_array($url, $guest_pages)) {

        require $routes[$url]; 

    }else{
        abort(404);

    }

}



