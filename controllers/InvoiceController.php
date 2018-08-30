<?php

class InvoiceController
{
  public function show($id) {
    echo '<p>From InvoiceController.php -> show -> ID'.$id.'</p>';
  }

  public function index() {
    $view_data['content'] = '<p>Index from php</p>';
    require VIEWS."/layout.php";
  }

  public function indexByCompany($company) {
    $view_data['content'] = '<p>Index by company '.$company.' (php)</p>';
    require VIEWS."/layout.php";
  }

  public function add() {
    
  }
}


?>
