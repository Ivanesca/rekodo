<?php
session_start();

$album_id = $_REQUEST['sale'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("UPDATE albums SET sale = true where id = :album_id");
$stmt->bindValue("album_id", $album_id);
$stmt->execute();

$pdo = null;

header('Location: ../index.php');