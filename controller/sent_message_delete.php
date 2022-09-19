<?php

session_start();

$message = $_REQUEST['message'];

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$id_str = implode("','", $message);

print_r($id_str);

$stmt = $pdo->prepare("delete from messages where id in ('" .$id_str."')");
$stmt->execute();

$pdo=null;

header('Location: ../sent_message.php');