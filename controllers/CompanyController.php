<?php

class CompanyController
{
  public function indexByType($type) {
    echo '<p>List companies of type: '.$type.'</p>';
  }

  public function show($id) {
    echo '<p>Show company with id: '.$id.'</p>';
  }

}





?>
