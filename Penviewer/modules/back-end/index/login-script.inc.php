<?php

include_once('../database/dbconn.inc.php');

if (isset($_POST['login-submit'])) {
    $uid = mysqli_real_escape_string($conn, $_POST['login-email']);
    $password = mysqli_real_escape_string($conn, $_POST['login-password']);
    if (empty($_POST['login-email']) || empty($_POST['login-password'])) {
        Header("Location: "."login=empty");
        exit();
    } else {
        $sqlLogin = "SELECT * FROM personal_tbl WHERE Personal_UID = ?;";
        $statement = mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($statement, $sqlLogin)) {
            Header("Location: "."../../front-end/errorpages/database-error.html");
            exit();
        } else {
            mysqli_stmt_bind_param($statement, "s",$uid);
            mysqli_stmt_execute($statement);
            $result = mysqli_stmt_get_result($statement);
            $resultCheck = mysqli_num_rows($result);
            if ($resultCheck < 1) {
                Header("Location: "."login=usernotfound");
                exit();
            } else {
                if ($row = mysqli_fetch_assoc($result)) {
                    $pwdCheck = password_verify($password, $row['Personal_PWDHash']);
                    if ($pwdCheck == False) {
                        Header("Location: "."/failed");
                        exit();
                    } else {
                        session_start();
                        $_SESSION['U_PREFIX'] = $row['Personal_Prefix'];
                        $_SESSION['U_ID'] = $row['Personal_Prefix'].$row['Personal_ID'];
                        $_SESSION['U_FN'] = $row['Personal_Firstname'];
                        $_SESSION['U_SN'] = $row['Personal_Secondname'];
                        $_SESSION['U_LN'] = $row['Personal_Lastname'];
                        $_SESSION['U_G'] = $row['Personal_Gender'];
                        $_SESSION['U_DOB'] = $row['Personal_DOB'];
                        $_SESSION['U_EMAIL'] = $row['Personal_Email'];
                        $_SESSION['U_UID'] = $row['Personal_UID'];
                        $_SESSION['U_PROF'] = $row['Personal_Profession'];
                        $_SESSION['U_SKILLS'] = $row['Personal_MySkills'];
                        $_SESSION['U_QUAL'] = $row['Personal_MyQualifications'];
                        $_SESSION['U_DATE_C'] = $row['Personal_DateCreated'];
                        Header("Location: "."../../front-end/userpage/home.php");
                    }
                }
            }
        }
    }
}


?>