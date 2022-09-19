<?php

session_start();

$user_id = 0;
if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
} else {
    if (isset($_COOKIE['user_id'])) {
        $user_id = $_COOKIE['user_id'];
    } else {
        header('Location: login.php');
    }
}

$album_id = $_REQUEST['album'];
$message = $_REQUEST['message'];
$date = date('Y-m-d');

$pdo = new PDO("mysql:host=localhost;dbname=rekodo_bd", 'root', 'vertrigo');

$stmt = $pdo->prepare("insert into messages (message, album_id, sender_id, message_date) VALUES (:mess, :alb, :sen, :message_date)");
$stmt->bindValue("mess", $message);
$stmt->bindValue("alb", $album_id);
$stmt->bindValue("sen", $user_id);
$stmt->bindValue("message_date", $date);
$stmt->execute();

$stmt = $pdo->prepare("select get_email(:album_id)");
$stmt->bindValue("album_id", $album_id);
$stmt->execute();
$email = $stmt->fetch();

$from = "..CHANGE..";
$to = $email[0];
$subject = 'New message!';
$message = 'New message!';

$headers = "Content-type: text/html; charset=utf-8\r\n" . "From: $from" . "\r\n" . "Reply-To: $from" . "\r\n" . "X-Mailer: PHP/" . phpversion();
//    mail($to, $subject, $message, $headers);

$pdo = null;

header('Location: ../trade.php');