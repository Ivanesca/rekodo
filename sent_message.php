<?php

session_start();

require_once('Smarty.class.php');

$smarty = new Smarty;
$user_id = 0;

if (isset($_SESSION['user_id'])) {
    $smarty->assign('user_id', $_SESSION['user_id']);
    $smarty->assign('user_role', $_SESSION['user_role']);
    $smarty->assign('username', $_SESSION['username']);
    $user_id = $_SESSION['user_id'];
} else {
    if (isset($_COOKIE['user_id'])) {
        $smarty->assign('user_id', $_COOKIE['user_id']);
        $smarty->assign('user_role', $_COOKIE['user_role']);
        $smarty->assign('username', $_COOKIE['username']);
        $user_id = $_COOKIE['user_id'];
    } else {
        header('Location: login.php');
    }
}

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("Select m.id, message, album_id, cover, a.name, u.name owner_name, u.email owner_email
from messages m join albums a on a.id = m.album_id join users u on a.owner_id = u.id
where sender_id = :ow_id");
$stmt->bindValue("ow_id", $user_id);
$stmt->execute();

$message = $stmt->fetchAll();

foreach ($message as $key => $mess) {
    $stmt = $pdo->prepare("SELECT albums.name from albums join suggestions s on albums.id = s.album_id where s.message_id = :mess_id");
    $stmt->bindValue('mess_id', $mess['id']);
    $stmt->execute();

    $message[$key]['suggests'] = $stmt->fetchAll();
}

$stmt = $pdo->prepare("select * from authors");
$stmt->execute();
$authors = $stmt->fetchAll();

$pdo = null;

$smarty->assign('messages', $message);
$smarty->assign('authors', $authors);

$smarty->display("templates/sent_message.tpl");
