<?php

class InvoiceController
{
  protected $model = 'InvoiceModel';

  // public function show($id) {
  //   echo '<p>From InvoiceController.php -> show -> ID'.$id.'</p>';
  // }

  public function index() {
    $invoices = new $this->model();
    $data = $invoices->all();
    var_dump($data);
    // $view_data['content'] = '<p>Index from php</p>';
    // require VIEWS."/layout.php";
    // view('layout', array('content' => $view_data['content']));
  }

  public function indexByCompany($company) {
    $view_data['content'] = '<p>Index by company '.$company.' (php)</p>';
    require VIEWS."/layout.php";
  }

  public function show($id) {
    $invoices = new $this->model();
    $data = $invoices->byId($id);
    var_dump($data);
  }

  public function add() {

  }
}


?>
