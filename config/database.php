<?php

define("DB_NAME", "COGIPapp");
define("DB_USER", "root");
define("DB_PASSWORD", "");

$db_options = array(
  PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");

$db = new PDO('mysql:host=localhost;dbname='.DB_NAME, DB_USER, DB_PASSWORD, $db_options);

?>
