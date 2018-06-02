<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Relasi extends CI_Model {

	public function __construct()
	 {
	 parent::__construct();
	 }

	public function ambil_barang($num, $offset)
	 {

	 $this->db->order_by('id_barang', 'ASC');

	 $data = $this->db->get('v_barang', $num, $offset);

	return $data->result();
	 }

	 public function ambil_makanan($num, $offset)
	 {

	 $this->db->order_by('id_barang', 'ASC');

	 $data = $this->db->get('v_barang_makanan', $num, $offset);

	return $data->result();
	 }

	 public function ambil_baju($num, $offset)
	 {

	 $this->db->order_by('id_barang', 'ASC');

	 $data = $this->db->get('v_barang_baju', $num, $offset);

	return $data->result();
	 }

	 public function v_Barang($cKondisi="") {
		$Query = $this->db->query("SELECT * FROM  v_barang ".$cKondisi." ");
		return $Query->result_array();	
	}
	
	public function v_Toko($cKondisi="") {
		$Query = $this->db->query("SELECT * FROM  tm_vendor ".$cKondisi." ");
		return $Query->result_array();	
	}
	

	function data($number,$offset,$url,$Short,$kategori){

		$parentK =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$kategori.".html' ORDER BY id_kategori DESC");
		foreach ($parentK as $key => $vaData) {
			$parentKat = $vaData['id_kategori'];
		}
		$kategoriA =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$url.".html' AND id_kategori_parent = '".$parentKat."' ORDER BY id_kategori DESC");
		foreach ($kategoriA as $key => $vaData) {
			$nilai = $vaData['id_kategori'];
			$parent = $vaData['id_kategori_parent'];
		}
		if ($Short == '6') {
			$this->db->order_by("harga","desc");
		}elseif($Short == '5'){
			$this->db->order_by("harga","asc");
		}elseif($Short == '4'){
			$this->db->order_by("id_barang","desc");
		}elseif($Short == '3'){
			$this->db->order_by("id_vendor","desc");
		}
		 
		$this->db->where('id_kategori_parent',$nilai);
		$this->db->or_where('id_kategori',$nilai);
		return $query = $this->db->get('v_barang',$number,$offset)->result_array();		
	}

	function jumlah_data($url,$kategori){
		$parentK =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$kategori.".html' ORDER BY id_kategori DESC");
		foreach ($parentK as $key => $vaData) {
			$parentKat = $vaData['id_kategori'];
		}
		$kategoriA =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$url.".html' AND id_kategori_parent = '".$parentKat."' ORDER BY id_kategori DESC");
		foreach ($kategoriA as $key => $vaData) {
			$nilai = $vaData['id_kategori'];
			$parent = $vaData['id_kategori_parent'];
		}
		
		return $this->db->query("select * from tm_barang where tm_barang.`status`='1' and (id_kategori='".$nilai."' or  id_kategori in (select id_kategori from tm_kategori where tm_kategori.id_kategori_parent='".$nilai."'))")->num_rows();
	}



}