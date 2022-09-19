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


$stmt = $pdo->prepare("SELECT albums.id, albums.name, albums.year, albums.sale, albums.vinyl_count, albums.cover, albums.description, vinyl_types.type_name, s.state FROM albums join vinyl_types on albums.vinyl_type_id=vinyl_types.id join states s on s.id = albums.state_id where albums.sale = :sale");
$stmt->bindValue('sale', true);
$stmt->execute();
$res = $stmt->fetchAll();


foreach ($res as $key => $album) {
    $stmt = $pdo->prepare("SELECT genres.genre from genres join albums_genres ag on genres.id = ag.genre_id where album_id = :id");
    $stmt->bindValue('id', $album['id']);
    $stmt->execute();
    $genres = $stmt->fetchAll();
    $genres_str = "";
    foreach ($genres as $genre) {
        $genres_str = $genres_str . " " . $genre['genre'];
    }
    $res[$key]['genres'] = $genres_str;

    $stmt = $pdo->prepare("SELECT authors.name from authors join albums_authors aa on authors.id = aa.author_id where album_id = :id");
    $stmt->bindValue('id', $album['id']);
    $stmt->execute();
    $authors = $stmt->fetchAll();
    $author_str = "";
    foreach ($authors as $author) {
        $author_str = $author_str . " " . $author['name'];
    }
    $res[$key]['authors'] = $author_str;
}

$pdo = null;

$smarty->assign('albums', $res);

$smarty->display("templates/trade.tpl");



