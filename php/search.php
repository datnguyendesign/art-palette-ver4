<?php

    include_once "../connection.php";

    $outgoing_id = $_COOKIE["user_id"];
    $searchTerm = mysqli_real_escape_string($conn, $_POST['searchTerm']);

    $sql = "SELECT * FROM account WHERE NOT id = {$outgoing_id} AND username LIKE '%{$searchTerm}%'";

    $output = "";

    $query = mysqli_query($conn, $sql);
    if (mysqli_num_rows($query) > 0) {
        include_once "data.php";
    } else {
        $output .= 'No user found related to your search term';
    }

    echo $output;

?>