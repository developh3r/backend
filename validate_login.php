<?php
    

    include('config.php');
    if(isset($_POST['login']))
    {
        //check if existing
        $check=mysqli_query($con,"SELECT * from tbllogin where email='".$_POST['email']."' and password='".md5($_POST['password'])."'");
            $numrow=mysqli_num_rows($check);
            if($numrow<>0)
            {
                ?>
                <script>
                    alert("Incorrect Email/Password. Please try again.");
                    window.history.back();
                </script>
            <?php
            }
            else
            {
                $check=mysqli_query($con,"SELECT * from tbllogin where email='".$_POST['email']."' and password='".md5($_POST['password'])."'");
                    $row=mysqli_fetch_assoc($check);

                    //redirect
            }
        
    }
?>