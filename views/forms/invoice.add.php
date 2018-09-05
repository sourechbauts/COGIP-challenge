<?php

ob_start();

?>

<form action="" method="post">
  <input type="text" name="number">
  <input type="date" name="date">
  <input type="text" name="object">
  <input type="submit" value="Add">
</form>

<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require VIEWS."/layout.php";

?>
