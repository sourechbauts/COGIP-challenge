<?php

require __DIR__."/../includes/database.php";

class Model
{
  protected $db;

  public function __construct($db) {
    $this->db = $db;
  }
}

class InvoiceModel extends Model
{
  protected $tableName = 'factures';

  public function all() {
    $sql = 'SELECT * FROM '.$this->tableName;
    $request = $this->db->query($sql);
    $data = $request->fetchAll(PDO::FETCH_ASSOC);
    return $data;
  }
}

$invoice = new InvoiceModel($db);

var_dump($invoice->all());

?>
