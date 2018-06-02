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
			$cPassword	= md5($this->input->post('password')) ;

			$cModel		= $this->model->Login($cUsername,$cPassword);
			if($cModel->num_rows() > 0 ){
				foreach ($cModel->result_array() as $key => $vaUser) {
					$cIdUser 	=	$vaUser['id_login'] ;
					$cNama 		=	$vaUser['username'];
					$cPbf 		=	$vaUser['id_pbf'];	
					$cTirex	 	=	$vaUser['id_tirex'];	
					if(!empty($cPbf)){
						$cCek = $this->model->ViewWhere('user_pbf','id_pbf',$cPbf);
						foreach ($cCek as $key => $vaPbf) {
							$this->session->set_userdata('nama_pbf',$vaPbf['nama']);
							$this->session->set_userdata('email_pbf',$vaPbf['email']);
						}
					}
				}
				echo "sukses-".$cLevel."";
				$this->session->set_userdata('isLogin','True');
				$this->session->set_userdata('id_user',$cIdUser);
				$this->session->set_userdata('nama',$cNama);
				$this->session->set_userdata('pbf',$cPbf);
				$this->session->set_userdata('tirex',$cTirex);
				if(!empty($cPbf)){
					redirect(site_url('Halaman/index'));
				}else{
					redirect(site_url('Administrator/index'));
				}
			}else{
				redirect(site_url('Halaman/signin'));
			}

		}


		public function logout(){
			$this->session->sess_destroy();
			redirect(site_url('Halaman/signin'));
		}

		public function code(){
	      $cText    = '9876543212649';
	      $cNumber  = '123498765';
	      
	      $nLength  	= 3 ;
	      $nLengthNum 	= 2 ;

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
		public function order_pengiriman($Type="",$id=""){
			
			if($_POST){
				if($this->input->post('cJamKirim') == '1'){
					$now = strtotime(date("d-m-Y"));
					$data = array (
					'no_faktur' 	=> $this->input->post('cNo'),
					'penerima' 		=> $this->input->post('cPenerima'),
					'alamat' 		=> $this->input->post('cAlamat'),
					'kota' 			=> $this->input->post('cKota'),
					'jam_kirim' 	=> '11:00',
					'tanggal_kirim'	=> date('d-m-Y', strtotime('+1 day', $now)),
					'status'		=> '0',
					'status_notif'	=> '0',
					'id_booking'	=> $this->session->userdata('kodebooking'),
					'id_pbf'		=> $this->session->userdata('pbf'),
					'id_status'		=> $this->code(),
					'koli'			=> $this->input->post('cJumlah'),
					'keterangan'	=> $this->input->post('cKeterangan'),
					'status_bayar'	=> $this->input->post('cBayar'),
					'status_pickup'	=> $this->input->post('cAmbil'),
					'id_sp'			=> '0',
					'time_order'	=> $this->TimeStamp()
					);
				}else{
					$data = array (
					'no_faktur' 	=> $this->input->post('cNo'),
					'penerima' 		=> $this->input->post('cPenerima'),
					'alamat' 		=> $this->input->post('cAlamat'),
					'kota' 			=> $this->input->post('cKota'),
					'jam_kirim' 	=> $this->input->post('cJamKirim'),
					'tanggal_kirim'	=> $this->input->post('cTglKirim'),
					'status'		=> '0',
					'status_notif'	=> '0',
					'id_booking'	=> $this->session->userdata('kodebooking'),
					'id_pbf'		=> $this->session->userdata('pbf'),
					'id_status'		=> $this->code(),
					'koli'			=> $this->input->post('cJumlah'),
					'keterangan'	=> $this->input->post('cKeterangan'),
					'status_bayar'	=> $this->input->post('cBayar'),
					'status_pickup'	=> $this->input->post('cAmbil'),
					'id_sp'			=> '0',
					'time_order'	=> $this->TimeStamp()
					);
				}
			}

		
			if($Type == "simpan"){
				$this->db->set('id_faktur', 'UUID_SHORT()', FALSE);
				$this->model->Insert('user_faktur',$data); 
				redirect(site_url('Halaman/Order/I'));
			}elseif($Type == "ubah"){
				$this->model->Update('user_faktur','id_faktur',$id,$data);
				redirect(site_url('Halaman/Order/U'));
			}elseif($Type == "hapus"){
				$this->model->Delete('user_faktur','id_faktur',$id);
				redirect(site_url('Halaman/Order/D'));
			}
		}

		public function cetak_order(){
			$id 				=	$this->input->post('cTglKirim');
			$data['tanggal']	=	$this->input->post('cTglKirim');
	        $data['row']		=   $this->model->viewWhere('v_order','tanggal_kirim',$id);
			$this->load->view('backend/cetak/cetak',$data);
		}

		public function cetak_perorder($id=""){
			//$id 				=	$this->input->post('cTglKirim');
	        $data				=   $this->model->viewWhere('v_order','id_status',$id);
	        foreach ($data as $key => $vaData) {
	        	$dataBooking = $vaData['id_booking'];
	        }
	        $data['tanggal']	=	date("d-m-Y");
	        $data['row']		=   $this->model->viewWhere('v_order','id_booking',$dataBooking);
			$this->load->view('backend/cetak/cetak',$data);
		}
	
	}