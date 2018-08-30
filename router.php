<?php

require __DIR__."/includes/path.php";
require __DIR__."/includes/auth.php";

function redirect($path) {
  header('Location: '.PROJECT_ROOT.$path);
}

spl_autoload_register(function($name){
  include __DIR__."/controllers/".$name.".php";
});

$url = $_SERVER["REQUEST_URI"];
$method = $_SERVER["REQUEST_METHOD"];
$actual_url = str_replace("/COGIP-challenge/", "", $url);

echo '<p>Method: '.$method.'</p>';
echo '<p>URI: '.$actual_url.'</p>';

echo '<h4>GET</h4><pre>'.print_r($_GET, TRUE).'</pre>';
echo '<h4>POST</h4><pre>'.print_r($_POST, TRUE).'</pre>';
// echo '<h4>SERVER</h4><pre>'.print_r($_SERVER, TRUE).'</pre>';

function route($method, $regex, $actual_url, $controller, $function) {
  // If we don't have the right method, skip the regex
  if($_SERVER["REQUEST_METHOD"] !== $method) return;

  if(preg_match($regex, $actual_url, $args)) {
    echo 'Call function '.$function.' from '.$controller;
    // preg_match puts the matched string in the first element of the array, so we remove it
    array_shift($args);
    // Call the controller (autoloaded)
    $controller = new $controller();
    // Call the method with unpacked arguments
    $controller->$function(...$args);
    exit;
  }
}

// route('GET', '/^test\/([0-9]+)\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'index');
route('GET', '/^factures\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'show');
route('GET', '/^factures\/societe\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'indexByCompany');
route('GET', '/^factures\/?$/', $actual_url, 'InvoiceController', 'index');


?>
