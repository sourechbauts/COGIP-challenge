<?php

require __DIR__."/includes/path.php";
require __DIR__."/includes/auth.php";

$url = $_SERVER["REQUEST_URI"];
$method = $_SERVER["REQUEST_METHOD"];
$actual_url = str_replace("/COGIP-challenge/", "", $url);

echo '<p>Method: '.__DIR__.'</p>';
echo '<p>URI: '.$actual_url.'</p>';

echo '<h4>GET</h4><pre>'.print_r($_GET, TRUE).'</pre>';
echo '<h4>POST</h4><pre>'.print_r($_POST, TRUE).'</pre>';
echo '<h4>SERVER</h4><pre>'.print_r($_SERVER, TRUE).'</pre>';

if(isset($_GET['action'])) $action = $_GET['action'];
else $action = "home";

echo '<p>Action: '.$action.'</p>';

switch($action) {
  case "home":
    require PATH_CONTROLLERS."/LoginController.php";
    showForm();
    break;
  case "login":
    require PATH_CONTROLLERS."/LoginController.php";
    header('Location: http://localhost/COGIP-challenge/home');
    if($method === "GET") showForm();
    elseif($method === "POST") processLogin();
    else header('Location: home');
    break;
  case "showinvoice":
    require PATH_CONTROLLERS."/InvoiceController.php";
    showInvoice();
    break;
  default:
    require PATH_CONTROLLERS."/LoginController.php";
    showForm();
    break;
}

?>
