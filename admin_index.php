<?php
session_start();

require_once('Smarty.class.php');

$smarty = new Smarty;

if (isset($_SESSION['user_id'])) {
    $smarty->assign('user_id', $_SESSION['user_id']);
    $smarty->assign('user_role', $_SESSION['user_role']);
    $smarty->assign('username', $_SESSION['username']);
} else {
    if (isset($_COOKIE['user_id'])) {
        $smarty->assign('user_id', $_COOKIE['user_id']);
        $smarty->assign('user_role', $_COOKIE['user_role']);
        $smarty->assign('username', $_COOKIE['username']);
    } else {
        header('Location: login.php');
    }
}

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("select * from users");
$stmt->execute();
$users = $stmt->fetchAll();

$smarty->assign('users', $users);

$stmt = $pdo->prepare("select authors.id, authors.name, c.country from authors join countries c on c.id = authors.country_id");
$stmt->execute();
$authors = $stmt->fetchAll();

$smarty->assign('authors', $authors);

$stmt = $pdo->prepare("select * from genres");
$stmt->execute();
$genres = $stmt->fetchAll();

$smarty->assign('genres', $genres);

$stmt = $pdo->prepare("select * from countries");
$stmt->execute();
$countries = $stmt->fetchAll();

$smarty->assign('countries', $countries);

$pdo = null;

$smarty->display("templates/admin_index.tpl");



