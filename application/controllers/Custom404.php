<?php

class Custom404 extends CI_Controller {

    public function __construct() {
    
        parent::__construct(); 
    } 

    public function index() { 

        $data['title'] = 'Oops... seems that you have lost your spin!';
        $data['noTitle'] = TRUE;

        $this->output->set_status_header('404'); 
        $this->load->view('templates/header',$data);
        $this->load->view('custom_errors/error_404');
        $this->load->view('templates/footer');

    } 
} 

?>