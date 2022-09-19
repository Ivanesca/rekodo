<?php

session_start();

$albums = $_REQUEST['album'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$id_str = implode("','", $albums);

$stmt = $pdo->prepare("Delete from albums where id IN ('".$id_str."')");
$stmt->execute();

$pdo=null;

header('Location: ../collection.php');