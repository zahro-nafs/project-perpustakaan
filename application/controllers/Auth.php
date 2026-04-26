<?php
class Auth extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('M_user');
    }

    function index()
    {
        $this->load->view('auth/login');
    }
    function login()
    {
        $username = trim($this->input->post('username'));
        $password = trim($this->input->post('password'));

        if (empty($username) || empty($password)) {
            $this->session->set_flashdata('error', 'Username dan Password wajib diisi!');
            redirect('auth');
            return;
        }

        $user = $this->M_user->cek_login($username);

        if ($user && password_verify($password, $user->password)) {

            $data_session = array(
                'nama' => $user->username,
                'status' => "login"
            );

            $this->session->set_userdata($data_session);

            redirect('dashboard');

        } else {
            $this->session->set_flashdata('error', 'Username atau Password salah!');
            redirect('auth');
        }
    }

    function logout(){
    $this->session->unset_userdata('nama');
    $this->session->unset_userdata('status');

    $this->session->set_flashdata('success', 'Berhasil logout!');
    redirect('auth');
}
    function register()
    {
        $this->load->view('auth/register');
    }

    function register_action()
    {
        //Aturan Validasi
        $this->form_validation->set_rules('username', 'Username', 'required|is_unique[users.username]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[5]');

        // Set message
        $this->form_validation->set_message('required', '%s wajib diisi!');
        $this->form_validation->set_message('is_unique', '%s sudah digunakan!');
        $this->form_validation->set_message('valid_email', 'Format email tidak valid!');
        $this->form_validation->set_message('min_length', '%s minimal 5 karakter!');

        // jika validasi gagal
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('auth/register');
        } else {
            $username = trim($this->input->post('username'));
            $email = trim($this->input->post('email'));
            $password = trim($this->input->post('password'));

            $hash = password_hash($password, PASSWORD_DEFAULT);

            $data = array(
                'username' => $username,
                'email' => $email,
                'password' => $hash
            );

            $this->M_user->insert_user($data);
            $this->session->set_flashdata('success', 'Registrasi berhasil! Silakan login.');
            redirect('auth');
        }
    }
}