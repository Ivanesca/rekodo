<?php
session_start();

$author = $_REQUEST['author'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("delete from authors where id = :author ");
$stmt->bindValue("author", $author);
$stmt->execute();

$pdo=null;

header('Location: ../admin_index.php');