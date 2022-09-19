<?php

session_start();

require_once('Smarty.class.php');

$smarty = new Smarty;

$smarty->display("templates/login.tpl");



