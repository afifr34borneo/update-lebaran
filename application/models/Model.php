<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


	// Syarat  :  
	
	// 1 . Select  = View 
	// 2 . Insert  = Ins
	// 3 . Update  = Updt
	// 4 . Delete  = Del

class Model extends CI_Model {

	
	////// MASTER //////
	
	public function Login($user,$pass) {
		$Query = $this->db->query("SELECT * FROM user_login WHERE username = '$user' AND password = '$pass' ");
		return $Query;	
	}

	public function Code($Query) {
		$Query = $this->db->query("  ".$Query."  ");
		return $Query->result_array();	
	}
	public function Codes($Query) {
		$Query = $this->db->query("  ".$Query."  ");
		return $Query;	
	}
	public function LastId($kolom,$table) {
		$Query = $this->db->query("SELECT MAX($kolom) AS LastIdFix FROM  $table");
		return $Query->result_array();	
	}
	public function View($Table,$Order) {
		$Query = $this->db->query("SELECT * FROM ".$Table." ORDER BY ".$Order." DESC");
		return $Query->result_array();	
	}
	public function ViewGroupBy($Table,$Order) {
		$Query = $this->db->query("SELECT * FROM ".$Table." GROUP BY ".$Order." DESC");
		return $Query->result_array();	
	}
	public function ViewASC($Table,$Order) {
		$Query = $this->db->query("SELECT * FROM ".$Table." ORDER BY ".$Order." ASC");
		return $Query->result_array();	
	}
	public function ViewLimit($Table,$Order,$Limit) {
		$Query = $this->db->query("SELECT * FROM ".$Table." ORDER BY ".$Order." DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewLimitGroup($Table,$Group,$Limit) {
		$Query = $this->db->query("SELECT * FROM ".$Table." GROUP BY ".$Group." DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewLimitWhere($Table,$Order,$Limit,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ORDER BY ".$Order." DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewWhere($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ");
		return $Query->result_array();	
	}
	public function ViewWherePnp($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND pindah = '0' AND id_kota = '".$this->session->userdata('kota')."'");
		return $Query->result_array();	
	}
	public function ViewWhereAnd($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' ");
		return $Query->result_array();	
	}
	public function ViewWhereAndtri($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2,$WhereField3,$WhereValue3) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' AND ".$WhereField3." = '".$WhereValue3."'");
		return $Query->result_array();	
	}

	public function ViewWhereAndtriPNP($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2,$WhereField3,$WhereValue3) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' AND ".$WhereField3." = '".$WhereValue3."' AND id_kota = '".$this->session->userdata('kota')."' ");
		return $Query->result_array();	
	}

	public function ViewWhereAndtriPKT($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2,$WhereField3,$WhereValue3) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' AND ".$WhereField3." = '".$WhereValue3."' AND id_kota = '".$this->session->userdata('kota')."' ORDER BY jam_kirim ASC");
		return $Query->result_array();	
	}
	public function ViewWhereGroup($Table,$WhereField,$WhereValue,$cGroup) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' GROUP BY ".$cGroup." ");
		return $Query->result_array();	
	}
	public function ViewWhereLike($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." LIKE '%".$WhereValue."%'");
		return $Query->result_array();	
	}
	public function ViewWhereAktor($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ORDER BY id DESC");
		return $Query->result_array();	
	}

	public function ViewWhereSum($Table,$WhereField,$WhereValue,$nTahun) {
		$Query = $this->db->query("SELECT SUM(jumlah) as Jumlah FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND tahun = '".$nTahun."' ");
		return $Query->result_array();	
	}

	public function SelectPaket() {
		$Query = $this->db->query("SELECT MAX(right(no_resi,'3')) as angka FROM paket");
		return $Query->result_array();	
	}

	public function SelectPenumpang() {
		$Query = $this->db->query("SELECT MAX(right(no_resi,'3')) as angka FROM penumpang");
		return $Query->result_array();	
	}

	public function SelectSpPenumpang() {
		$Query = $this->db->query("SELECT MAX(right(sp_penumpang,'3')) as angka FROM antar_paket");
		return $Query->result_array();	
	}

	public function SelectSpPaket() {
		$Query = $this->db->query("SELECT MAX(right(sp_paket,'3')) as angka FROM antar_paket");
		return $Query->result_array();	
	}

	public function SelectBSD() {
		$Query = $this->db->query("SELECT MAX(right(noBSD,'2')) as angka FROM tr_bsd_paket");
		return $Query->result_array();	
	}
	public function SelectBSDP() {
		$Query = $this->db->query("SELECT MAX(right(noBSD,'2')) as angka FROM tr_bsd_penumpang");
		return $Query->result_array();	
	}



	public function Insert($Table,$Value){
		$Query = $this->db->insert($Table,$Value);
		return $Query ;
	}
	public function Update($Table,$Where,$WhereValue,$Value){
		$this->db->where($Where,$WhereValue);
		$this->db->update($Table,$Value);
	}
	public function Delete($Table,$Where,$WhereValue){
		$this->db->where($Where,$WhereValue);
		$this->db->delete($Table);
	}

	public function GetId($Id,$Table) {
		$Query = $this->db->query("SELECT max($Id) FROM ".$Table." ");
		return $Query->result_array();	
	}

	
}