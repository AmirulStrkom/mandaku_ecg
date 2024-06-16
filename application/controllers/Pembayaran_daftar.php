<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pembayaran_daftar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in3();
        $this->load->model('User_model', 'userrole');
        $this->load->model('Pembayaran_model');
    }

    function index()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['bayar'] = $this->Pembayaran_model->get();
        $this->load->view('layout/header', $data);
        $this->load->view('bendahara/vw_bayar_pendaftaran', $data);
        $this->load->view('layout/footer');
    }

    public function hapus($id)
    {
        $this->Pembayaran_model->delete($id);
        $error = $this->db->error();
        if ($error['code'] != 0) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert"><i class="icon fas fa-info-circle"></i>Data Pembayaran Tidak Dapat Dihapus! (Sudah Berelasi)</div>');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"><i class="icon fas fa-check-circle"></i>Data Pembayaran Berhasil Dihapus!</div>');
        }
        redirect('Pembayaran_daftar');
    }
}
