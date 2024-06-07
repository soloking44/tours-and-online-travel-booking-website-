<?php

class TrackInput
{
    private $pdo;

    public function __construct($db)
    {
        $this->pdo = $db;
    }

    public function processTrackingInput()
    {
        if (isset($_GET['trackingCode'])) {
            $trackingCode = sanitizeInput(strtoupper($_GET['trackingCode']));
        
            // Check if cargo_number exists
            $cargoDetails = $this->pdo->select("SELECT * FROM shipment WHERE cargo_number=?", [$trackingCode])->fetch(PDO::FETCH_ASSOC);
        
            if ($cargoDetails) {
               
                header("Location: cargo?cargoNumber={$trackingCode}");
                exit();
            } else {
               
                $error = "Cargo number not found. Please check the tracking code and try again.";
            }
        } 
    }
}


