<?php

require __DIR__."/config/database.php";
require __DIR__."/config/auth.php";
require __DIR__."/config/path.php";
require __DIR__."/src/auth.php";
require __DIR__."/src/mvc.php";
require __DIR__."/src/routing.php";
require __DIR__."/src/helpers.php";


// INVOICES
route('GET', 'factures/#', 'InvoiceController', 'show');
route('GET', 'factures/societe/#', 'InvoiceController', 'indexByCompany');
route('GET', 'factures', 'InvoiceController', 'index');
route('GET', 'invoice-details/#', 'InvoiceController', 'show');

route('GET', 'facture/add', 'InvoiceController', 'addForm');
route('POST', 'facture/add', 'InvoiceController', 'add');

// LOGIN
route('GET', 'login', 'LoginController', 'showForm');
route('POST', 'login', 'LoginController', 'login');

// PEOPLE
route('GET', 'annuaire', 'PersonController', 'index');
route('GET', 'contact-details/#', 'PersonController', 'show');

// COMPANIES
route('GET', 'fournisseurs', 'CompanyController', 'indexByType', 0);
route('GET', 'clients', 'CompanyController', 'indexByType', 1);
route('GET', 'company-details/#', 'CompanyController', 'show');

//ADMIN PANEL
route('GET', 'admin', 'AdminPanelController', 'home');


// If the URL doesn't match any route...
echo '<h1>¯\_(ツ)_/¯</h1>';

$defaultController = new LoginController;
$defaultController->showForm();

?>
