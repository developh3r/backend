<?php
    include('config.php');
   /* if(isset($_POST['signup']))
    {*/
        //check if existing
        /*$check=mysqli_query($con,"SELECT * from tbluser where email='".$_POST['email']."'");
            $numrow=mysqli_num_rows($check);
            if($numrows<>0)
            {
                ?>
                <script>
                    alert("Email already used. Please use different email.");
                    window.history.back();
                </script>
            <?php
            }
            else
            {*/
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
                        $user_id=$row_get['user_id']+1;
                       
                    }

                    echo $user_id;
                //$query=mysqli_query($con,"INSERT INTO tbluser (id,)")
           // }
        
   // }
?>