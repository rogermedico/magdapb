<?php

class Database extends CI_Controller {
    
    function __construct(){
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->library('grocery_CRUD');
 
    }

    public function publications(){
        if(!$this->ion_auth->logged_in()){
            show_404();
        }
        $crud = new grocery_CRUD();
 
        $crud->set_subject('Publication');
        $crud->set_table('publications');
        $crud->required_fields('title','authors','date','journal','doi');
        $output = $crud->render();
 
        $this->load->view('templates/header',$output);
        $this->load->view('templates/navbar');
        $this->load->view('edit',$output);
        $this->load->view('templates/footer',$output);
    }

    public function projects(){
        if(!$this->ion_auth->logged_in()){
            show_404();
        }
        $crud = new grocery_CRUD();
 
        $crud->set_subject('Projects');
        $crud->set_table('projects');
        $crud->required_fields('position','date','text');
        $output = $crud->render();
 
        $this->load->view('templates/header',$output);
        $this->load->view('templates/navbar');
        $this->load->view('edit',$output);
        $this->load->view('templates/footer',$output);
    }

}

?>