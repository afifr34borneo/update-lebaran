<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator_Act extends CI_Controller {

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

	
		public function code(){
	      $cText    = '987654321264990';
	      $cNumber  = 'TIREXUP';
	      
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

	      $cFix =   "MLGP".$cResult.$cResult2.date("dmy")."";
	      return $cFix ;
	  }
		
		public function jadwal($Type="",$id=""){
			
			if($_POST){
				$data = array (
				'id_karyawan' 		=> $this->input->post('cIdKaryawan'),
				'no_hp' 			=> $this->input->post('cTelp'),
				'no_mobil' 			=> $this->input->post('cIdMobil'),
				'jam_kirim' 		=> $this->input->post('cJamKirim'),
				'tanggal_kirim' 	=> $this->input->post('cTglKirim'),
				'no_sp'				=> $this->code()
				);
			}
		
			if($Type == "simpan"){
				$this->model->Insert('antar_paket',$data); 
				redirect(site_url('Administrator/surat_ambilorder/I'));
			}elseif($Type == "ubah"){
				$this->model->Update('antar_paket','id_antar_paket',$id,$data);
				redirect(site_url('Administrator/surat_ambilorder/U'));
			}elseif($Type == "hapus"){
				$this->model->Delete('antar_paket','antar_paket',$id);
				redirect(site_url('Administrator/surat_ambilorder/D'));
			}
		}

		//

		public function jadwal_kurir($Type="",$id=""){
			
			if($_POST){
				$data = array (
				'id_karyawan' 		=> $this->input->post('cIdKaryawan'),
				'no_hp' 			=> $this->input->post('cTelp'),
				'no_mobil' 			=> $this->input->post('cIdMobil'),
				'jam_kirim' 		=> $this->input->post('cJamKirim'),
				'tanggal_kirim' 	=> $this->input->post('cTglKirim'),
				'no_sp'				=> $this->code()
				);
			}
		
			if($Type == "simpan"){
				$this->model->Insert('antar_kurir',$data); 
				redirect(site_url('Administrator/surat_kirim/I'));
			}elseif($Type == "ubah"){
				$this->model->Update('antar_kurir','id_antar_kurir',$id,$data);
				redirect(site_url('Administrator/surat_kirim/U'));
			}elseif($Type == "hapus"){
				$this->model->Delete('antar_kurir','id_antar_kurir',$id);
				redirect(site_url('Administrator/surat_kirim/D'));
			}
		}

		//

		public function input_sp_paket($Type="",$id=""){

			$cJadwal 			=	$this->input->post('idjadwal');
			$cKirim				=	$this->input->post('kirim');
			$arr_kalimat 		= 	explode (",",$cKirim);
			$batas 				= 	count($arr_kalimat);
			for($i=0;$i<$batas;$i++){
		        $cIdKirim	=	$arr_kalimat[$i];
		        $data = array(	'id_jadwal'=>$cJadwal,
		        				'id_bawaan'=>$cIdKirim,
		        				'status'   => '2'
		        				);

		       	$dataPenumpang = array (
				'id_sp' 		=> $cJadwal,
				'time_sp'		=> $this->TimeStamp(),
				'status'		=> '1'
				);

		        $this->model->Insert('detail_sp',$data);
		        $this->model->Update('user_faktur','id_status',$cIdKirim,$dataPenumpang); 
		    }

		}

		public function input_sp_kirim($Type="",$id=""){

			$cJadwal 			=	$this->input->post('idjadwal');
			$cKirim				=	$this->input->post('kirim');
			$arr_kalimat 		= 	explode (",",$cKirim);
			$batas 				= 	count($arr_kalimat);
			for($i=0;$i<$batas;$i++){
		        $cIdKirim	=	$arr_kalimat[$i];
		        $data = array(	'id_jadwal'=>$cJadwal,
		        				'id_bawaan'=>$cIdKirim,
		        				'status'   => '2'
		        				);

		       	$dataPenumpang = array (
				'status_notif' 	=> $cJadwal,
				'time_kirim'	=> $this->TimeStamp()
				);

		        $this->model->Insert('detail_kurir',$data);
		        $this->model->Update('user_faktur','id_status',$cIdKirim,$dataPenumpang); 
		    }

		}

		public function hapus_sp_paket($id=""){
			$cJadwal =	$id;
			$data_Paket = array (
				'id_sp' 		=> '0',
				'status'		=> '0'
			);
			$this->model->Delete('detail_sp','id_detail_sp',$id);
			$this->model->Update('user_faktur','id_status',$id,$data_Paket); 
		}

		public function picked($id=""){
			$cJadwal =	$id;
			$data_Paket = array (
				'time_pickup' 	=> $this->TimeStamp(),
				'status'		=> '2'
			);
			$this->model->Update('user_faktur','id_status',$id,$data_Paket); 
		}

		public function hapus_sp_kirim($id=""){
			$cJadwal =	$id;
			$data_Paket = array (
				'status_notif' 	=> '0',
				'status'		=> '2'
			);
			$this->model->Delete('detail_sp','id_detail_sp',$id);
			$this->model->Update('user_faktur','id_status',$id,$data_Paket); 
		}

		public function input_pbf($Type="",$id=""){
			
			if($_POST){
				$data = array (
				'nama' 		=> $this->input->post('cNama'),
				'alamat' 	=> $this->input->post('cAlamat'),
				'telepon' 	=> $this->input->post('cTelepon'),
				'email' 	=> $this->input->post('cEmail'),
				);

				$dataLogin = array (
				'username' 		=> $this->input->post('cUsername'),
				'password' 		=> $this->input->post('cPassword')
				
				);
			}
		
			if($Type == "simpan"){
				$this->model->Insert('user_pbf',$data); 
				$this->model->Insert('user_login',$dataLogin); 
				redirect(site_url('Administrator/add_pbf/I'));
			}
		}


	}