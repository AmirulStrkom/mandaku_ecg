<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Bendahara extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in3();
        $this->load->model('User_model', 'userrole');
    }

    function index()
    {
        $data['judul'] = "Halaman Bendahara English Camp";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $this->load->view('layout/header', $data);
        $this->load->view('bendahara/vw_bendahara', $data);
        $this->load->view('layout/footer');
    }
}
