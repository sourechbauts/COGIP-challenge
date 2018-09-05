<?php

ob_start();

?>

<form action="" method="post" class="ui form">

  <?php
  if(isset($view_data['old']['errors'])) {
  ?>

  <div class="ui message">
    <div class="header">We had some issues</div>
    <ul class="list">
      <?php
      foreach($view_data['old']['errors'] as $error) {
        echo '<li>'.$error.'</li>';
      }
      ?>
    </ul>
  </div>

  <?php
  }
  ?>

  <div class="fields">
    <div class="field">
      <label>Numéro</label>
      <input type="text" name="number" value="<?php old('number', $view_data); ?>">
    </div>
    <div class="field">
      <label>Date</label>
      <input type="date" name="date" value="<?php old('date', $view_data); ?>">
    </div>
    <div class="field">
      <label>Objet</label>
      <input type="text" name="object" value="<?php old('object', $view_data); ?>">
    </div>
  </div>
  <input type="submit" value="Add" class="ui primary button">

</form>

<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require VIEWS."/layout.php";

?>
