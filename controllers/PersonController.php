<?php

class PersonController
{
  public function index() {
    echo '<p>Show all people</p>';
    exit;
  }

  public function show($id) {
    echo '<p>Show contact details for person: '.$id.'</p>';
  }
}


?>
