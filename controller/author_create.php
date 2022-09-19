<?php
session_start();

$name = $_REQUEST['author'];
$country = $_REQUEST['country'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("insert into authors (name, country_id) values (:name, :country)");
$stmt->bindValue("name", $name);
$stmt->bindValue("country", $country);
$stmt->execute();

$pdo=null;

header('Location: ../admin_index.php');