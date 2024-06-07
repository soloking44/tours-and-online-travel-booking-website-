<?php

$title = 'User registration' . '|' . SITE_TITLE;


if (isset($_POST['register'])) {

    $userName = sanitizeInput($_POST['username']);
    $email = sanitizeInput($_POST['email']);
    $_SESSION['user_email'] = $email; 
    $fullname = sanitizeInput(ucwords($_POST['name']));
    $password = sanitizeInput($_POST['password']);
    $confirm = sanitizeInput($_POST['confirm-password']);
    $access= 'secured';



    $userData = ['UserName' => $userName, 
    'Email' => $email,
    'FullName'=> $fullname,
     'password' => $password,
      'Confirm' => $confirm,
      
    ];

    $msg = isEmpty($userData);

    if ($msg != 1) {
        redirect('auth-register', $msg);
    }

    if ($userData['password'] != $userData['Confirm']) {

        redirect('auth-register', "Password does not match.");

    }


    $res = $pdo->select("SELECT * FROM users WHERE username=? or email=?", [$userData['UserName'], $userData['Email'] ])->fetchAll(PDO::FETCH_BOTH);

    if (!empty($res)) {
        foreach ($res as $user) {
            if ($user['email'] == $userData['Email']) {
                redirect('auth-register', "Email already exists");
            } elseif ($user['username'] == $userData['UserName']) {
                redirect('auth-register', "Username already exists");
            }
        }
    }

    $hashedPass = password_hash($userData['password'], PASSWORD_DEFAULT);

    $pdo->insert('INSERT INTO users(username,email, fullname, password, access) VALUES(?,?,?,?,?)', [$userData['UserName'], $userData['Email'], $userData['FullName'], $hashedPass, $access ]);


    if ($pdo->status) {
        redirect('auth-login', "Registeration Successful", 'success');
    }

    
    exit;

}


require_once 'view/guest/auth/auth-register.php';
