<?php

class AdminPanelController
{
  public function home() {
    $invoice = new InvoiceModel;
    $invoice_data = $invoice->lastFive();

    $company = new CompanyModel;
    $company_data = $company->lastFive();

    $people = new PersonModel;
    $people_data = $people->lastFive();

    view('admin.home', ['invoices' => $invoice_data, 'companies' => $company_data, 'people' => $people_data]);
  }
}

?>
