<?php

$title = 'User Login' . '|' . SITE_TITLE;
 
if (isset($_POST['login'])) {
    $userEmail = sanitizeInput($_POST['email-username']);
    $password = sanitizeInput($_POST['password']);
    $remember = isset($_POST['remember']) ? true : false;


    $userData = [
        'userEmail' => $userEmail,
         'password' => $password];
    $msg = isEmpty($userData);

    if ($msg != 1) {
        redirect('auth-login', $msg);
    }

    if (filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
        $res = $pdo->select("SELECT * FROM users WHERE email=? LIMIT 1", [$userEmail])->fetch(PDO::FETCH_ASSOC);
    } else {
        $res = $pdo->select("SELECT * FROM users WHERE username=? LIMIT 1", [$userEmail])->fetch(PDO::FETCH_ASSOC);
    }

    if (empty($res)) {
        redirect('auth-login',  "Email, Username or password incorrect!!!");
    }

    $res = json_decode(json_encode($res));

    if (!password_verify($userData['password'], $res->password)) {
        redirect('auth-login', 'Email, Username, or password incorrect!!!');
    }
    

    if (!empty($res)) {
        Session::put('loggedin', $res->id);
        
        if ($res->access === 'admin') {
           
            redirect('admin-dashboard');

        } else if ($res->access === 'secured') {
           
            redirect('dashboard');
        }

    } else {
        redirect('auth-login', 'Email, Username, or password incorrect!!!');
    }
}

require_once 'view/guest/auth/auth-login.php';
?>
