<?php
    header('Access-Control-Allow-Origin: *');
    header('Content-Type: application/json');

    include('config.php');
    //check if existing
    $query=mysqli_query($con,"SELECT * from tbluser where user_id='".$_GET['user_id']."'");
        $row=mysqli_num_rows($query);

    // convert form data to json format
    $postArray = array(
        "email" => $row['email'],
        "name" => $row['name'],
        "user_id" => $row['user_id']
    ); //you might need to process any other post fields you have..
    
    echo json_encode( $postArray ); 
?>