<?php
class M_user extends CI_Model {

    // function cek_login($username, $password) {
    //     $this->db->where('username', $username);
    //     $this->db->where('password', md5($password));
    //     return $this->db->get('users');
    // }
    function cek_login($username){
    return $this->db->get_where('users', ['username' => $username])->row();
}
    function insert_user($data){
    return $this->db->insert('users', $data);
}
}

