<?php
class Dashboard extends CI_Controller {

    function __construct(){
        parent::__construct();
        if($this->session->userdata('status') != "login"){
            redirect('auth');
        }
    }

    function index(){
        $this->load->view('dashboard');
    }
}