<?php

function showInvoice() {
  if(isset($_GET['id'])) {
    $view_data['content'] = '<h3>Facture n°'.$_GET['id'].'</h3>';
    require PATH_VIEWS."/layout.php";
  }
  else exit('prout');
}

class InvoiceController
{
  public function show($id) {
    echo '<p>From InvoiceController.php -> show -> ID'.$id.'</p>';
  }

  public function index() {
    $view_data['content'] = '<p>Index from php</p>';
    require PATH_VIEWS."/layout.php";
  }

  public function indexByCompany($company) {
    $view_data['content'] = '<p>Index by company '.$company.' (php)</p>';
    require PATH_VIEWS."/layout.php";
  }
}


?>
