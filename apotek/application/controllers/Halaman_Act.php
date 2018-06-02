<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halaman_Act extends CI_Controller {

	public function __construct(){
		
        parent::__construct();
        ob_start();
		//error_reporting(0);     
	    //MenLoad model yang berada di Folder Model dan namany model
        $this->load->model('model');
        // Meload Library session 
        $this->load->library('session');
        //Meload database
        $this->load->database();
        //Meload url 
        //$this->load->library('m_pdf');
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

	
		public function signin(){

			$cUsername 	= $this->input->post('username') ;
			$cPassword	= $this->input->post('password') ;

			$cModel		= $this->model->Login($cUsername,$cPassword);
			if($cModel->num_rows() > 0 ){
				foreach ($cModel->result_array() as $key => $vaUser) {
					$cNama 		=	$vaUser['username'];
					$cApotek 	=	$vaUser['id_apotek'];	
				}
				echo "sukses-".$cLevel."";
				$this->session->set_userdata('isLogin','True');
				$this->session->set_userdata('idApotek',$cApotek);
				$this->session->set_userdata('nama',$cNama);

				redirect(site_url('Halaman/index'));

			}else{
				
				redirect(site_url('Halaman/signin'));
			}

		}


		public function logout(){
			$this->session->sess_destroy();
			redirect(site_url('Halaman/signin'));
		}

		public function register(){
			$cUsername 	= $this->input->post('invitationcode') ;
			$cModel		= $this->model->CekRegister($cUsername);
			if($cModel->num_rows() > 0 ){
					$data = array (
					'email' 		=> $this->input->post('cEmail'),
					'register_date'	=> $this->DateTimeStamp()
					);
					$this->session->set_userdata('invitation',$cUsername);
					$this->model->Update('user_apotek','invitation_code',$cUsername,$data);
					redirect(site_url('Halaman/create_login/I'));
			}else{
				redirect(site_url('Halaman/register/D'));
			}

			
		}

		public function create_login($Id=""){
			
			if($_POST){
				$data = array (
				'username' 		=> $this->input->post('cUsername'),
				'password' 		=> $this->input->post('cPassword'),
				'date_register'	=> $this->DateTimeStamp(),
				'id_apotek'		=> $Id
				);
			}
		
			$this->model->Insert('login_apotek',$data); 
			redirect(site_url('Halaman/Direct/I'));
			
		}

		public function cetak_order(){
			$id 				=	$this->input->post('cTglKirim');
			$data['tanggal']	=	$this->input->post('cTglKirim');
	        $data['row']		=   $this->model->viewWhere('pbf_v_order','tanggal_kirim',$id);
			$this->load->view('backend/cetak/cetak',$data);
		}

		public function cetak_perorder($id=""){
			//$id 				=	$this->input->post('cTglKirim');
	        $data				=   $this->model->viewWhere('pbf_v_order','id_status',$id);
	        foreach ($data as $key => $vaData) {
	        	$dataBooking = $vaData['id_booking'];
	        }
	        $data['tanggal']	=	date("d-m-Y");
	        $data['row']		=   $this->model->viewWhere('pbf_v_order','id_booking',$dataBooking);
			$this->load->view('backend/cetak/cetak',$data);
		}
	
	}