<?php

ob_start();

?>

<h1>Login Form</h1>

<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require PATH_VIEWS."/layout.php";

?>
