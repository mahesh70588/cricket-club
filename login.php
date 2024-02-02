<?php
    session_start();
    if(isset($_SESSION['name'])){
            header("location: home.php");
        }
?>
<?php
    if(isset($_POST['submit'])){
        include "connection.php";
        $username = mysqli_real_escape_string($conn, $_POST['user']);
        $password = mysqli_real_escape_string($conn, $_POST['pass']);

        $sql = "select * from users where username = '$username' or email='$username'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        if($row){
            if(password_verify($password, $row["password"])){
                $sql = "select username from users where username ='$username' or email ='$username'";
                $r = mysqli_fetch_array(mysqli_query($conn,$sql));
                session_start();
                $_SESSION['name'] = $r['username'];
                header("Location: home.php");
            }
        }
        else{
            echo'<script>
                alert("Invalid username or password..");
                window.Location.href = "login.php"
            </script>';
        }
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login page</title>
    <link rel="stylesheet" href="Style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
    <?php
    include "navbar.php";
    ?>
  <body>
    <div id="form">
        <h1 id="heading">Login</h1>
        <form name="form" action="login.php"method="POST" required>
            <label>Username/Email</label>
            <input type="text", id="user" name="user" required><br><br>
            <label>Enter Password</label>
            <input type="password" id="pass" name="pass" required><br><br>
            <input type="submit" id="btn" value="Login" name="submit"/>
        </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>