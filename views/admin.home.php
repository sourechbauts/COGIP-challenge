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
        <td><a href="<?php url('invoice-details/'.$invoice['id']); ?>"><?php echo $invoice['numero'] ?></a></td>
        <td><?php echo $invoice['objet'] ?></td>
        <td><?php echo $invoice['date_rec'] ?></td>
        <td>Edit Delete</td>
      </tr>
    <?php
      }
    ?>
  </tbody>
</table>

<h2>5 dernières personnes</h2>

<?php
if(empty($view_data['people'])) echo '<p>Nothing to see here</p>';
else {
  
  foreach ($view_data['people'] as $person) {
    ?>

    <?php
  }
}
?>

<h2>5 dernières sociétés</h2>

<?php if(empty($view_data['companies'])) echo '<p>Nothing to see here</p>'; ?>


<?php

$view_data['content'] = ob_get_contents();

ob_end_clean();

require VIEWS."/layout.php";

?>
