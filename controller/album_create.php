<?php
session_start();

$name = $_REQUEST['name'];
$year = $_REQUEST['year'];
$cover = $_REQUEST['cover'];
$genres = $_REQUEST['genre'];
$authors = $_REQUEST['author'];
$count = $_REQUEST['count'];
$sale = $_REQUEST['sale'];
$state = $_REQUEST['state'];
$about = $_REQUEST['about'];
$vinyl = $_REQUEST['vinyl'];
$user_id = 0;

if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
} else {
    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    }
}

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("insert into albums (name, year, sale, vinyl_count, cover, description, vinyl_type_id, owner_id, state_id) 
values (:name, :year, :sale, :count, :cover, :about, :vinyl_type, :owner, :state_id)");
$stmt->bindValue("name", $name);
$stmt->bindValue("year", $year);
$stmt->bindValue("sale", $sale);
$stmt->bindValue("count",$count);
$stmt->bindValue("cover",$cover);
$stmt->bindValue("about",$about);
$stmt->bindValue("vinyl_type",$vinyl);
$stmt->bindValue("owner",$user_id);
$stmt->bindValue("state_id",$state);
$stmt->execute();

$album_id = $pdo->lastInsertId();

foreach ($genres as $genre) {
    $stmt = $pdo->prepare("insert into albums_genres (album_id, genre_id) values (:album, :genre)");
    $stmt->bindValue("album", $album_id);
    $stmt->bindValue("genre", $genre);
    $stmt->execute();
}

foreach ($authors as $author) {
    $stmt = $pdo->prepare("insert into albums_authors (album_id, author_id) values (:album, :author)");
    $stmt->bindValue("album", $album_id);
    $stmt->bindValue("author", $author);
    $stmt->execute();
}

$pdo = null;

header('Location: ../collection.php');