<?php

session_start();

$genre = $_REQUEST['genre'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("delete from genres where id = :genre ");
$stmt->bindValue("genre", $genre);
$stmt->execute();

$pdo=null;

header('Location: ../admin_index.php');