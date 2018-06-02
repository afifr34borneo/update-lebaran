<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends CI_Controller {

	public function __construct(){
		
        parent::__construct();
        ob_start();
		//error_reporting(0);         
        $this->load->model('model');
        $this->load->model('Relasi');
        $this->load->database();
        $this->load->helper('url');
		$this->load->helper('form');
		$this->load->helper('download');
		$this->load->library('session'); 
		 
    }

    public  function Date2String($dTgl){
			//return 2012-11-22
			list($cDate,$cMount,$cYear)	= explode("-",$dTgl) ;
			if(strlen($cDate) == 2){
				$dTgl	= $cYear . "-" . $cMount . "-" . $cDate ;
			}
			return $dTgl ; 
		}
		
		public  function String2Date($dTgl){
			//return 22-11-2012  
			list($cYear,$cMount,$cDate)	= explode("-",$dTgl) ;
			if(strlen($cYear) == 4){
				$dTgl	= $cDate . "-" . $cMount . "-" . $cYear ;
			} 
			return $dTgl ; 	
		}
		
		public function TimeStamp() {
			date_default_timezone_set("Asia/Jakarta");
			$Data = date("H:i:s");
			return $Data ;
		}
			
		public function DateStamp() {
   			date_default_timezone_set("Asia/Jakarta");
			$Data = date("d-m-Y");
			return $Data ;
		}  
			
		public function DateTimeStamp() {
   			date_default_timezone_set("Asia/Jakarta");
			$Data = date("Y-m-d h:i:s");
			return $Data ;
		} 
    
	public function signin($Action=""){
		$data = "" ;
		if($Action == "error"){
			$data['notif'] = "Username / Password Salah" ;
			}
		$this->load->view('backend/login',$data);
		
	}

    public function index($Aksi=""){
    	$dataHeader['title'] = "TIREX";
    	$dataHeader['link']	 = 'index';
    	$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/index');
		//$this->load->view('backend/container/footer');

	}
	//sp buat jadwal ambil order
	public function surat_ambilorder($Aksi=""){
		$dataHeader['title']	= "Surat Pengantar";
		$dataHeader['link']		= 'order';
		$data['action'] 		= $Aksi ;
		$now = strtotime(date("d-m-Y"));
		$data['row'] 			= $this->model->Code("SELECT * FROM tirex_v_jadwal WHERE tanggal_kirim = '".date("d-m-Y")."' OR tanggal_kirim = '".date('d-m-Y', strtotime('-1 day', $now))."' ORDER BY id_antar_paket DESC ") ;
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/data-pemberangakat',$data);
		$this->load->view('backend/container/footer');
	}

	
	public function add_surat($Aksi=""){
		$data['action'] = $Aksi;
		$data['mobil']	= $this->model->view('tirex_v_pegawai','id_pegawai');
		$this->load->view('backend/admin/data/add_jadwal',$data);
	}

	public function edit_jadwal($Aksi="",$Id=""){
		$data['field'] 	= $this->model->ViewWhere('tirex_v_jadwal','id_antar_paket',$Id);
		$data['action'] = 'edit';
		$data['mobil']	= $this->model->view('tirex_v_pegawai','id_pegawai');
		$this->load->view('backend/admin/data/add_jadwal',$data);
	}
	// akhir buat jadwal ambil order

	// buat jadwal kirim order 
	public function surat_kirim($Aksi=""){
		$dataHeader['title']	= "Surat Pengantar";
		$dataHeader['link']		= 'order';
		$data['action'] 		= $Aksi ;
		$now 					= strtotime(date("d-m-Y"));
		$data['row'] 			= $this->model->Code("SELECT * FROM tirex_v_jadwalkurir WHERE tanggal_kirim = '".date("d-m-Y")."' OR tanggal_kirim = '".date('d-m-Y', strtotime('-1 day', $now))."' ORDER BY id_antar_kurir DESC ") ;
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/data-pengiriman',$data);
		$this->load->view('backend/container/footer');
	}

	
	public function add_kirim($Aksi=""){
		$data['action'] = $Aksi;
		$data['mobil']	= $this->model->view('tirex_v_pegawai','id_pegawai');
		$this->load->view('backend/admin/data/add_kurir',$data);
	}

	public function edit_kirim($Aksi="",$Id=""){
		$data['field'] 	= $this->model->ViewWhere('tirex_v_jadwalkurir','id_antar_kurir',$Id);
		$data['action'] = 'edit';
		$data['mobil']	= $this->model->view('tirex_v_pegawai','id_pegawai');
		$this->load->view('backend/admin/data/add_kurir',$data);
	}
	// akhir buat jadwal kirim order

	// buat jadwal ambil order 
	public function sp_ambil_paket($Id_SP="",$Aksi="",$Id=""){
		$dataHeader['title']	= "Surat Pengantar";
		$dataHeader['link']		= 'order';
		$data['action'] 		= $Aksi ; 
		$data['idsps']			= $Id_SP;
		$data['mobil']			= $this->model->ViewWhere('tirex_v_jadwal','id_antar_paket',$Id_SP);
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/input-sp',$data);
		$this->load->view('backend/container/footer');
	}

	public function tb_paket_sp(){
			$data['paket']			= $this->model->code("SELECT * FROM pbf_v_order WHERE id_sp = '0' AND tanggal_kirim ='".date("d-m-Y")."' ORDER BY nama_apotek ASC");
			$this->load->view('backend/admin/data/dt_paket',$data);
	}
	public function tb_paket($Id_SP=""){
			$data['paket']		= $this->model->ViewWhere('pbf_v_order_sp','id_sp',$this->session->userdata('idpaket'));	
			$this->load->view('backend/admin/data/table_paket',$data);
	}
	// akhir buat jadwal ambil order

	// buat jadwal kirim order 
	public function sp_kirim_paket($Id_SP="",$Aksi="",$Id=""){
		$dataHeader['title']	= "Surat Pengantar";
		$dataHeader['link']		= 'order';
		$data['action'] 		= $Aksi ; 
		$data['mobil']			= $this->model->ViewWhere('tirex_v_jadwalkurir','id_antar_kurir',$Id_SP);
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/input-sp-kirim',$data);
		$this->load->view('backend/container/footer');
	}

	public function tb_paket_kirim(){
			$data['paket']			= $this->model->code("SELECT * FROM pbf_v_order WHERE status_notif = '0' AND status = '2' ");
			$this->load->view('backend/admin/data/dt_kirim',$data);
	}
	public function tb_kirimpaket($Id_SP=""){
			$data['paket']		= $this->model->ViewWhere('pbf_v_order_sp','status_notif',$this->session->userdata('idkirim'));	
			$this->load->view('backend/admin/data/table_kirim',$data);
	}
	// akhir buat jadwal kirim order

	public function Monitor($Aksi=""){
		$dataHeader['title']	= "Monitor Pengiriman ";
		$dataHeader['link']		= 'Monitor';
		$data['action'] 		= $Aksi ;
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/monitor',$data);
		$this->load->view('backend/container/footer');
	}

	public function view_monitor($Aksi){
			$data['action'] 		= $Aksi ;
			$now 					= strtotime(date("d-m-Y"));
			if ($Aksi == "") {
				$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order_sp AND (tanggal_booking = '".date("d-m-Y")."' OR tanggal_booking = '".date('d-m-Y', strtotime('-1 day', $now))."') ORDER BY nama_apotek ASC") ;
			}else{
				$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order_sp WHERE id_pbf = '".$Aksi."' AND status >= '1' AND (tanggal_booking = '".date("d-m-Y")."' OR  tanggal_booking = '".date('d-m-Y', strtotime('-1 day', $now))."') ORDER BY nama_apotek ASC") ;
			}
			$this->load->view('backend/admin/view-monitor',$data);
	}

	public function OrderMasuk($Aksi=""){
		$dataHeader['title']	= "Monitor ORDER PBF";
		$dataHeader['link']		= 'Order';
		$data['action'] 		= $Aksi ;
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/order-masuk',$data);
		$this->load->view('backend/container/footer');
	}
	
	public function view_order_real(){
			$now = strtotime(date("d-m-Y"));
			$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order_sp WHERE status = '0' AND tanggal_booking = '".date("d-m-Y")."' OR  tanggal_booking = '".date('d-m-Y', strtotime('+1 day', $now))."' ORDER BY nama_apotek ASC") ;
			$this->load->view('backend/admin/data/view-order',$data);
	}

	public function add_pbf($Aksi="",$Id=""){
		$dataHeader['title']	= "User PBF";
		$dataHeader['link']		= 'users';
		$data['action'] 		= $Aksi ; 
		$data['row']			= $this->model->view('v_pbf','id_pbf');
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/add_pbf',$data);
		$this->load->view('backend/container/footer');
	}

	public function report_pbf($Aksi="",$Id=""){
		$dataHeader['title']	= "Report PBF";
		$dataHeader['link']		= 'Report';
		$data['action'] 		= $Aksi ; 
		$data['row']			= $this->model->view('v_pbf','id_pbf');
		$this->load->view('backend/container/header-admin',$dataHeader);
		$this->load->view('backend/admin/add_pbf',$data);
		$this->load->view('backend/container/footer');
	}

	public function CetakSpPaket(){
			$datacek = $this->model->code("SELECT * FROM user_faktur WHERE id_sp = '".$this->session->userdata('idpaket')."' LIMIT 1");
			foreach ($datacek as $key => $vaData) {
				$userAda = $vaData['status'];
			}
			if($userAda == '0' || $userAda == '1' ){
				$data_Paket = array (
					'status' 		=> '1',
					'time_sp'		=>	$this->TimeStamp()
				);
				$this->model->Update('user_faktur','id_sp',$this->session->userdata('idpaket'),$data_Paket); 
			}
			$data['row'] 			= $this->model->Code("SELECT * FROM tirex_v_jadwal WHERE id_antar_paket = '".$this->session->userdata('idpaket')."'") ;
			$this->load->view('backend/admin/data/cetak',$data);
	}

	public function CetakSpKirim(){
			$datacek = $this->model->code("SELECT * FROM user_faktur WHERE status_notif = '".$this->session->userdata('idkirim')."' LIMIT 1");
			foreach ($datacek as $key => $vaData) {
				$userAda = $vaData['status'];
			}

			if($userAda == '2' || $userAda == '3' ){
				$data_Paket = array (
					'status' 		=> '3',
					'time_kirim'	=>	$this->TimeStamp()
				);
				$this->model->Update('user_faktur','status_notif',$this->session->userdata('idkirim'),$data_Paket); 
			}
			$data['row'] 			= $this->model->Code("SELECT * FROM tirex_v_jadwalkurir WHERE id_antar_kurir = '".$this->session->userdata('idkirim')."'") ;

			$this->load->view('backend/admin/data/cetak-kirim',$data);
	}
}

