<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halaman extends CI_Controller {

	public function __construct(){
		
        parent::__construct();
		//error_reporting(0);
        ob_start();
        ob_clean();
       	ob_end_clean();
       	$this->load->library('email');
		$this->load->library('cart');
        $this->load->model('model');
        $this->load->model('relasi');
        $this->load->library('session');
        $this->load->library('pagination');
        $this->load->database();
        $this->load->helper('url');
		$this->load->helper('form');
		$this->load->helper('download'); 
		 
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
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$data = "" ;
			if($Action == "error"){
				$data['notif'] = "Username / Password Salah" ;
				}
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/login',$data);
			$this->load->view('front-end/container/footer');
		
		}
    
		public function index(){
			$dataHeader['title']	= "TIREX";
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/index');
			$this->load->view('front-end/container/footer');
		}

		public function sp(){
			$dataHeader['title']	= "TIREX";
			$data['row']			= $this->model->code("SELECT * FROM pbf_v_order_kirim WHERE id_karyawan = '".$this->session->userdata('id_karyawan')."'  AND id_penerima IS NULL AND status = '3' GROUP BY nama_apotek ASC ");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/sp',$data);
			$this->load->view('front-end/container/footer');
		}

		public function detail_sp($id="",$idSp=""){
			$dataHeader['title']	= "TIREX";
			$data['apotek']			= $id;
			$data['idsp']			= $idSp;
			$data['row']			= $this->model->code("SELECT * FROM pbf_v_order_kirim WHERE id_apotek = '".$id."' AND id_karyawan = '".$this->session->userdata('id_karyawan')."' AND status_notif='".$idSp."' ");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/detail_sp',$data);
			$this->load->view('front-end/container/footer');
		}


		public function pickup(){
			$dataHeader['title']	= "TIREX";
			$data['row']			= $this->model->code("SELECT * FROM pbf_v_order_sp WHERE id_karyawan = '".$this->session->userdata('id_karyawan')."'  AND id_penerima IS NULL AND status = '1' GROUP BY id_pbf");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/pickup',$data);
			$this->load->view('front-end/container/footer');
		}

		public function detail_pickup($sp="",$pbf=""){
			$dataHeader['title']	= "TIREX";
			$data['row']			= $this->model->code("SELECT * FROM pbf_v_order_sp WHERE
									  id_sp = '".$sp."'
									  AND id_pbf = '".$pbf."'");

			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/detail_pickup',$data);
			$this->load->view('front-end/container/footer');
		}


		
		public function penerima($id="",$idApotek=""){
			
			if($_POST){
				$data = array (
				'id_penerima' 	=> $this->input->post('penerima'),
				'time_terima'	=> $this->TimeStamp(),
				'status'		=> '4'
				);
			}

			$this->model->UpdateDua('user_faktur','status_notif',$id,$data,'penerima',$idApotek);
			redirect(site_url('Website/Halaman/sp'));
		}

		public function history(){
			$dataHeader['title']	= "TIREX";
			$data['row']			= $this->model->code("SELECT * FROM v_view_sp WHERE id_karyawan = '".$this->session->userdata('id_karyawan')."'  AND id_penerima IS NOT NULL");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/history_sp',$data);
			$this->load->view('front-end/container/footer');
		}

		public function detail_sp_history($id=""){
			$dataHeader['title']	= "TIREX";
			$data['row']			= $this->model->code("SELECT * FROM v_view_sp WHERE id_status = '".$id."' AND id_karyawan = '".$this->session->userdata('id_karyawan')."'");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/detail_sp_history',$data);
			$this->load->view('front-end/container/footer');
		}

		public function add_pickup($id="",$iddua=""){
			$data = array (
				'time_pickup'	=> $this->TimeStamp(),
				'status'		=> '2'
				);
		
			$this->model->Update('user_faktur','id_sp',$id,$data,'id_pbf',$iddua);
			redirect(site_url('Website/Halaman/index'));
		}

}	
