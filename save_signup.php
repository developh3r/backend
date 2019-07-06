<?php
        

    include('config.php');
    echo $_POST['email'].'-test';
        //check if existing
       /* $check=mysqli_query($con,"SELECT * from tbluser where email='".$_POST['email']."'");
            $numrow=mysqli_num_rows($check);
            if($numrow<>0)
            {
                ?>
                <script>
                    alert("Email already used. Please use different email.");
                    window.history.back();
                </script>
            <?php
            }
            else
            {
                //generate userid
                $get=mysqli_query($con,"SELECT * FROM tbluser");
                    $rownum_get=mysqli_num_rows($get);
                    if($rownum_get==0)
                    {
                        $user_id='0000001';
                       
                    }
                    else
                    {
                        $row_get=mysqli_fetch_assoc($get);
                        $id=$row_get['user_id']+1;
                        $user_id=str_pad($id, 7, '0', STR_PAD_LEFT);
                    }

                    $query=mysqli_query($con,"INSERT INTO tbluser (id,name,email,user_id,datetime) VALUES ('','".$_POST['name']."','".$_POST['email']."','".$useri_id."','".date('Y-m-d H:i:s')."')");
            
                    //get user id to restore in tbllogin
                    $get_user=mysqli_query($con,"SELECT * FROM tbluser where email='".$_POST['email']."'");
                        $row_get=mysqli_fetch_assoc($get_user);

                    //save login to tbllogin
                    $save_login=mysqli_query($con,"INSERT INTO tbllogin (id,email,password,user_id,datetime) values ('','".$row_get['email']."','".md5($_POST['password'])."','".$row_get['user_id']."','".date('Y-m-d H:i:s')."')");
            
                    //redirect to display and pass the data
                    header('Location:https://mirrorbackend.milkylorejo.com/save_signup_display.php?user_id='.$_GET['user_id'].'');
                    
            }
        */
    
?>