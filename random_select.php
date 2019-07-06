<?php
    $fh = fopen( 'random_phrase.json', 'w' );
    fclose($fh);

    include('config.php');
    $query=mysqli_query($con,"SELECT * FROM tblphrase ORDER BY RAND() LIMIT 1;");
        $row=mysqli_fetch_assoc($query);
        
        // convert form data to json format
         $postArray = array(
            "phrase_id" => $row['id'],
            "phrase" => $row['phrase']
        ); //you might need to process any other post fields you have..
        
        echo json_encode( $postArray );
?>