<?php

class AdminPanelController
{
  public function home() {
    $invoice = new InvoiceModel;
    $invoice_data = $invoice->lastFive();
    // var_dump($invoice_data);
    // $company = new CompanyModel;
    // $company_data = $company->lastFive();
    view('admin.home', ['invoices' => $invoice_data]);
  }
}

?>
