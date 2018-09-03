<?php

class InvoiceModel extends Model
{
  protected $tableName = 'factures';
  protected $sortField = 'date_rec';

  // public function all() {
  //   $sql = 'SELECT * FROM '.$this->tableName;
  //   $request = $this->db->query($sql);
  //   $data = $request->fetchAll(PDO::FETCH_ASSOC);
  //   return $data;
  // }

  public function create($data) {
    $data = $this->validate($data);
    var_dump($data);
  }

  public function validate($data) {
    if(isset($data['id'])) {
      // SQL query to check if id exists
      if($this->byId($data['id']) === FALSE) {
        $data['id']['valid'] = FALSE;
        $data['id']['error'] = "Doesn't exist";
      }
      else $data['id']['valid'] = TRUE;
    }
    if(isset($data['number'])) {
      // TODO: SQL query for unique number ?
      if(intval($data['number']) < 1) {
        $data['number']['valid'] = FALSE;
        $data['number']['error'] = "Invalid number";
      }
      else $data['number']['valid'] = TRUE;
    }
    if(isset($data['date'])) {
      // Check valid date
      $data['date']['valid'] = TRUE;
    }
    if(isset($data['object'])) {
      // Check valid object
      if(strlen($data['object']) > 200) {
        $data['object']['valid'] = FALSE;
        $data['object']['error'] = "Too long object";
      }
      else $data['object']['valid'] = TRUE;
    }
    return $data;
  }
}

?>
