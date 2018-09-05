<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="<?php url('assets/semantic.min.css'); ?>">
  <script src="<?php url('assets/semantic.min.js'); ?>" charset="utf-8"></script>
  <title>COGIP</title>
</head>
<body>
  <div class="ui attached stackable menu">
    <div class="ui container">
      <a href="<?php url('admin'); ?>" class="item">Accueil</a>
      <a href="<?php url('factures'); ?>" class="item">Factures</a>
      <a href="<?php url('fournisseurs'); ?>" class="item">Fournisseurs</a>
      <a href="<?php url('clients'); ?>" class="item">Clients</a>
      <a href="<?php url('logout'); ?>" class="right item">Logout</a>
    </div>
  </div>

  <div class="ui container">
    <?php

    if(isset($view_data['content'])) echo $view_data['content'];
    else echo '<h3>Default content</h3>';

    ?>
  </div>
</body>
</html>
