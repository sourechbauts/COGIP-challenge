<?php

require __DIR__."/config/database.php";
require __DIR__."/config/auth.php";
require __DIR__."/config/path.php";
require __DIR__."/src/auth.php";
require __DIR__."/src/mvc.php";
require __DIR__."/src/routing.php";
require __DIR__."/src/helpers.php";

// echo '<h4>GET</h4><pre>'.print_r($_GET, TRUE).'</pre>';
// echo '<h4>POST</h4><pre>'.print_r($_POST, TRUE).'</pre>';
// echo '<h4>SERVER</h4><pre>'.print_r($_SERVER, TRUE).'</pre>';
// echo '<h4>URL</h4><p>'.$_SERVER['REQUEST_SCHEME'].'://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'].'</p>';


route('GET', 'factures/#', 'InvoiceController', 'show');
// route('GET', '/^factures\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'show');
route('GET', 'factures/societe/#', 'InvoiceController', 'indexByCompany');
// route('GET', '/^factures\/societe\/([0-9]+)\/?$/', $actual_url, 'InvoiceController', 'indexByCompany');
route('GET', 'factures', 'InvoiceController', 'index');
// route('GET', '/^factures\/?$/', $actual_url, 'InvoiceController', 'index');

route('GET', 'login', 'LoginController', 'showForm');

route('POST', 'login', 'LoginController', 'login');

echo '<h1>¯\_(ツ)_/¯</h1>';

?>
