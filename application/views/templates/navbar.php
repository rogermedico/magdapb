<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">

	<button class="navbar-toggler mr-auto" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarToggler">

		<ul class="navbar-nav mx-auto">
			<li class="nav nav-item mx-4 mx-lg-5 <?php if(uri_string() == '') echo 'active'?>">
				<a class="nav-link" href="<?php echo base_url(); ?>">Home</a>
			</li>
			<li class="nav nav-item mx-4 mx-lg-5 <?php if(uri_string() == 'publications') echo 'active'?>">
				<a class="nav-link" href="<?php echo base_url(); ?>publications">Publications</a>
			</li>
			<li class="navbar-brand mx-4 mx-lg-5" href="<?php echo base_url(); ?>">
				<img class="navbar-logo" src="<?php echo base_url()?>assets/img/mol.svg" alt="logo">
			</li>
			<li class="nav nav-item mx-4 mx-lg-5 <?php if(uri_string() == 'projects') echo 'active'?>">
				<a class="nav-link" href="<?php echo base_url(); ?>projects">Projects</a>
			</li>
			<li class="nav-item mx-4 mx-lg-5 <?php if(uri_string() == 'contact') echo 'active'?>">
				<a class="nav-link" href="<?php echo base_url(); ?>contact">Contact</a>
			</li>
			<?php
				if($this->ion_auth->logged_in()){
					print('<li class="nav-item dropdown">');
					print('<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Edit</a>');
					print('<div class="dropdown-menu" aria-labelledby="navbarDropdown">');
					print('<a class="dropdown-item" href="'.base_url().'database/projects">Projects</a>');
					print('<a class="dropdown-item" href="'.base_url().'database/publications">Publications</a>');
					print('</div>');
					print('</li>');
				}
			?>
		</ul>
		
		<?php
			if($this->ion_auth->logged_in()){
				print('<form method="post" class="form-inline" action="'.base_url('auth/logout').'">');
				print('<button type="submit" class="btn btn-danger my-2 ml-sm-4">Logout</button>');
				print('</form>');
			}
		?>
		
	</div>	
</nav>
