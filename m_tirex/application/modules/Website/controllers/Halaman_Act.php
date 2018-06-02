<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Halaman_Act extends CI_Controller {

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
		
		public function signin(){

			$cUsername 	= $this->input->post('username');
			$cPassword	= $this->input->post('password');

			$cModel		= $this->model->LoginKurir($cUsername,$cPassword);
			if($cModel->num_rows() > 0 ){
				foreach ($cModel->result_array() as $key => $vaUser) {
					$cIdUser 	 =	$vaUser['id_kurir'] ;
					$cNama 		 =	$vaUser['username'];
					$cIdkaryawan =	$vaUser['id_karyawan'];
				}
				$this->session->set_userdata('isLogin','True');
				$this->session->set_userdata('id_user',$cIdUser);
				$this->session->set_userdata('nama',$cNama);
				$this->session->set_userdata('id_karyawan',$cIdkaryawan);
				
				redirect(site_url('Website/Halaman/index'));
			}else{
				redirect(site_url('Website/Halaman/signin'));
			}

		}

		public function logout(){
			$this->session->sess_destroy();
			redirect(site_url('Website/Halaman/signin'));
		}

   

}
