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

function old($key, $view_data) {
  if(isset($view_data['old'][$key])) echo $view_data['old'][$key];
  else echo "nope";
}

 // Mostly used in the views, generates a URL
function url($link) {
  $link = ltrim($link, '/');
  echo ROOT.$link;
}

// Mostly used in controllers, redirects to a specific page
function redirect($path) {
  $path = ltrim($path, '/');
  header('Location: '.ROOT.$path);
}

?>
