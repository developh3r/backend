<?php
    include('config.php');
    if(isset($_POST['logs']))
    {
        $query=mysqli_query($con,"INSERT INTO tbllogs (id,user_id,phrase_id,notes,emotion,accuracy,datetime) VALUES ('','".$_POST['user_id']."','".$_POST['phrase_id']."','".$_POST['notes']."','".$_POST['emotion']."','".$_POST['accuracy']."','".date('Y-m-d H:i:s')."')");
    }
?>