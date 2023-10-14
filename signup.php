<?php
        include 'connection.php';
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            if(isset($_POST['name'])){
                $name = $_POST['name'];
                $phone = $_POST['phone'];
                $email = $_POST['email'];
                $password = $_POST['password'];

                $hash = password_hash($password,PASSWORD_DEFAULT);
                
                $sql = "insert into user (name,phone,email,password) values (?,?,?,?);";
                $ps = $con->prepare($sql);
                $ps->bind_param("ssss",$name,$phone,$email,$hash);
                if ($ps->execute()) {
                    $userId = $con->insert_id;
                    session_start();
                    $_SESSION["user_id"] = $userId;
                    //echo "<script>console.log('session: $userId')</script>";
                    header("Location: User/user.php");
                    exit;
                } else {
                    echo "Error: " . $ps->error;
                }
                $con->close();
            }
           

        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="signup_style.css">
</head>
<body>
<div class="content">
        <div class="form">
            <form id="form"  method="post">
                <div class="inputBox">
                    <input type="text" name="name" id="name" placeholder="Enter your name">
                    <input type="text" name="phone" id="phone" placeholder="Enter your phone number">
                    <input type="email" name="email" id="email" placeholder="Enter your email">
                    <input type="password" name="password" id="password" placeholder="Enter your password">
                    <input type="password" name="re-password" id="re-password" placeholder="Re-enter your password">
                </div>
                <div class="link">
                    <a href="./index.php">Already have an account. Click Here to Sign in.</a>
                </div>
                <input type="submit" name="submit" id="submit" value="Create Account" disabled>
            </form>
        </div>
    </div>
    <script src="signup_js.js"></script>
</body>
</html>