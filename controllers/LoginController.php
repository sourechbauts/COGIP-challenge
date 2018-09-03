<?php

class LoginController
{
  public function showForm() {
    view('forms/login');
  }

  public function login() {
    if(!post_isset(['login_user', 'login_pwd'])) redirect('login');
    $content = '<h2>Process Login</h2>';
    $content .= '<p>User: '.$_POST['login_user'].'</p>';
    $content .= '<p>Pass: '.$_POST['login_pwd'].'</p>';
    view('layout', array('content' => $content));
  }
}

?>
