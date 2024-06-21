<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in2();
        $this->load->model('User_model', 'userrole');
        $this->load->model('Pendaftaran_model');
        $this->load->model('Info_pendaftaran_model');
    }

    function index()
    {
        $data['judul'] = "Status Pendaftaran Online Anda";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['pendaftaran'] = $this->Info_pendaftaran_model->get();


        $id = $data['user']['id'];
        $data['status'] = $this->Pendaftaran_model->get($id);

        $this->load->view('layout/header', $data);
        $this->load->view('siswa/vw_siswa', $data);
        $this->load->view('layout/footer');
    }
}
