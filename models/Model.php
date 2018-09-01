<?php

class Model
{
  protected $db;

  public function __construct() {
    $db_options = array(
      PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
    $this->db = new PDO('mysql:host=localhost;dbname='.DB_NAME, DB_USER, DB_PASSWORD, $db_options);
  }

  public function all() {
    $sql = 'SELECT * FROM '.$this->tableName;
    $request = $this->db->query($sql);
    $data = $request->fetchAll(PDO::FETCH_ASSOC);
    return $data;
  }

  public function byId($id) {
    $sql = 'SELECT * FROM '.$this->tableName.' WHERE id = ?';
    $request = $this->db->prepare($sql);
    $request->execute(array($id));
    $data = $request->fetch(PDO::FETCH_ASSOC);
    return $data;
  }

  public function lastFive() {
    $sql = 'SELECT * FROM '.$this->tableName.' ORDER BY '.$this->sortField.' DESC LIMIT 5';
    $request = $this->db->query($sql);
    $data = $request->fetchAll(PDO::FETCH_ASSOC);
    return $data;
  }
}

?>
