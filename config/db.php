<?php
    $servername = "db";
    $username = "root";
    $password = "root";
    $dbname = "php_assessment";

    // Create connection
    $db = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$db) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>