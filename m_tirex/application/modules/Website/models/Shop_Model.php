<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Shop_Model extends CI_Model {
    
 
	public function InsertCart($table,$data){
		$this->db->insert($table, $data);
		$id = $this->db->insert_id();
		return (isset($id)) ? $id : FALSE;		
	}

	public function InsertDetail($data){
		$this->db->insert('cart', $data);
	}
       
}