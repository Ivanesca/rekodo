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

if (isset($_REQUEST['author'])) {
    $stmt = $pdo->prepare("select albums.id from albums join albums_authors aa on albums.id = aa.album_id 
where owner_id = :ow_id and aa.author_id = :auth_id");
    $stmt->bindValue("ow_id", $user_id);
    $stmt->bindValue("auth_id", $_REQUEST['author']);
} else {
    $stmt = $pdo->prepare("select id from albums where owner_id = :ow_id");
    $stmt->bindValue("ow_id", $user_id);
}

$stmt->execute();
$albums = $stmt->fetchAll();


$id_str = implode("','", array_column($albums, 'id'));

$stmt = $pdo->prepare("Select m.id, message, date_format(message_date, '%M %d %Y %H:%i'), album_id, cover, a.name, sender_id, u.name sender, password, email
from messages m join users u on u.id = m.sender_id join albums a on a.id = m.album_id
where album_id in ('" . $id_str . "')");

$stmt->execute();
$message = $stmt->fetchAll();

$stmt = $pdo->prepare("select * from authors");
$stmt->execute();
$authors = $stmt->fetchAll();

$pdo = null;

$smarty->assign('messages', $message);
$smarty->assign('authors', $authors);

$smarty->display("templates/message.tpl");
