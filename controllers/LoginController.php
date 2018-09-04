<?php

class LoginController
{
  public function showForm() {
    view('forms/login');
  }

  public function login() {
    if(!post_isset(['login_user', 'login_pwd'])) redirect('login');
    $content = '<h2>process login</h2>';
    view('layout', array('content' => $content));
  }
}

?>
