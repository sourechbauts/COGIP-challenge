<?php

function createRegex($text) {
  $from = array('/', '#');
  $to = array('\/', '([0-9]+)');

  $text = trim($text, '/');
  $text = str_replace($from, $to, $text);
  $text = '/^'.$text.'\/?$/';

  return $text;
}


function route($method, $regex, $controller, $function, ...$parameters) {
  // If we don't have the right method, skip this route
  if($_SERVER["REQUEST_METHOD"] !== $method) return;
  // Remove the root part of the URI so we only have the request
  $url = str_replace(ROOT, "", $_SERVER["REQUEST_URI"]);

  $regex = createRegex($regex);

  if(preg_match($regex, $url, $args)) {
    // preg_match puts the matched string in the first element of the array, so we remove it
    array_shift($args);
    // Call the controller (autoloaded)
    $controller = new $controller();
    // Call the method with unpacked arguments
    $controller->$function(...$args, ...$parameters);
    exit;
  }
}


?>
