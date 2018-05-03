<?php

session_start();

if (!isset($_SESSION['U_ID'])) {
    Header("Location: "."../../../index.php");
    exit();
} else {
    $prefix = $_SESSION['U_PREFIX'];
    $uid = $_SESSION['U_UID'];
    if ($prefix == 'PERS-') {
        Header("Location: "."personal/personal.php?user=$uid");
        exit();
    }
    if ($prefix == 'EMPL-') {
        Header("Location: "."employer/employer.php?user=$uid");
        exit();
    }
    if ($prefix == 'BUSS-') {
        Header("Location: "."business/business.php?user=$uid");
        exit();
    }
}


?>



