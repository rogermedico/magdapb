<?php

class Publications extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');

        /* DISABLE CACHE START ************************************************/
        $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
        /* DISABLE CACHE END **************************************************/
    }

    public function index(){

        $this->load->model('publications_model');

        $data['publications'] = $this->publications_model->get_publications();
        $roger['email'] = safe_mailto('roger.medico@gmail.com','Roger Medico',array('title' => 'Contact the developer'));
        $this->load->view('templates/header');
        $this->load->view('templates/navbar');
        $this->load->view('publications',$data);
        $this->load->view('templates/bottom',$roger);
        $this->load->view('templates/footer');
    }

}
?>