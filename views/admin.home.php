<?php

ob_start();

?>

<h2>5 dernières factures</h2>

<table class="ui celled table">
  <thead>
    <tr>
      <th>Numéro</th>
      <th>Objet</th>
      <th>Date</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach($view_data['invoices'] as $invoice) {
    ?>
      <tr>
        <td><?php echo $invoice['numero'] ?></td>
        <td><?php echo $invoice['objet'] ?></td>
        <td><?php echo $invoice['date_rec'] ?></td>
        <td>Edit Delete</td>
      </tr>
    <?php
      }
    ?>
  </tbody>
</table>

<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require VIEWS."/layout.php";

?>
