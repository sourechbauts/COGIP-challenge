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
    return $data;
  }

  public function validate($data) {
    if(isset($data['id'])) {
      if($this->byId($data['id']) === FALSE) {
        $data['errors']['id'] = "Doesn't exist";
      }
    }
    if(isset($data['number'])) {
      // TODO: SQL query for unique number ?
      if(empty($data['number'])) $data['errors']['number'] = "Empty number";
      elseif(intval($data['number']) < 1) {
        $data['errors']['number'] = "Invalid number";
      }
    }
    if(isset($data['date'])) {
      list($year, $month, $day) = explode('-', $data['date']);
      if(!checkdate($month, $day, $year)) $data['errors']['date'] = "Invalid date";
      elseif($year < 2000) $data['errors']['date'] = "Invalid date";
      elseif($year > date("Y")) $data['errors']['date'] = "Invalid date";
    }
    if(isset($data['object'])) {
      if(empty($data['object'])) $data['errors']['object'] = "Empty object";
      elseif(strlen($data['object']) > 200) {
        $data['errors']['object'] = "Too long object";
      }
    }
    return $data;
  }
}

?>
