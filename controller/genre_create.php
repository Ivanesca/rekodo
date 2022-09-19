<?php
session_start();

$genre = $_REQUEST['genre'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("insert into genres (genre) values (:name)");
$stmt->bindValue("genre", $genre);
$stmt->execute();

$pdo=null;

header('Location: ../admin_index.php');