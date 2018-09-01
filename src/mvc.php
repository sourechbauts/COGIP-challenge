<?php

spl_autoload_register(function($name){
  $file = __DIR__."/../controllers/".$name.".php";
  if(file_exists($file)) include $file;
});

spl_autoload_register(function($name) {
  $file = __DIR__."/../models/".$name.".php";
  if(file_exists($file)) include $file;
});

function view($path, $view_data = NULL) {
  // $view_data will be used in the templates

  // The php extension is optional in the argument
  if(strpos($path, '.php') === FALSE) $path = $path.'.php';
  // Remove any "/" before the file name, as the Path constants all have a trailing slash
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
