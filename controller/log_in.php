<?php

session_start();

$name = $_REQUEST['name'];
$password = $_REQUEST['password'];
$email = $_REQUEST['email'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("select * from users where email = :email and password = :pass and name = :name");
$stmt->bindValue("email", $email);
$stmt->bindValue("pass", $password);
$stmt->bindValue("name", $name);
$stmt->execute();
$res = $stmt->fetch();

if ($res) {
    print_r("Test");
    if (isset($_REQUEST['remember'])) {
        setcookie('user_id', $res['id'], time() + 3600, "/");
        setcookie('user_role', $res['role_id'], time() + 3600, "/");
        setcookie('username', $res['name'], time() + 3600, "/");
    } else {
        $_SESSION['user_id'] = $res['id'];
        $_SESSION['user_role'] = $res['role_id'];
        $_SESSION['username'] = $res['name'];
    }
    if ($res['role_id'] == 1) {
        header('Location: ../admin_index.php');
    } else {
        header('Location: ../index.php');
    }
} else {
    $stmt = $pdo->prepare("insert into users (name, password, email, role_id) values (:name, :password, :email, :role)");
    $stmt->bindValue("name", $name);
    $stmt->bindValue("password", $password);
    $stmt->bindValue("email", $email);
    $stmt->bindValue("role", 2);
    $res = $stmt->execute();
    if ($res) {
        $user_id = $pdo->lastInsertId();
        if (isset($_REQUEST['remember'])) {
            setcookie('user_id', $user_id, time() + 3600, "/");
            setcookie('user_role', 2, time() + 3600, "/");
            setcookie('username', $name, time() + 3600, "/");
        } else {
            $_SESSION['user_id'] = $user_id;
            $_SESSION['user_role'] = 2;
            $_SESSION['username'] = $name;
        }
        header('Location: ../index.php');
    } else {
        header('Location: ../login.php');
    }
}



