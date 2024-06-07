<?php

$title = 'Dashboard' . '|' . SITE_TITLE;
if(isset($_POST['logout'])){
    Session::unset('loggedin');
    session_destroy();
    redirect('auth-login');
}
$loggedin = Session::get('loggedin');

// Retrieve the current user's information
$currentUser = $pdo->select("SELECT * FROM users WHERE id=?", [Session::get('loggedin')])->fetch(PDO::FETCH_OBJ);

$packages = $pdo->select("SELECT * FROM packages WHERE user_id=?", [$currentUser->id])->fetchAll(PDO::FETCH_OBJ);




if (isset($_POST['create-package'])) {
    $booked_number = generatePackageNumber();
    $place_name = sanitizeInput(strtoupper($_POST['placeName']));
    $guest_number = sanitizeInput($_POST['guestNumber']); // Removed strtoupper
    $phone_Number = sanitizeInput($_POST['phoneNumber']); // Removed ucwords
    $email_Address = sanitizeInput($_POST['emailAddress']);
    $arrival = sanitizeInput($_POST['arrival']);
    $leaving = sanitizeInput($_POST['leaving']);
   
    $packageData = [
        'place_name' => $place_name,
        'guest_number' => $guest_number,
        'phone_Number' => $phone_Number,
        'email_Address' => $email_Address,
        'arrival' => $arrival, 
        'leaving' => $leaving,
    ];

    // Check if any of the fields are empty
    foreach ($packageData as $key => $value) {
        if (empty($value)) {
            redirect('dashboard', "The field $key is required.", 'error');
        }
    }

    try {
        // Insert the package data into the database
        $pdo->insert('INSERT INTO packages (booked_number, place_name, guest_number, phone_Number, email_Address, arrival, leaving, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
            [$booked_number, $packageData['place_name'], $packageData['guest_number'], $packageData['phone_Number'], $packageData['email_Address'], $packageData['arrival'], $packageData['leaving'], $currentUser->id]
        );

        if ($pdo->status) {
            redirect('dashboard', "Package created successfully", 'success');
        } else {
            redirect('dashboard', "Package was not created successfully", 'error');
        }
    } catch (PDOException $e) {
        redirect('dashboard', 'Database error: ' . $e->getMessage(), 'error');
    }
}

require_once 'view/loggedin/secured/dashboard.php';
