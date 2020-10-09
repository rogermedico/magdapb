<script src="<?php echo base_url(); ?>assets/js/jquery.slim.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>

<?php 
    if(isset($js_files)){
        foreach($js_files as $file){
            print ("<script src=\"$file\"></script>");
        }
    }
?>

</body>
</html>