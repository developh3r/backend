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
        
      $json = json_encode( $postArray );
      // make sure there were no problems
      //if( json_last_error() != JSON_ERROR_NONE ){
          //exit;  // do your error handling here instead of exiting
      // }
      $file = 'random_phrase.json';
      // write to file
      //   note: _server_ path, NOT "web address (url)"!
      file_put_contents( $file, $json, FILE_APPEND);
  
  
?>