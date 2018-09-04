<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <?php

  if(isset($view_data['content'])) echo $view_data['content'];
  else echo '<h3>Default content</h3>';

  ?>
</body>
</html>
