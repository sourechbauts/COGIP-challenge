<?php

function checkAuth($level) {
  // If the user is not connected, he can't access protected paths
  if(!isset($_SESSION['user_auth_level'])) return FALSE;

  return $_SESSION['user_auth_level'] >= $level;
}

?>
