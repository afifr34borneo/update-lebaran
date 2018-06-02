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
    	$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/index');
		//$this->load->view('backend/container/footer');

	}

	public function KodeBooking(){
	      $cText    = 'ABCDEFGH789JKLMNOPQRSTU243VWXYZ';
	      $cNumber  = '1234987650';
	      
	      $nLength  	= 4 ;
	      $nLengthNum 	= 3 ;

	      $cLenText   = strlen($cText)-1;
	      $cLenNum	  = strlen($cNumber)-1;

	      $cResult  = '';
	      $cResult2 = '';

	      for($i=1; $i<=$nLength; $i++){
	       $cResult .= $cText[rand(0, $cLenText)];
	      }

	      for($z=1; $z<=$nLengthNum; $z++){
	       $cResult2 .= $cNumber[rand(0, $cLenNum)];
	      }

	      $cFix =   $cResult.$cResult2;
	      return $cFix ;
	  }

	public function Order($Aksi=""){
		$dataHeader['title']		= "Order Pengiriman ";
		$dataHeader['link']			= 'order';
		$now = strtotime(date("d-m-Y"));
		$data['time']				= $this->TimeStamp();
		$data['action'] 			= $Aksi ;
		if ($this->session->userdata('kodebooking') == "") {
			$data['kodebooking']	= $this->KodeBooking();
			$this->session->set_userdata('kodebooking',$this->KodeBooking());
		}else{
			$data['kodebooking']    = $this->session->userdata('kodebooking');
		}
		$data['kota']				= $this->model->Code("SELECT * FROM user_apotek GROUP BY kota");
		$data['apotek']				= $this->model->View('user_apotek','id_apotek');
		$data['row']				= $this->model->Code("SELECT * FROM pbf_v_order WHERE 
														  id_pbf = '".$this->session->userdata('pbf')."' AND  
														  (tanggal_kirim = '".date("d-m-Y")."' OR  tanggal_kirim = '".date('d-m-Y', strtotime('+1 day', $now))."')");
		
		
		$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/Pengiriman',$data);
		$this->load->view('backend/container/footer');
		}

	public function History($Aksi=""){
		$dataHeader['title']	= "History Pengiriman ";
		$dataHeader['link']		= 'order';
		$data['action'] 		= $Aksi ;
		$data['row'] 			= $this->model->Code("SELECT * FROM pbf_v_order WHERE id_pbf = '".$this->session->userdata('pbf')."' GROUP BY id_booking ORDER BY id_faktur DESC ") ;
		$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/History',$data);
		$this->load->view('backend/container/footer');
	}

	public function Monitor($Aksi=""){
		$dataHeader['title']	= "Monitor Pengiriman ";
		$dataHeader['link']		= 'Monitor';
		$data['action'] 		= $Aksi ;
		$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/monitor',$data);
		$this->load->view('backend/container/footer');
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
		$data['row'] 			= $this->model->Code("SELECT * FROM v_order WHERE id_pbf = '".$this->session->userdata('pbf')."' GROUP BY id_booking ORDER BY id_faktur DESC ") ;
		$this->load->view('backend/container/header',$dataHeader);
		$this->load->view('backend/Cetak',$data);
		$this->load->view('backend/container/footer');
	}

	public function CetakSP($Aksi=""){
		$dataHeader['title']	= "Cetak Order";
		$dataHeader['link']		= 'Cetak';
		$data['action'] 		= $Aksi ;
		$jamKirim 				= $this->input->post('cJam');
		$data['row'] 			= $this->model->Code("SELECT * FROM v_order WHERE id_pbf = '".$this->session->userdata('pbf')."' AND jam_kirim = '".$jamKirim."' AND tanggal_kirim = '".date("d-m-Y")."'") ;
		$this->load->view('backend/cetak/cetaksp',$data);
	}

}

