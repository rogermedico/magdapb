<main class="mx-auto pb-5">
    <div class="container-md bg-white px-md-5 pt-2 pt-md-4 main-content pb-5">
        <div class="col-10 offset-1 pb-4">
			<h2 class="text-center"><?php echo lang('deactivate_heading');?></h2>
<p><?php echo sprintf(lang('deactivate_subheading'), $user->username);?></p>

<?php echo form_open("auth/deactivate/".$user->id);?>

  <p>
  	<?php echo lang('deactivate_confirm_y_label', 'confirm');?>
    <input type="radio" name="confirm" value="yes" checked="checked" />
    <?php echo lang('deactivate_confirm_n_label', 'confirm');?>
    <input type="radio" name="confirm" value="no" />
  </p>

  <?php echo form_hidden($csrf); ?>
  <?php echo form_hidden(['id' => $user->id]); ?>

  <p><?php echo form_submit('submit', lang('deactivate_submit_btn'));?></p>

<?php echo form_close();?>
</div>
</div>
</main>