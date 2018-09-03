<?php

ob_start();

?>

<h1>Login Form</h1>

<form action="<?php url('login'); ?>" method="post">
  <input type="text" name="login_user" value="">
  <input type="password" name="login_pwd" value="">
  <input type="submit" name="" value="Login">
</form>

<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require VIEWS."/layout.php";

?>
