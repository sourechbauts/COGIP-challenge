<?php

class AdminPanelController
{
  public function home() {
    // Show 5s
    echo '<p>Show last 5 of everything</p>';
    $invoice = new InvoiceModel();
    // $company = new CompanyModel();
    $invoice_data = $invoice->lastFive();
    var_dump($invoice_data);
    $company = new CompanyModel;
    $company_data = $company->lastFive();
    
  }
}

?>
