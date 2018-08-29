<?php

function showInvoice() {
  if(isset($_GET['id'])) {
    $view_data['content'] = '<h3>Facture n°'.$_GET['id'].'</h3>';
    require PATH_VIEWS."/layout.php";
  }
  else exit('prout');
}


?>
