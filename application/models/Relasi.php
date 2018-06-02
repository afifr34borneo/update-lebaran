	<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Relasi extends CI_Model {

	public function v_sopir() {
		$Query = $this->db->query("SELECT * FROM v_antar");
		return $Query->result_array();	
	}

	public function v_alamat() {
		$Query = $this->db->query("SELECT * FROM v_alamat ORDER BY nama ASC");
		return $Query->result_array();	
	}

	public function v_tenagakerja_where($cIdUser) {
		$Query = $this->db->query("SELECT * FROM v_tenagakerja where id_tenagakerja = '".$cIdUser."' ");
		return $Query->result_array();	
	}

	public function v_jadwal() {
		$Query = $this->db->query("SELECT * FROM v_jadwal where id_kota = '".$this->session->userdata('kota')."' ORDER BY id_antar_paket DESC");
		return $Query->result_array();	
	}

	public function v_jadwaldua() {
		$Query = $this->db->query("SELECT * FROM v_jadwal ORDER BY id_antar_paket DESC");
		return $Query->result_array();	
	}

	public function v_jadwal_liat($id) {
		$Query = $this->db->query("SELECT * FROM v_jadwal Where id_antar_paket = '".$id."'");
		return $Query->result_array();	
	}

	public function v_detail_sp_penumpang($id) {
		$Query = $this->db->query("SELECT * FROM v_detail_sp_penumpang Where id_jadwal = '".$id."' and status='1'");
		return $Query->result_array();	
	}

	public function v_detail_sp_paket($id) {
		$Query = $this->db->query("SELECT * FROM v_detail_sp_paket Where id_jadwal = '".$id."' and status='2'");
		return $Query->result_array();	
	}


}