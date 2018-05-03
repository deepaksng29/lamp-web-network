<?php

$server_uid = 'root';
$server_pwd = '';
$server_name = 'localhost';
$server_db = 'penviewerdb';

if(!$conn = mysqli_connect($server_name, $server_uid, $server_pwd, $server_db)) {
    Header("Location: "."../../front-end/errorpages/database-error.html?database=error");
}

?>