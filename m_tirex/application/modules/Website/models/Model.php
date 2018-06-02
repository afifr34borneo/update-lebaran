<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


	// Syarat  :  
	
	// 1 . Select  = View 
	// 2 . Insert  = Ins
	// 3 . Update  = Updt
	// 4 . Delete  = Del

class Model extends CI_Model {

	
	
	////// MASTER //////
	
	public function Login($user,$pass) {
		$Query = $this->db->query("SELECT * FROM tm_customer WHERE email = '$user' AND password = '$pass' ");
		return $Query;	
	}
	public function LoginKurir($user,$pass) {
		$Query = $this->db->query("SELECT * FROM user_kurir WHERE username = '$user' AND `password` = '$pass' ");
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
	public function ViewCart($WhereBarang) {
		$Query = $this->db->query(" SELECT *, SUM(qty) as jumlah
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' 
									AND id_bayar='0'
									GROUP BY nama_barang");
		return $Query->result_array();	
	}

	public function ViewCartLimit($WhereBarang) {
		$Query = $this->db->query(" SELECT *, SUM(qty) as jumlah
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' 
									AND id_bayar='0'
									GROUP BY nama_barang
									ORDER BY id_cart DESC
									LIMIT 3");
		return $Query->result_array();	
	}

	public function ViewCartWhere($WhereBarang,$idVendor) {
		$Query = $this->db->query(" SELECT *, SUM(qty) as jumlah
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' AND 
										  id_vendor = '".$idVendor."' AND 
										  id_bayar='0'
									GROUP BY id_barang");
		return $Query->result_array();	
	}

	public function ViewCartTotal($WhereBarang,$idVendor) {
		$Query = $this->db->query(" SELECT *, SUM(harga*qty) as jumlah
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' AND 
										  id_vendor = '".$idVendor."' AND 
										  id_bayar='0'
									");
		return $Query->result_array();	
	}

	public function ViewTotal($WhereBarang) {
		$Query = $this->db->query(" SELECT *, SUM(harga*qty) as jumlah
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' AND 
									id_bayar='0'
									");
		return $Query->result_array();	
	}

	public function ViewVendor($WhereBarang) {
		$Query = $this->db->query(" SELECT *
									FROM tm_cart
									WHERE kodecart = '".$WhereBarang."' AND 
									id_bayar='0'
									GROUP BY id_vendor
									");
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

	//view barang

	public function ViewLimitBrg($Table,$Order,$Limit) {
		$Query = $this->db->query("SELECT * FROM ".$Table." ORDER BY ".$Order." AND status = '1' DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewLimitWhereBrg($Table,$Order,$Limit,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND status = '1' ORDER BY ".$Order." DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewWhereBrg($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND status = '1' ");
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
	public function ViewLimitWhereRand($Table,$Order,$Limit,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE id_kategori = '97126178518728712' OR 
																  id_kategori = '97126178518728705' OR 
																  id_kategori = '97126178518728706' OR 
																  id_kategori = '97126178518728707' OR 
																  id_kategori = '97126178518728711' OR
																  id_kategori = '25107357415505951' 
														    	  AND status = '1' ORDER BY RAND()  DESC LIMIT 0,$Limit");
		return $Query->result_array();	
	}
	public function ViewWhere($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ");
		return $Query->result_array();	
	}
	public function ViewWhereProduk($Table,$WhereField) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." >= '1'");
		return $Query->result_array();	
	}
	public function ViewWhereAnd($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' ");
		return $Query->result_array();	
	}

	public function ViewWhereAndKat($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' 
			ORDER BY urutan ASC");
		return $Query->result_array();	
	}

	public function ViewWhereAndTop($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' 
									AND ".$WhereField2." = '".$WhereValue2."' ORDER BY urutan ASC");
		return $Query->result_array();	
	}
	public function ViewWhereAndCart($Table,$WhereField,$WhereValue,$WhereField2,$WhereValue2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' AND ".$WhereField2." = '".$WhereValue2."' GROUP BY id_barang");
		return $Query->result_array();	
	}
	public function ViewWhereGroup($Table,$WhereField,$WhereValue,$cGroup) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' GROUP BY ".$cGroup." ");
		return $Query->result_array();	
	}
	public function ViewWhereOrder($Table,$WhereField,$WhereValue,$cGroup) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ORDER BY ".$cGroup." DESC");
		return $Query->result_array();	
	}
	public function ViewWhereOrderA($Table,$WhereField,$WhereValue,$cGroup) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." = '".$WhereValue."' ORDER BY ".$cGroup." DESC LIMIT 1");
		return $Query->result_array();	
	}
	public function ViewWhereLike($Table,$WhereField,$WhereValue) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." LIKE '%".$WhereValue."%'");
		return $Query->result_array();	
	}
        public function ViewWhereBetween($Table,$WhereField,$cRange1,$cRange2) {
		$Query = $this->db->query("SELECT * FROM ".$Table." WHERE ".$WhereField." BETWEEN ".$cRange1."  and ".$cRange2." ");
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

	public function ActCart() {
		$Query = $this->db->query("SELECT MAX(right(kodecart,'4')) as angka FROM tm_cart");
		return $Query->result_array();	
	}

	public function ActUnik() {
		$Query = $this->db->query("SELECT MAX(right(kode_konfirmasi,'2')) as angka FROM ts_transaksi");
		return $Query->result_array();	
	}

	public function ActTrs() {
		$Query = $this->db->query("SELECT MAX(right(kodetrs,'4')) as angka FROM ts_transaksi");
		return $Query->result_array();	
	}

	function dataCari($number,$offset,$url,$Short){
		if ($Short == '6') {
			$this->db->order_by("harga","desc");
		}elseif($Short == '5'){
			$this->db->order_by("harga","asc");
		}elseif($Short == '4'){
			$this->db->order_by("id_barang","desc");
		}elseif($Short == '3'){
			$this->db->order_by("id_vendor","desc");
		}
		if($this->session->userdata('pilih') == '1' || $this->session->userdata('pilih') == '2' ){
		$this->db->like('nama_barang', $url);
		$this->db->or_like('deskripsi', $url);
		//$this->db->where('status','1');

		return $query = $this->db->get('v_barang',$number,$offset)->result_array();		
		}elseif($this->session->userdata('pilih') == '3'){
		$this->db->like('namatoko', $url);
		return $query = $this->db->get('v_vendor',$number,$offset)->result_array();			
		}
	}
 	function jumlah_dataCari($url){
		
		return $this->db->query("SELECT * FROM v_barang WHERE 
								nama_barang LIKE '%".$url."%'
								OR 
								deskripsi LIKE '%".$url."%'
								 ")->num_rows();
	}

	function dataVendor($number,$offset,$url){
		//$this->db->where('status','1');
		$this->db->where('id_vendor',$url);
		return $query = $this->db->get('v_barang',$number,$offset)->result_array();		
	}
	function jumlah_dataVendor($url){
		
		return $this->db->query("SELECT * FROM view_barang WHERE id_vendor ='".$url."' AND status = '1' ")->num_rows();
	}


	function data($number,$offset,$url,$Short){
		function Judul($s) {
			$s = trim($s) ; 
			$c = array ('-');
			$s = strtolower(str_replace($c, ' ', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua
			return $s;
		}  
		$hzl = judul($url);
		$hazil = substr($hzl,0,10);
		$kategori =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$url."' ORDER BY id_kategori DESC");
		foreach ($kategori as $key => $vaData) {
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

	function jumlah_data($url){
		function JudulDua($s) {
			$s = trim($s) ; 
			$c = array ('-');
			$s = strtolower(str_replace($c, ' ', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua
			return $s;
		}  
		$hzl = JudulDua($url);
		$hazil = substr($hzl,0,10);
		$kategori =  $this->model->Code("SELECT * FROM tm_kategori WHERE url ='".$url."' ORDER BY id_kategori DESC");
		foreach ($kategori as $key => $vaData) {
			$nilai = $vaData['id_kategori'];
			$parent = $vaData['id_kategori_parent'];
		}
		
		return $this->db->query("select * from tm_barang where tm_barang.`status`='1' and (id_kategori='".$nilai."' or  id_kategori in (select id_kategori from tm_kategori where tm_kategori.id_kategori_parent='".$nilai."'))")->num_rows();
	}



	public function Insert($Table,$Value){
		$Query = $this->db->insert($Table,$Value);
		return $Query ;
	}
	public function Update($Table,$Where,$WhereValue,$Value){
		$this->db->where($Where,$WhereValue);
		$this->db->update($Table,$Value);
	}
	public function UpdateDua($Table,$Where,$WhereValue,$Value,$WhereValueDua,$WhereDua){
		$this->db->where($Where,$WhereValue);
		$this->db->where($WhereValueDua,$WhereDua);
		$this->db->update($Table,$Value);
	}
	public function HapusCart($Value){
		$this->db->query("DELETE FROM tm_cart 
						  WHERE id_barang = '".$Value."' AND kodecart = '".$this->session->userdata('idCart')."' ");
	}
	public function Delete($Table,$Where,$WhereValue){
		$this->db->where($Where,$WhereValue);
		$this->db->delete($Table);
	}

	public function GetId($Id,$Table) {
		$Query = $this->db->query("SELECT max($Id) FROM ".$Table." ");
		return $Query->result_array();	
	}

	public function SelectPaket() {
		$Query = $this->db->query("SELECT MAX(right(id_mitra,'4')) as angka FROM tm_mitra");
		return $Query->result_array();	
	}
}