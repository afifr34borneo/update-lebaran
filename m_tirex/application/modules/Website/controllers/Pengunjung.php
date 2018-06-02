<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengunjung extends CI_Controller {

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
        //$this->load->library('m_pdf');
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
		
			public function login($Action=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data = "" ;
			if($Action == "error"){
				$data['notif'] = "Username / Password Salah" ;
				}
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/container/gpConfig');
			$this->load->view('front-end/container/User');
			$this->load->view('front-end/login',$data);
			$this->load->view('front-end/container/footer');
		
			}

			public function login_act(){

			$cUsername 	= $this->input->post('cUsername') ;
			$cPassword	= md5($this->input->post('cPassword')) ;

			$cModel		= $this->model->Login($cUsername,$cPassword);
			if($cModel->num_rows() > 0 ){
				foreach ($cModel->result_array() as $key => $vaUser) {
					$cIdUser 	=	$vaUser['id_customer'] ;
					$cNama 		=	$vaUser['nama'];
					$cLevel 	=	$vaUser['email'];	
				}
				echo "sukses-".$cLevel."";
				$this->session->set_userdata('isLogin','True');
				$this->session->set_userdata('id_user',$cIdUser);
				$this->session->set_userdata('nama',$cNama);
					if($this->session->userdata('idCart')==""){
					redirect(site_url('Website/Halaman/index'));
					}else{
					redirect(site_url('Website/Halaman/keranjangbelanja'));	
					}
			}else{
				redirect(site_url('Website/Pengunjung/login'));
			}

		}


			public function register($Action=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data = "" ;
			if($Action == "error"){
				$data['notif'] = "Email Anda Sudah Terdaftar , Silahkan Login" ;
				}
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/daftar',$data);
			$this->load->view('front-end/container/footer');
		
			}

			public function show_kota($Id){
			$data['kurir'] = $Id;
			$this->load->view('front-end/pengunjung/show_kota',$data);
			}

    		public function signin(){

			$cUsername 	= $this->input->post('user') ;
			$cPassword	= md5($this->input->post('pass')) ;

			$cModel		= $this->model->Login($cUsername,$cPassword);
			if($cModel->num_rows() > 0 ){
				echo "sukses";
				foreach ($cModel->result_array() as $key => $vaUser) {
					$cIdUser 	= 	$vaUser['id_user']	;
					$cNama		=	$vaUser['nama']		;	
				}
				$this->session->set_userdata('isLogin',$cIdUser);
				$this->session->set_userdata('id_user',$cIdUser);
				$this->session->set_userdata('nama_user',$cNama);
			}else{
				echo "Login Gagal";

			}

		}

		public function logout(){
			$this->session->sess_destroy();
			redirect(site_url('Website/Halaman'));
		}

		public function register_act(){

			$cek = $this->model->ViewWhere('tm_customer','email',$this->input->post('email'));
			if(count($cek) > 0 ){
				if($this->input->post('password')==""){
				$data = array(
					'tgl_daftar'	=> $this->Date2String($this->DateStamp()),
					'nama'			=> $this->input->post('namaMember'),
					'email'			=> $this->input->post('email'),
					'prov_id'		=> $this->input->post('kd_propinsi'),
					'kota_id'		=> $this->input->post('kd_kota'),
					'alamat'		=> $this->input->post('alamat'),
					'kodepos'		=> $this->input->post('kodepos'),
					'phone'			=> $this->input->post('phone'),
					'foto_profile'	=> $this->input->post('cFotoFix')
					);
				}else{
					$data = array(
					'tgl_daftar'	=> $this->Date2String($this->DateStamp()),
					'nama'			=> $this->input->post('namaMember'),
					'email'			=> $this->input->post('email'),
					'password'		=> md5($this->input->post('password')),
					'prov_id'		=> $this->input->post('kd_propinsi'),
					'kota_id'		=> $this->input->post('kd_kota'),
					'alamat'		=> $this->input->post('alamat'),
					'kodepos'		=> $this->input->post('kodepos'),
					'phone'			=> $this->input->post('phone'),
					'foto_profile'	=> $this->input->post('cFotoFix')
					);
				}
				$this->model->Update('tm_customer','email',$this->input->post('email'),$data);
				redirect(site_url('Website/Halaman'));
			}else{
				$data = array(
					'tgl_daftar'	=> $this->Date2String($this->DateStamp()),
					'nama'			=> $this->input->post('namaMember'),
					'email'			=> $this->input->post('email'),
					'password'		=> md5($this->input->post('password')),
					'prov_id'		=> $this->input->post('kd_propinsi'),
					'kota_id'		=> $this->input->post('kd_kota'),
					'alamat'		=> $this->input->post('alamat'),
					'kodepos'		=> $this->input->post('kodepos'),
					'phone'			=> $this->input->post('phone')
					);
				$this->db->set('id_customer','uuid_short()', FALSE);
				$this->model->Insert('tm_customer',$data);
				redirect(site_url('Website/Pengunjung/login'));
			}
		}

		public function updateTerima($id=""){

			$data = array(
				'status_transaksi'   => '4'
			);
			$this->model->Update('ts_transaksi','kodetrs',$id,$data);
			redirect(site_url('Website/Pengunjung/history'));

		}

		public function pusat_resolusi($Id=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');

			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/pengunjung/pusat-resolusi',$data);
			$this->load->view('front-end/container/footer');
			}

		public function review($Id=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['act'] = $Id;
			$data['review'] = $this->model->code("SELECT * FROM v_history_trs Where id_transaksi = '".$Id."'");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/pengunjung/komplain',$data);
			$this->load->view('front-end/container/footer');
			}

		public function komplain_act($Id=""){
			$data = array(
					'id_transaksi'		=> $this->input->post('cTrs'),
					'id_vendor'			=> $this->input->post('cPenjual'),
					'isi'				=> $this->input->post('cKomplain'),
					'id_customer'		=> $this->session->userdata('id_user')
					);
			$this->model->Insert('tm_komplain',$data);
			redirect(site_url('Website/Pengunjung/history'));
			}

		public function index(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/index',$data);
			$this->load->view('front-end/container/footer');
		}

		public function ubah_profile(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/edit-profile',$data);
			$this->load->view('front-end/container/footer');
		}

		public function history(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/history',$data);
			$this->load->view('front-end/container/footer');
		}

		public function wallets(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/wallets',$data);
			$this->load->view('front-end/container/footer');
		}

		public function konfirmasiPembayaran($action=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/konfirmasi',$data);
			$this->load->view('front-end/container/footer');
		}

		public function konfirmasiPembayaranI($action=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/konfirmasiI',$data);
			$this->load->view('front-end/container/footer');
		}

		public function konfirmasi_act($action=""){
			$data = array(
					'nama'				=> $this->input->post('namaMember'),
					'no_rek'			=> $this->input->post('noRekening'),
					'nominal'			=> $this->input->post('cNominal'),
					'rekening'			=> $this->input->post('cBank'),
					'tgl_konfirmasi'	=> $this->Date2String($this->DateTimeStamp()),
					'kodetrs'			=> $this->input->post('cTrs')
					);
				
				$this->db->set('id_konfirmasi','uuid_short()', FALSE);
				$this->model->Insert('tm_konfirmasi',$data);

				$users = $this->model->ViewWhere('tm_customer','id_customer',$this->session->userdata('id_user'));
				  foreach ($users as $key => $vaUse) {
				  	$emailUser = $vaUse['email'];
				  }
				$subject = "Invoice Pembayaran Mausaya.com";
             	$data['row'] = "mausaya";
	            $html				   =   $this->load->view('front-end/cetak/konfirmasi', $data, true);
				 $this->load->library('email');
			       $config                 = array();
			       $config['charset']      = 'utf-8';
			       $config['useragent']    = 'Codeigniter'; //bebas sesuai keinginan kamu
			       $config['protocol']     = "smtp";
			       $config['mailtype']     = "html";
			       $config['smtp_host']    = "mail.mausaya.com";
			       $config['smtp_port']    = "25";
			       $config['smtp_timeout'] = "5";
			       $config['smtp_user']    = "noreply@mausaya.com";//isi dengan email kamu
			       $config['smtp_pass']    = "ag123456cg"; // isi dengan password kamu
			       $config['crlf']         = "\r\n"; 
			       $config['newline']      = "\r\n"; 
			       
			       $config['wordwrap'] = TRUE;
			       //memanggil library email dan set konfigurasi untuk pengiriman email

			      $this->email->initialize($config);
			      
			      $this->email->from('noreply@mausaya.com','MauSaya.Com');
			      $this->email->to($emailUser);

			      $this->email->subject($subject);
			      $this->email->message($html);
			      
			      if($this->email->send()){
			        echo "<h4 style='color:#2b50a3'><strong>Pesan Berhasil Dikirim Ke Cs Kami , Terima Kasih ".$emailUser."</strong></h4>";
			      	redirect(site_url('Website/Pengunjung/konfirmasiPembayaranI/I'));
			      }else{
			        echo "<h4 style='color:red'><strong>Pesan Belum Terkirim , Mungkin Server kami bermasalah , Coba Beberapa Saat Lagi ".$this->session->userdata('id_user')."</strong></h4>";
			      }	

				redirect(site_url('Website/Pengunjung/konfirmasiPembayaranI/I'));
		}

		public function history_detail($id=""){
			$data['kodetrs'] 		= $id;
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/pengunjung/detail-history',$data);
			$this->load->view('front-end/container/footer');
			
		}

		function upload_foto_headline() {

		  $imagename = $_FILES['file']['name'];
          $source    = $_FILES['file']['tmp_name'];
          $type      = $_FILES['file']["type"]  ;
          $target    = "assets/upload/paket/".date("ymdhis").$imagename;
          move_uploaded_file($source, $target);

          $imagepath = date("ymdhis").$imagename;
          $save = "assets/upload/paket/" . $imagepath; //This is the new file you saving
          $file = "assets/upload/paket/" . $imagepath; //This is the original file

          list($width, $height) = getimagesize($file) ; 

          $tn = imagecreatetruecolor($width, $height) ; 
          if($type == 'image/jpeg'){
            $image = imagecreatefromjpeg($file) ;
          }elseif ($type == 'image/gif') {
            $image = imagecreatefromgif($file) ;
          }elseif ($type == 'image/png') {
            $image = imagecreatefrompng($file) ;
          } 
          imagecopyresampled($tn, $image, 0, 0, 0, 0, $width, $height, $width, $height) ; 

          imagejpeg($tn, $save, 70) ;
			     echo '
					<img src="'.base_url().$target.'" 
						    id="zoom" 
							class="img-responsive img-thumbnail img-rounded" 
							style="height:150px;border-radius:5px 5px 5px ">
					<input type="hidden" name="cFotoFix" id="cFotoFix" value="'.$target.'">';
		}

		public function ProdukReview(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataHeader['menu']		= $this->model->ViewWhereAndTop('tm_kategori',
									  'id_kategori_parent','0','status','1');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$this->load->view('front-end/container/header',$dataHeader);
			
			$this->load->view('front-end/pengunjung/review-produk',$data);
			$this->load->view('front-end/container/footer');
		}
			
		public function ProdukReview_Act(){
				$data = array(
					'id_produk'			=> $this->input->post('kodebrg'),
					'id_vendor'			=> $this->input->post('kodepenjual'),
					'id_customer'		=> $this->input->post('kodepembeli'),
					'review'			=> $this->input->post('review'),
					'kode_trs'			=> $this->input->post('kodetrs'),
					);
				
				$this->db->set('id_review','uuid_short()', FALSE);
				$this->model->Insert('ts_review',$data);
				redirect(site_url('Website/Pengunjung/ProdukReview/I'));
		}
}
