<?php

function showForm() {
  require PATH_VIEWS."/forms/login.php";
}

function processLogin() {
  if(!isset($_POST['login_user']) || !isset($_POST['login_pw'])) exit('missing data');
  else exit('ok');
  // If success
  //require PATH_VIEWS."/home";
  // If failure
  // Set sessions variables
  //require PATH_VIEWS."/login";
}



?>
