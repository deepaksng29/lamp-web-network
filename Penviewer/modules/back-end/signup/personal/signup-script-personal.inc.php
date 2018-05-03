<?php

include_once("../../database/dbconn.inc.php");
date_default_timezone_set('Europe/London');

if (isset($_POST['submit'])) {
   if(empty(mysqli_escape_string($conn, $_POST['firstname']) || empty(mysqli_escape_string($conn, $_POST['lastname'])) || empty(mysqli_escape_string($conn, $_POST['gender'])) || empty(mysqli_escape_string($conn, $_POST['day'])) || empty(mysqli_escape_string($conn, $_POST['month'])) || empty(mysqli_escape_string($conn, $_POST['year'])) || empty(mysqli_escape_string($conn, $_POST['email'])) || empty(mysqli_escape_string($conn, $_POST['email2'])) || empty(mysqli_escape_string($conn, $_POST['password'])) || empty(mysqli_escape_string($conn, $_POST['password2'])))) {
       Header("Location: "."/index.php?signup=empty");
   } else {
       fetchVariables($conn);
   }
}

function fetchVariables($conn) {
    global $firstname;
    global $lastname;
    global $gender;
    global $date1;
    global $age;
    global $email;
    global $email2;
    global $password;
    global $password2;
    global $username;
    $firstname = mysqli_real_escape_string($conn, $_POST['firstname']);
    $lastname = mysqli_real_escape_string($conn, $_POST['lastname']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $day = mysqli_real_escape_string($conn, $_POST['day']);
    $month = mysqli_real_escape_string($conn, $_POST['month']);
    $year = mysqli_real_escape_string($conn, $_POST['year']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $date = $day .'/'.$month.'/'. $year;
    $date = DateTime::createFromFormat('d/m/Y', "$date");
    $date1 = $date->format('d/m/Y');
    $todayDate = date("d/m/Y", time());
    $today = new DateTime("$todayDate");
    $age = $date->diff($today)->y;
    $date = $date->format('d/m/Y');
//  The function below converts the $date variable from a string data type to a Date/Time data type.
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $email2 = mysqli_real_escape_string($conn, $_POST['email2']);
    $password = password_hash(mysqli_real_escape_string($conn, $_POST['password']), PASSWORD_DEFAULT);
    $password2 = password_hash(mysqli_real_escape_string($conn, $_POST['password2']), PASSWORD_DEFAULT);
    errorHandling();
}

function errorHandling() {
    $firstname = $GLOBALS['firstname'];
    $lastname = $GLOBALS['lastname'];
    $gender = $GLOBALS['gender'];
    $date1 = $GLOBALS['date1'];
    $age = $GLOBALS['age'];
    $email = $GLOBALS['email'];
    $email2 = $GLOBALS['email2'];
    $password = $GLOBALS['password'];
    $password2 = $GLOBALS['password2'];
    $conn = $GLOBALS['conn'];
    $username = $GLOBALS['username'];
    if(preg_match("/[^a-zA-Z'-]/", $firstname) || preg_match("/[^a-zA-Z'-]/", $lastname)) {
        Header("Location: "."../../../front-end/signup/personal/signup-personal.php?signup=firstorlast");
        exit();
    } else {
            if(!filter_var($email, FILTER_VALIDATE_EMAIL) || !filter_var($email2, FILTER_VALIDATE_EMAIL)) {
                Header("Location: "."/index.php?signup=emailnotvalid");
            } if(!($email == $email2)) {
        Header("Location: "."/index.php?signup=emailnotsame");
    } else {
        if(!(mysqli_escape_string($conn, $_POST['password']) == mysqli_escape_string($conn, $_POST['password2']))) {
            Header("Location: "."/index.php?signup=passnotsame");
        } else {
            if ($age < 16) {
                Header("Location: "."../../../front-end/errorpages/database-error.html?signup=age");
                exit();
            } else {
                $sqlUID = "SELECT * FROM personal_tbl WHERE Personal_UID = ?;";
                $statementUID = mysqli_stmt_init($conn);
                if (!mysqli_stmt_prepare($statementUID, $sqlUID)) {
                    Header("Location: "."../../../front-end/errorpages/database-error.html?signup=sql");
                    exit();
                } else {
                    mysqli_stmt_bind_param($statementUID, "s", $username);
                    mysqli_stmt_execute($statementUID);
                    $resultUID = mysqli_stmt_get_result($statementUID);
                    $resultCheck = mysqli_num_rows($resultUID);
                    if($resultCheck > 0) {
                        Header("Location: "."/index.php?signup=uidused");
                        exit();
                    } else {
                        $sqlEmail = "SELECT * FROM personal_tbl WHERE Personal_Email = ?;";
                        $statementEmail = mysqli_stmt_init($conn);
                        if (!mysqli_stmt_prepare($statementEmail, $sqlEmail)) {
                            Header("Location: "."../../../front-end/errorpages/database-error.html?signup=sql");
                            exit();
                        } else {
                            mysqli_stmt_bind_param($statementEmail, "s", $email);
                            mysqli_stmt_execute($statementEmail);
                            $resultEmail = mysqli_stmt_get_result($statementEmail);
                            $resultCheckEmail = mysqli_num_rows($resultEmail);
                            if ($resultCheckEmail > 0) {
                                Header("Location: "."/index.php?signup=emailused");
                                exit();
                            } else {
                                parseDatabase();
                            }
                        }
                    }
                }
            }
        }
    }
}
}

function parseDatabase() {
    $firstname = $GLOBALS['firstname'];
    $lastname = $GLOBALS['lastname'];
    $gender = $GLOBALS['gender'];
    $date1 = $GLOBALS['date1'];
    $age = $GLOBALS['age'];
    $email = $GLOBALS['email'];
    $email2 = $GLOBALS['email2'];
    $password = $GLOBALS['password'];
    $password2 = $GLOBALS['password2'];
    $username = $GLOBALS['username'];
    $conn = $GLOBALS['conn'];
    $sql1 = "INSERT INTO personal_tbl (Personal_Firstname, Personal_Lastname, Personal_Gender, Personal_DOB, Personal_Email, Personal_UID, Personal_PWDHash, Personal_DateCreated) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
    $statement1 = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($statement1, $sql1)) {
        Header("Location: "."../../../front-end/errorpages/database-error.html?signup=sql");
        exit();
    } else {
        $timestamp = date("Y-m-d H:i:s",time());
        mysqli_stmt_bind_param($statement1, "ssssssss", $firstname,$lastname, $gender, $date1, $email, $username, $password, $timestamp);
        mysqli_stmt_execute($statement1);
        $result = mysqli_stmt_get_result($statement1);
        Header("Location: "."/index.php?signup=success".$result);
    }
}

?>