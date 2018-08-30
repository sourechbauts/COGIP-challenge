<?php

spl_autoload_register(function($name){
  include __DIR__."/../controllers/".$name.".php";
});

spl_autoload_register(function($name) {
  include __DIR__."/../models/".$name.".php";
});

function view($path, $view_data = NULL) {
  // $view_data will be used in the templates

  // The php extension is optional in the argument
  if(strpos($path, '.php') === FALSE) $path = $path.'.php';
  // Remove any / before the file name, as the Path constants already have a trailing slash
  $path = ltrim($path, '/');
  require VIEWS.$path;
  exit;
}

function url($link) {
  $link = ltrim($link, '/');
  echo ROOT.$link;
}

function redirect($path) {
  $path = ltrim($path, '/');
  header('Location: '.ROOT.$path);
}

?>
