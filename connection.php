<?php
    $con = new mysqli('localhost:4306','root','','shop');
    if($con->connect_error){
        die("Connection Error: ".$con->connect_error);
    }else{
        echo '<script>console.log("success");</script>';
    }
?>