<?php
    include 'connection.php';

    if($_SERVER['REQUEST_METHOD'] === 'POST'){
        if(!empty($_POST['email']) && !empty($_POST['password'])){
            if($_POST['role'] == "user"){
                $email = $_POST['email'];
                $password = $_POST['password'];
                $sql = "select id, password from user where email=?;";
                $ps = $con->prepare($sql);
                $ps->bind_param("s", $email);
                $ps->execute();
                $ps->bind_result($userId,$hashDB);
                if ($ps->fetch() && password_verify($password,$hashDB)) {
                    session_start();
                    $_SESSION['userId'] = $userId;
                    header("Location: User/user.php");
                    exit;
                } else {
                    echo "<script>alert('Please enter correct email and password')</script>";
                }
                $ps->close();
                $con->close();
            }else if($_POST['role'] == "admin"){
                $email = $_POST['email'];
                $password = $_POST['password'];
                $sql = "select id,password from admin where email=?;";
                $ps = $con->prepare($sql);
                $ps->bind_param("s", $email);
                $ps->execute();
                $ps->bind_result($adminId,$hashDB);
                if ($ps->fetch() && password_verify($password,$hashDB)) {
                    session_start();
                    $_SESSION['adminId'] = $adminId;
                    header("Location: Admin/admin.php");
                    exit;
                } else {
                    echo "<script>alert('Please enter correct email and password')</script>";
                }
                $ps->close();
                $con->close();
            }else if($_POST['role'] == "superadmin"){
                $email = $_POST['email'];
                $password = $_POST['password'];
                $sql = "select id,password from superadmin where email=?;";
                $ps = $con->prepare($sql);
                $ps->bind_param("s", $email);
                $ps->execute();
                $ps->bind_result($superadminId,$hashDB);
                if ($ps->fetch() && password_verify($password,$hashDB)) {
                    session_start();
                    $_SESSION['superadminId'] = $superadminId;
                    header("Location: SuperAdmin/superadmin.php");
                    exit;
                } else {
                    echo "<script>alert('Please enter correct email and password')</script>";
                }
                $ps->close();
                $con->close();
            }
        }
       
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="content">
        <div class="form">
            <form method="post" action="index.php">
                <select name="role" id="role">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                    <option value="superadmin">Super Admin</option>
                </select>
                <div class="inputBox">
                    <input type="email" name="email" placeholder="Enter your email">
                    <input type="password" name="password" placeholder="Enter your password">
                </div>
                <div class="link">
                    <a href="./signup.php">Don't have an account. Click Here to Sign up.</a>
                </div>
                <input type="submit" name="submit" value="submit">
            </form>
        </div>
    </div>
</body>
</html>