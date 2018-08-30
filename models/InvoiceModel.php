<?php

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

  public function validate($data) {
    if(isset($data['id'])) {
      // SQL query to check if id exists
    }
    if(isset($data['number'])) {
      // Check valid number
      // SQL query for unique number
    }
    if(isset($data['date'])) {
      // Check valid date
    }
    if(isset($data['object'])) {
      // Check valid object
    }
  }
}

?>
