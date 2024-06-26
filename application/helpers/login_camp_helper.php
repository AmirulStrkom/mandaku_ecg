<?php
function is_logged_in() //membatasi akses ke halaman admin
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('auth');
    } else {
        $role = $ci->session->userdata('role');
        if ($role != "Admin") {
            redirect('Admin');
        }
    }
}
function is_logged_in2() //membatasi akses ke halaman user
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('auth');
    } else {
        $role = $ci->session->userdata('role');
        if ($role != "User") {
            redirect('Siswa');
        }
    }
}
function is_logged_in3() //membatasi akses ke halaman Bendahara
{
    $ci = get_instance();
    if (!$ci->session->userdata('email')) {
        redirect('auth');
    } else {
        $role = $ci->session->userdata('role');
        if ($role != "Bendahara") {
            redirect('Bendahara');
        }
    }
}
