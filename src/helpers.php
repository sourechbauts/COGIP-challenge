<?php

function post_isset($keys) {
  $missing = 0;
  foreach($keys as $key) {
    if(!isset($_POST[$key])) {
      // echo '<p>Key "'.$key.'" is required.</p>';
      $missing++;
    }
  }
  return ($missing === 0);
}


?>
