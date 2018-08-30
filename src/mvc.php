<?php

spl_autoload_register(function($name){
  if(strpos('Controller', $name) !== FALSE) require __DIR__."/controllers/".$name.".php";
  elseif(strpos('Model', $name) !== FALSE) require __DIR__."/models/".$name.".php";
});

function view($path) {
  // The php extension is optional in the argument
  if(strpos($path, '.php') === FALSE) $path = $path.'.php';
  // Remove any / before the file name, as the Path constants already have a trailing slash
  $path = ltrim($path, '/');
  require VIEWS.$path;
  exit;
}

function redirect($path) {
  header('Location: '.ROOT.$path);
}

?>
