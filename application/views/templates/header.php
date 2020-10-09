<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-177506002-1"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

	gtag('config', 'UA-177506002-1');
	</script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php
		if(!isset($title)){
			print('<title>Magda Pascual-Borràs Research</title>');
		}
		else{
			print('<title>'.$title.'</title>');
		}
	?>
	<meta name="description" content="Last uptades on research and curriculum vitae of Dr. Magda Pascual-Borràs.">
	<meta name="author" content="Roger Medico Piqué">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/styles.css'); ?>">
	<link rel="icon" href="<?php echo base_url(); ?>assets/img/favicon.png" type="image/png">
	<?php 
		if(isset($css_files)){
			 foreach($css_files as $file){
			 	print ("<link type=\"text/css\" rel=\"stylesheet\" href=\"$file\" />");
			 }
		}
	?>
</head>
<body class="h-100">
	<?php
		if(!isset($noTitle)){
			print('<div class="container-fluid pt-4 pb-3 bg-light page-title">');
			print('<h1 class="text-center">Magda Pascual Research</h1>');
			print('</div>');
		}
	?>
	
		
	