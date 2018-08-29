<?php

require __DIR__."/includes/path.php";
require __DIR__."/includes/auth.php";

function redirect($path) {
  header('Location: '.PROJECT_ROOT.$path);
}

$url = $_SERVER["REQUEST_URI"];
$method = $_SERVER["REQUEST_METHOD"];
$actual_url = str_replace("/COGIP-challenge/", "", $url);

echo '<p>Method: '.$method.'</p>';
echo '<p>URI: '.$actual_url.'</p>';

echo '<h4>GET</h4><pre>'.print_r($_GET, TRUE).'</pre>';
echo '<h4>POST</h4><pre>'.print_r($_POST, TRUE).'</pre>';
// echo '<h4>SERVER</h4><pre>'.print_r($_SERVER, TRUE).'</pre>';

class InvoiceController {
  public function show() {
    echo '<p>show from InvoiceController class</p>';
  }
}

function route($method, $regex, $actual_url, $controller, $function) {
  if($_SERVER["REQUEST_METHOD"] !== $method) return FALSE;
  if(preg_match($regex, $actual_url, $args)) {
    echo 'Call function '.$function.' from '.$controller.' with params '.$args[1];
    $controller = new $controller();
    $controller->$function();
    exit;
  }
}

route('GET', '/^factures\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'show');

if(preg_match('/^factures\/([0-9]+)\/?$/', $actual_url, $args)) {
  echo '-> Afficher facture N°'.$args[1];
  exit;
}
if(preg_match('/^factures\/societe\/([0-9]+)\/?$/', $actual_url, $args)) {
  echo '-> Afficher les factures de la société n°'.$args[1];
  exit;
}
if(preg_match('/^factures\/?$/', $actual_url, $args)) {
  echo '-> Afficher toutes les factures';
  exit;
}

if(isset($_GET['action'])) $action = $_GET['action'];
else $action = "home";

echo '<p>Action: '.$action.'</p>';

switch($action) {
  case "home":
    guard(1);
    require PATH_CONTROLLERS."/LoginController.php";
    showForm();
    break;
  case "login":
    require PATH_CONTROLLERS."/LoginController.php";
    if($method === "GET") showForm();
    elseif($method === "POST") processLogin();
    else redirect('home');
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
