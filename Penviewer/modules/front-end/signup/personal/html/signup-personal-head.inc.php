<?php

if(isset($_POST['personal'])) {
    Header("Location: "."/modules/front-end/signup/personal/signup-personal.php");
}

if(isset($_POST['employer'])) {
    Header("Location: "."/modules/front-end/signup/employer/signup-employer.php");
}

if(isset($_POST['business'])) {
    Header("Location: "."/modules/front-end/signup/business/signup-business.php");
}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Penviewer</title>
    <link rel="stylesheet" type="text/css" href="../index/css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/personal.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <?php
    if (!isset($_GET['signup'])) {
    } else {
        $signup_error = $_GET['signup'];
        if ($signup_error == "firstorlast") {
            echo "<style>#firstname { border: 1px solid red; } #lastname { border: 1px solid red; } </style>";
        } else {

        }
    }
    ?>
    <style>
        body {
            overflow-y: scroll;
        }
    </style>
</head>



