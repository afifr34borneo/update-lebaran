<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halaman extends CI_Controller {

	public function __construct(){
		
        parent::__construct();
        ob_start();
		//error_reporting(0);         
        $this->load->model('model');
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
    

	public function register($Action=""){
		$data = "" ;
		$this->load->view('backend/register',$data);
		
	}

	public function Direct($Action=""){
		$this->load->view('backend/redirect-page');
		
	}

	public function create_login($Action=""){
		$data['row'] = $this->model->ViewWhere('user_apotek','invitation_code',$this->session->userdata('invitation'));
		$this->load->view('backend/create-login',$data);
		
	}

	public function signin($Action=""){
		$data = "" ;
		if($Action == "error"){
			$data['notif'] = "Username / Password Salah" ;
			}
		$this->load->view('backend/login',$data);
		
	}

    public function index($Aksi=""){
    	$dataHeader['title']		= "TIREX";
    	$dataHeader['link']			= 'index';
    	$data['action'] 			= $Aksi ;
    	$data['row']				= $this->model->ViewWhereAnd('pbf_v_order','tanggal_kirim',date("d-m-Y"),'id_apotek',$this->session->userdata('idApotek'));
    	$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/index',$data);
		$this->load->view('backend/container/footer');

	}

	
	public function Monitor($Aksi=""){
		$dataHeader['title']	= "Monitor Pengiriman ";
		$dataHeader['link']		= 'Monitor';
		$data['action'] 		= $Aksi ;
		$TA 				    = $this->input->post('tanggalawal');
		$TAK 				    = $this->input->post('tanggalakhir');
		$BAYAR 				    = $this->session->userdata('idApotek');
		$data['awal']			= $this->input->post('tanggalakhir');
		$data['akhir']			= $this->input->post('tanggalawal');
		if($Aksi == ""){
		$data['row']				= $this->model->ViewWhereAnd('pbf_v_order','tanggal_kirim',date("d-m-Y"),'id_apotek',$this->session->userdata('idApotek'));
		}else{
			$data['row']		= $this->model->code("SELECT * FROM pbf_v_order WHERE id_apotek = '".$BAYAR."' AND (tanggal_kirim BETWEEN '".$TA."' AND '".$TAK."') ORDER BY tanggal_kirim");
		}
		if($this->input->post('cetak') == 'cetak'){
			$this->load->view('backend/cetak_report_pbf',$data);	
		}else{
			$this->load->view('backend/container/header',$dataHeader);
			$this->load->view('backend/monitor',$data);
			$this->load->view('backend/container/footer');
		}
	}

	public function view_monitor(){
		$now = strtotime(date("d-m-Y"));
		$data['row']   = $this->model->Code("SELECT * FROM pbf_v_order_sp WHERE id_pbf = '".$this->session->userdata('pbf')."' AND  (tanggal_booking = '".date("d-m-Y")."' OR  tanggal_booking = '".date('d-m-Y', strtotime('+1 day', $now))."' OR  tanggal_booking = '".date('d-m-Y', strtotime('-1 day', $now))."') ORDER BY tanggal_booking DESC");

		$this->load->view('backend/view_monitor',$data);
	}

	public function view_order($id=""){
		
		$data['id_faktur'] = $id;

		$this->load->view('backend/view_order',$data);
	}

	public function Cetak($Aksi=""){
		$dataHeader['title']	= "Cetak Order ";
		$dataHeader['link']		= 'Cetak';
		$data['action'] 		= $Aksi ;
		$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order WHERE id_pbf = '".$this->session->userdata('pbf')."' GROUP BY id_booking ORDER BY id_faktur DESC ") ;
		$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/Cetak',$data);
		$this->load->view('backend/container/footer');
	}

	public function CetakSP($Aksi=""){
		$dataHeader['title']	= "Cetak Order";
		$dataHeader['link']		= 'Cetak';
		$data['action'] 		= $Aksi ;
		$jamKirim 				= $this->input->post('cJam');
		$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order WHERE id_pbf = '".$this->session->userdata('pbf')."' AND jam_kirim = '".$jamKirim."' AND tanggal_kirim = '".date("d-m-Y")."'") ;
		$this->load->view('backend/cetak/cetaksp',$data);
	}

}

