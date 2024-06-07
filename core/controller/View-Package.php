<?php

$title = 'Create Post' . '|' . SITE_TITLE;

if (isset($_POST['logout'])) {
    Session::unset('loggedin');
    session_destroy();
    redirect('home');
}
if (!empty(Session::get('loggedin'))) {

    $currentUser = toJson($pdo->select("SELECT * FROM users WHERE id=?", [Session::get('loggedin')])->fetch(PDO::FETCH_ASSOC));
 $packages = toJson($pdo->select("SELECT * FROM packages", [])->fetchAll(PDO::FETCH_ASSOC));


     
    if (isset($_GET['id'])) {
        $packageId = $_GET['id'];
    
       
        $pdo->delete('DELETE FROM packages WHERE id=?', [$packageId]);
    
        $successMessage = "You have successfully deleted packages ID {$packageId}.";

        redirect('view-cargo', $successMessage, 'success');
        exit();
    }


    
    if(isset($_POST['publish'])){

        $id = $_POST['$packageId'];
     

        $currentQuestion = toJson($pdo->select("SELECT * FROM packages WHERE id=?", [$id])->fetch(PDO::FETCH_ASSOC));

   
        $status =  $currentQuestion->publish == 1 ? 0 : 1;

        $pdo->update('UPDATE packages SET publish =? WHERE id=?', [$status,$id]);

        if($pdo->status){
            $resp = json_encode(['status'=>'success']);
            echo $resp; die;


        }
           
        



    }

    if(isset($_POST['type'])){
      
        $id = $_POST['id'];
    
        $currentpackages = toJson($pdo->select("SELECT * FROM packages WHERE id=?", [$id])->fetch(PDO::FETCH_ASSOC));

       

        if ($pdo->status) {
            $resp = json_encode(['status'=>'success','data'=> $currentpackages]);
            echo $resp;die;

        }

       

}


    require_once 'view/loggedin/admin/view-package.php';

}
