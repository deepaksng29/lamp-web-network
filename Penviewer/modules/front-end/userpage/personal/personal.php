<?php

session_start();


?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Penviewer</title>
</head>
<body>
    <header>
        <img src="../../index/img/logoBlack.png" alt="Penviewer">
        <form action="search.inc.php" method="POST">
            <input type="text" placeholder="Search" name="query">
        </form>
        <input type="button" name="logout" value="Log Out">
    </header>
    <section>
        <div class="profile-container">
            <img src="<?php echo $profileimg; ?>" alt="PIC">
            <h1><?php echo $_SESSION['U_UID']; ?></h1>
            <p><?php echo 'Your user id: '.$_SESSION['U_ID']; ?></p>
            <div class="posts-container">
                <?php



                ?>
            </div>
        </div>

    </section>
    <footer>

    </footer>
</body>
</html>
