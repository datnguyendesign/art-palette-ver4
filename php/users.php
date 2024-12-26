<?php

    include_once "../connection.php";

    $outgoing_id = $_COOKIE["user_id"];

    $sql = "SELECT * FROM account WHERE NOT id = {$outgoing_id} ORDER BY id DESC";
    $query = mysqli_query($conn, $sql);

    $output = "";
    if (mysqli_num_rows($query) == 0) {
        $output .= "No users are available to chat";
    } else {
        include_once "data.php";
    }

    echo $output;
?>