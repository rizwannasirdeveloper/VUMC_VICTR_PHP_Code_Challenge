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

    if( isset($_POST['refresh']) && $_SERVER['REQUEST_METHOD'] == 'POST' )
    {
        $curl = curl_init(); //Initializing the CURL request to fetch the data from github using an API

        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://api.github.com/search/repositories?q=language:php&sort=stars&order=desc",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_HTTPHEADER => array(
                "User-Agent: rizwannasirdeveloper"
            ),
        ));

        $response = curl_exec($curl); //Getting the response from API and storing it in the $response variable
        $err = curl_error($curl); //Setting the error variable 

        curl_close($curl); //Closing the curl connection

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            $data = json_decode($response, true);
            //echo "<pre>"; print_r($data);
            foreach ($data['items'] as $item) 
            {
                $q = "INSERT INTO `repos`( `repo_id`, `name`, `description`, `total_stars`, `url`, `created_date`, `last_push_date`) 
                VALUES ('".$item['id']."','".$item['name']."','".$db->real_escape_string($item['description'])."','".$item['stargazers_count']."','".$item['html_url']."','".date('Y-m-d',strtotime($item['created_at']))."','".date('Y-m-d',strtotime($item['pushed_at']))."');";
                //echo $q;
                $db->query($q);
                
            }
        }
    }
?>