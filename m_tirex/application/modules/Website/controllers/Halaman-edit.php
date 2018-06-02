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
        $this->load->library('m_pdf');
        $this->load->library('pagination');
        $this->load->database();
        $this->load->helper('url');
		$this->load->helper('form');
		$this->load->helper('download'); 
		 
    }
    	
    	

		public function index(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewWhere('tm_kategori','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/container/slider');
			$this->load->view('front-end/index',$data);
			$this->load->view('front-end/container/footer');
		}

		public function produk($cUrl="",$Short=""){
			$dataHeader['title']		= "Produk Indonesia | Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']			= $this->model->ViewWhere('tm_kategori','id_kategori_parent','0');
			$dataMenu['menu_kategori']	= $this->model->ViewWhereProduk('tm_kategori','id_kategori_parent');
			$data['kategori']			=  $this->model->ViewWhere('tm_kategori','id_kategori','$cUrl');
			$data['url']				=  $cUrl;
			$data['sort']				=  $Short;
			$jumlah_data = $this->model->jumlah_data($cUrl);

			$this->load->library('pagination');
			$config['base_url'] = base_url().'Website/Halaman/produk/'.$cUrl.'';
			$config['total_rows'] = $jumlah_data;
			$config['per_page'] = 15;
			$config['full_tag_open'] = '<div class="pagination pull-right">';
	        $config['full_tag_close'] = '</div>';
	        $config['prev_link'] = 'Sebelumnya';
	        $config['prev_tag_open'] = '<li>';
	        $config['prev_tag_close'] = '</li>';
	        $config['next_link'] = 'Selanjutnya';
	        $config['next_tag_open'] = '<li>';
	        $config['next_tag_close'] = '</li>';
	        $config['cur_tag_open'] = '<li class="active"><a href="#">';
	        $config['cur_tag_close'] = '</a></li>';
	        $config['num_tag_open'] = '<li>';
	        $config['num_tag_close'] = '</li>';

	        $config['first_tag_open'] = '<li>';
	        $config['first_tag_close'] = '</li>';
	        $config['last_tag_open'] = '<li>';
	        $config['last_tag_close'] = '</li>';

	        $config['first_link'] = '&lt;&lt;';
	        $config['last_link'] = '&gt;&gt;';
			$from = $this->uri->segment(5);
			$this->pagination->initialize($config);	
			$data["paginator"] = $this->pagination->create_links();	
			$data['jumlah'] = $jumlah_data;
			//$data['produk'] = $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori',$cUrl);
			$data['produk'] = $this->model->data($config['per_page'],$from,$cUrl,$Short);

			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/produk',$data);
			$this->load->view('front-end/container/footer');
		}

		public function detail_produk($cUrl){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewWhere('tm_kategori','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['row']			= $this->model->ViewWhere('v_barang','id_barang',$cUrl);
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/detail-produk',$data);
			$this->load->view('front-end/container/footer');
		}

		public function proses_search(){
			$cSearch =	$this->input->post('cari');
			$cariApa =	$this->input->post('pilih');
			$this->session->set_userdata('cari',$cSearch);
			$this->session->set_userdata('pilih',$cariApa);
			redirect(site_url('Website/Halaman/search'));
		}

		public function search(){
			$cCari 					= $this->session->userdata('cari');	
			$Apa 					= $this->session->userdata('pilih');	
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewWhere('tm_kategori','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			if($this->session->userdata('pilih') == '1' || $this->session->userdata('pilih') == '2' ){

			$data['row']			= $this->relasi->v_Barang("WHERE 
																nama_barang LIKE '%".$cCari."%'
																			or 
																nama_barang LIKE '".$cCari."%'
																			or 
																nama_barang LIKE '%".$cCari."'
																			or
																deskripsi LIKE '%".$cCari."%'
																LIMIT 24");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/search',$data);
			$this->load->view('front-end/container/footer');
			}elseif($Apa == '3'){

				$data['row']			= $this->relasi->v_Toko("WHERE 
										  namatoko LIKE '%".$cCari."%'
													or 
										  namatoko LIKE '".$cCari."%'
													or 
										  namatoko LIKE '%".$cCari."'
										  LIMIT 24					  ");
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/search-toko',$data);
			$this->load->view('front-end/container/footer');
			}
		}

		public function tentang_kami(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/tentang-kami.php',$data);
			$this->load->view('front-end/container/footer');
		}
		public function syaratkententuan(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/syarat.php',$data);
			$this->load->view('front-end/container/footer');
		}
		public function kenapakami(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/mengapa-kami.php',$data);
			$this->load->view('front-end/container/footer');
		}
		public function afiliasi(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/afiliasi.php',$data);
			$this->load->view('front-end/container/footer');
		}
		public function secangkirkopi(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/secangkir-kopi',$data);
			$this->load->view('front-end/container/footer');
		}
		public function carabelanja(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/cara-belanja',$data);
			$this->load->view('front-end/container/footer');
		}
		public function pengembaliandana(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/pengembalian-dana',$data);
			$this->load->view('front-end/container/footer');
		}

		public function faq(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/faq',$data);
			$this->load->view('front-end/container/footer');
		}

		public function regristrasi_mitra(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/reg-mitra',$data);
			$this->load->view('front-end/container/footer');
		}

		public function regristrasi_vendor(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/reg-vendor',$data);
			$this->load->view('front-end/container/footer');
		}

		public function keranjangbelanja(){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['kota']			= $this->model->View('tm_ongkir','id_kota');
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/cart',$data);
			$this->load->view('front-end/container/footer');
		}

		public function checkout($id=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$data['cart']			= $this->model->ViewWhereAndCart('tm_cart','id_vendor',$id,'kodecart',$this->session->userdata('idCart'));
			$data['vendor']			= $this->model->ViewWhere('tm_vendor','id_vendor',$id);
			$data['apacart']		= $this->model->ViewCartTotal($this->session->userdata('idCart'),$id);
			$this->session->set_userdata('vendorA',$id);
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/checkout',$data);
			$this->load->view('front-end/container/footer');
		}

		public function kodeUnik(){

		  	$kota 			= "500";
		  	$nLen			= 2;
		  	$dbData 		= $this->model->ActUnik();
		  	foreach($dbData as $key => $vaAngka) {
					$cAngka		=	$vaAngka['angka'] ;
			}
	        $nKode      	= (int) $cAngka ;
	        $cKode      	= (int) $nKode + 1 ;
	        $cFix 			= ''.$kota.'';
	        
	            if($cFix == ''){
	                $cCode      = str_pad($cKode,$nLen,'0',STR_PAD_LEFT) ;  
	            }else{
	                $cCode      = $cFix + str_pad($cKode,$nLen,'0',STR_PAD_LEFT) ;  
	            }
	            return $cCode ; 
	      
	  	}
		public function pembayaran($id=""){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['baru']			= $this->model->ViewLimit('v_barang','id_barang','9');
			$data['makanan']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728705');
			$data['pakaian']		= $this->model->ViewLimitWhere('v_barang','id_barang','9','id_kategori','97126178518728706');
			$data['cart']			= $this->model->ViewWhereAnd('tm_cart','id_vendor',$id,'kodecart',$this->session->userdata('idCart'));
			$data['vendor']			= $this->model->ViewWhere('tm_vendor','id_vendor',$id);
			$data['apacart']		= $this->model->ViewCartTotal($this->session->userdata('idCart'),$id);
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/hal-pembayaran',$data);
			$this->load->view('front-end/container/footer');
		}

		public function kodeTrs(){

		  	$kota 			= "TRS-MS-";
		  	$tgl 			= date('d-m');
		  	$tglReplace 	= strtolower(str_replace('-', '', $tgl)); 
		  	$nLen			= 4;
		  	$dbData 		= $this->model->ActTrs();
		  	foreach($dbData as $key => $vaAngka) {
					$cAngka		=	$vaAngka['angka'] ;
			}
	        $nKode      	= (int) $cAngka ;
	        $cKode      	= (int) $nKode + 1 ;
	        $cFix 			= ''.$kota.''.$tglReplace.'';
	        
	            if($cFix == ''){
	                $cCode      = str_pad($cKode,$nLen,'0',STR_PAD_LEFT) ;  
	            }else{
	                $cCode      = $cFix . str_pad($cKode,$nLen,'0',STR_PAD_LEFT) ;  
	            }
	            return $cCode ; 
	      
	  	}

	  	public function register_vendor_act(){
				$data = array(
					'id_mitra'		=> $this->input->post('id_mitra'),
					'namatoko'		=> $this->input->post('namatoko'),
					'namapemilik'	=> $this->input->post('namapemilik'),
					'alamat'		=> $this->input->post('alamat'),
					'kota_id'		=> $this->input->post('kd_kota'),
					'email'			=> $this->input->post('email'),
					'kodepos'		=> $this->input->post('kodepos'),
					'phone'			=> $this->input->post('phone')
					);
				$this->db->set('id_vendor','uuid_short()', FALSE);
				$this->model->Insert('tm_vendor',$data);
				redirect(site_url('Website/Halaman'));
			
		}

		public function checkoutAct($user="",$cart="",$vendor=""){

			$customer = array(
			'kodetrs'			=>	$this->kodeTrs(),
			'id_customer'		=>	$user,
			'sub_total'			=>  $this->session->userdata('idTotal'),
			'ongkir'			=>  $this->session->userdata('OngHrg'),
			'total_bayar'		=>  $this->session->userdata('TotalOng'),
			'tgl_transaksi'		=>  date("d-m-Y"),
			'kode_konfirmasi'	=>	$this->kodeUnik(),
			'jenis'				=>	$this->session->userdata('provOng'),
			'layanan'			=>  $this->session->userdata('OngLay'),
			'id_bayar'			=>	'0',
			'status_bayar'		=> 	'0'
			);		
			$this->session->set_userdata('kodeTrs',$this->kodeTrs());
			$this->db->set('id_transaksi','uuid_short()', FALSE);
         	$cust_id = $this->model->Insert('ts_transaksi',$customer);

         	$cartM = $this->model->ViewWhereAnd('tm_cart','kodecart',$cart,'id_vendor',$vendor);
			foreach ($cartM as $key => $vaCart) {
				$order_detail = array(
					'kodecart'		=> $cart,
					'id_barang' 	=> $vaCart['id_barang'],
					'qty'			=> $vaCart['qty'],
					'harga' 		=> $vaCart['harga'],
					'total'			=> $vaCart['harga'] * $vaCart['qty'],
				    'kodetrs' 		=> $this->session->userdata('kodeTrs')
				);		
				$dataUpdate = array(
					'id_bayar' =>'1'
					);
				$update = $this->model->update('tm_cart','id_cart',$vaCart['id_cart'],$dataUpdate);
				$this->db->set('id_detail','uuid_short()', FALSE);
		        $Save = $this->model->Insert('ts_detail',$order_detail);
		      }

		      $users = $this->model->ViewWhere('tm_customer','id_customer',$user);
			  foreach ($users as $key => $vaUse) {
			  	$emailUser = $vaUse['email'];
			  }
		      	
             	$subject = "Invoice Pembayaran Mausaya.com";
             	$data['row']			   =   $this->model->ViewWhereAnd('tm_cart','kodecart',$cart,'id_vendor',$vendor);
		        $data['hasil']		   =   $this->model->ViewWhere('ts_transaksi','kodetrs',$this->session->userdata('kodeTrs'));
	            $html				   =   $this->load->view('front-end/cetak/body', $data, true);

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
		        echo "<h4 style='color:#2b50a3'><strong>Pesan Berhasil Dikirim Ke Cs Kami , Terima Kasih</strong></h4>";
		      	redirect(site_url('Website/Halaman/pembayaran'));
		      }else{
		        echo "<h4 style='color:red'><strong>Pesan Belum Terkirim , Mungkin Server kami bermasalah , Coba Beberapa Saat Lagi</strong></h4>";
		      }	
			redirect(site_url('Website/Halaman/pembayaran'));
		}

		public function hancur(){
			$this->session->sess_destroy();
			redirect(site_url('Website/Halaman/Index'));
		}

		public function show_kurir($Id){
			$data['kurir'] = $Id;
			$this->load->view('front-end/show_kurir',$data);
		}

		public function add_alamat($Id=""){
			$data['idCust'] = $Id;
			$this->load->view('front-end/add_alamat',$data);
		}

		public function alamat_act($Id=""){
				$data = array(
					'nama'			=> $this->input->post('namaMember'),
					'kota_id'		=> $this->input->post('kd_propinsi'),
					'alamat'		=> $this->input->post('alamat'),
					'kode_pos'		=> $this->input->post('kodepos'),
					'phone'			=> $this->input->post('phone'),
					'id_customer'	=> $this->session->userdata('id_user'),
					);
				$this->db->set('id_alamat','uuid_short()', FALSE);
				$this->model->Insert('tm_alamat',$data);
				$cek = $this->model->ViewWhereOrder('tm_alamat','id_customer',$this->session->userdata('id_user'),'id_alamat');
				foreach ($cek as $key => $value) {
					$namaVal = $value['id_alamat'];
				}
				$this->session->set_userdata('alamat_s',$namaVal);
				redirect(site_url('Website/Halaman/checkout/'.$this->session->userdata('ven').''));
		}

		public function ongkir($Id){
			$data['ongkir'] = $Id;
			$this->load->view('front-end/ongkir',$data);
		}
		
	public function Vendor($Id){
			$dataHeader['title']	= "Mau Saya Market Place Product Lokal Indonesia";
			$dataMenu['menu']		= $this->model->ViewLimitWhere('tm_kategori','id_kategori_parent','7','id_kategori_parent','0');
			$data['idVendor']		= $Id;
			$data['row']			= $this->model->ViewWhere('v_barang','id_vendor',$Id);
			$this->load->view('front-end/container/header',$dataHeader);
			$this->load->view('front-end/container/menuheader',$dataMenu);
			$this->load->view('front-end/vendor/index',$data);
			$this->load->view('front-end/container/footer');
		}
}
