<main class="mx-auto pb-5">
    <div class="container-md bg-white px-md-5 pt-2 pt-md-4 main-content pb-5">
        <div class="col-10 offset-1 pb-4">
			<h2 class="text-center"><?php echo lang('edit_group_heading');?></h2>
<p><?php echo lang('edit_group_subheading');?></p>

<div id="infoMessage"><?php echo $message;?></div>

<?php echo form_open(current_url());?>

      <p>
            <?php echo lang('edit_group_name_label', 'group_name');?> <br />
            <?php echo form_input($group_name);?>
      </p>

      <p>
            <?php echo lang('edit_group_desc_label', 'description');?> <br />
            <?php echo form_input($group_description);?>
      </p>

      <p><?php echo form_submit('submit', lang('edit_group_submit_btn'));?></p>

<?php echo form_close();?>
</div>
</div>
</main>