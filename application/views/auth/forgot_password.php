<main class="mx-auto pb-5">
    <div class="container-md bg-white px-md-5 pt-2 pt-md-4 main-content pb-5">
        <div class="col-10 offset-1 pb-4">
			<h2 class="text-center"><?php echo lang('forgot_password_heading');?></h2>
<p><?php echo sprintf(lang('forgot_password_subheading'), $identity_label);?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open("auth/forgot_password");?>

      <p>
      	<label for="identity"><?php echo (($type=='email') ? sprintf(lang('forgot_password_email_label'), $identity_label) : sprintf(lang('forgot_password_identity_label'), $identity_label));?></label> <br />
      	<?php echo form_input($identity);?>
      </p>

      <p><?php echo form_submit('submit', lang('forgot_password_submit_btn'));?></p>

<?php echo form_close();?>
</div>
</div>
</main>