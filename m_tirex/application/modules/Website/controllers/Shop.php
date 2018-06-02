<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Shop extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		ob_start();
  		$this->load->database();
		$this->load->model('Shop_Model');
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

	public function DateStamp() {
   			date_default_timezone_set("Asia/Jakarta");
			$Data = date("d-m-Y");
			return $Data ;
	}  

	public function Tanggal() {
   			date_default_timezone_set("Asia/Jakarta");
			$Data = date("Ymd");
			return $Data ;
		} 

		public function Waktu() {
   			date_default_timezone_set("Asia/Jakarta");
			$Data = date("his");
			return $Data ;
		} 
	
	public function KodeCart(){

		  	$kota 			= "MAU";
		  	$tgl 			= date('d-m');
		  	$tglReplace 	= strtolower(str_replace('-', '', $tgl)); 
		  	$nLen			= 4;
		  	$dbData 		= $this->model->ActCart();
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
	public function Add(){
		if($this->session->userdata('idCart') == ''){
				$data = array(
					'id_barang' 	=> $this->input->post('id'),
					'nama_barang' 	=> $this->input->post('nama'),
					'harga' 		=> $this->input->post('harga'),
					'foto'			=> $this->input->post('gambar'),
					'qty' 			=> $this->input->post('qty'),
					'id_vendor'		=> $this->input->post('vendor'),
					'kodecart'		=> $this->KodeCart(),
					'id_bayar'		=> '0'
				);		
				$this->session->set_userdata('idCart',$this->KodeCart());
				$this->cart->insert($insert_data);
				$this->model->Insert('tm_cart',$data);
		}else{

			$cekBrg = $this->model->ViewWhereAnd('tm_cart','id_barang',$this->input->post('id'),'kodecart',$this->session->userdata('idCart'));
			foreach ($cekBrg as $key => $vaData) {
					$barangAda = count($vaData['id_barang']);
					$qtyBarang = $vaData['qty'];
					$idBarang = $vaData['id_barang'];
				}	
				if($barangAda > '0'){
					$totalBrg = $qtyBarang +$this->input->post('qty');
					$data = array(
					'qty' 			=> $totalBrg
					);
				$this->model->UpdateCart($totalBrg,$idBarang); 	
				}else{
				$data = array(
					'id_barang' 	=> $this->input->post('id'),
					'nama_barang' 	=> $this->input->post('nama'),
					'harga' 		=> $this->input->post('harga'),
					'foto'			=> $this->input->post('gambar'),
					'qty' 			=> $this->input->post('qty'),
					'id_vendor'		=> $this->input->post('vendor'),
					'kodecart'		=> $this->session->userdata('idCart'),
					'id_bayar'		=> '0'
				);		
				$this->cart->insert($insert_data);
				$this->model->Insert('tm_cart',$data);	
				}
		}	
		
	}
	
	public function remove($rowid) {
		$this->model->HapusCart($rowid);
	}

	public function remove_cart($rowid) {

		if ($rowid==="all"){
			$this->cart->destroy();
		}else{
			$data = array(
				'rowid'   => $rowid,
				'qty'     => 0
			);
			$this->cart->update($data);
		}
		redirect('page/cart');
	}
	
	 public function update(){
	 $cJumlah = $this->input->post('qty');
	 $idBarang = $this->input->post('id');
	 $this->model->UpdateCart($cJumlah,$idBarang); 

	}

	 public function update_cart($rowid){
	 $cJumlah = $this->input->post('cJumlah');
	 $banyak = count($cJumlah);
	 for ($i=0; $i < $banyak ; $i++) { 
	 	$cIdJumlah = $cJumlah[$i];
	 	if($cIdJumlah == '0'){
	 		$this->model->HapusCart($rowid);
	 	}else{
	 		$this->model->UpdateCart($cIdJumlah,$rowid); 
	 	}
	 	
	 }
     if($cIdJumlah == '0'){
     	redirect(site_url('Website/Halaman/Index'));
 	 }else{
 	 	redirect(site_url('Website/Halaman/keranjangbelanja'));
 	 }

	}
      
	public  function chekout(){
		$data['user']	= $this->shop_model->GetUser($this->session->userdata('id_user'));
		$this->load->view('shop/out',$data);

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
				$this->session->set_userdata('id_user',$cIdUser);
			}else{
				echo "Login Gagal";

			}

	}

        
    public function save_order(){
		
		 $dTgl 	= $this->Tanggal();
		 $cJam  = $this->Waktu();
		 $nNomorHp = $this->input->post('nomor_hp') ;
		 $cKode = substr($nNomorHp,9,12);
		 $cNomorPesanan = $dTgl."-".$cKode."-".$cJam ;

		$customer = array(
			'nomor_hp'	=>	$this->input->post('nomor_hp'),
			'alamat'	=>	$this->input->post('alamat'),
			'provinsi'	=>  $this->input->post('provinsi'),
			'kota'		=>  $this->input->post('kota'),
			'kec'		=>  $this->input->post('kec'),
			'kode_pos'	=>  $this->input->post('kode_pos'),
			'id_user'	=>	$this->session->userdata('id_user'),
			'email'		=>	$this->input->post('email'),
			'no_pesanan'=>  $cNomorPesanan
		);		
       	
		$cust_id = $this->model->Insert('checkout',$customer);
		if ($cart = $this->cart->contents()):
			foreach ($cart as $item):
				$order_detail = array(
					'tanggal'		=> $this->Date2String($this->DateStamp()),
					'id_user' 		=> $this->session->userdata('id_user'),
					'id_barang' 	=> $item['id'],
					'nama_barang'	=> $item['name'],
					'jumlah' 		=> $item['qty'],
					'harga' 		=> $item['price'],
					'total'			=> $item['qty'] * $item['price'],
				    'status' 		=> 'N',
				    'ongkir'		=> $this->session->userdata('harga_ongkir'),
				    'no_pesanan'	=> $cNomorPesanan
				);		
				
		        $Save = $this->model->Insert('cart',$order_detail);
			endforeach;
		endif;
	   $this->cart->destroy();
	   $this->load->library('session');
	   $this->session->set_userdata('id_user_invoice',$this->session->userdata('id_user'));
	   $this->session->set_userdata('no_pesanan',$cNomorPesanan);
	   $this->session->unset_userdata('id_user');
	   //$this->session->sess_destroy();
	   //redirect('Website/invoice');
	   echo '
	   <h4 class="heading-primary">Cetak Invoice</h4>
	   <a href="'.site_url('Website/invoice').'" target="_blank">
	   	<button type="button" class="btn btn-lg btn-primary mt-xl">
	   	<i class="fa fa-print"></i> CETAK INVOICE
	   	</button>
	   </a>';
	}

	public function ongkir($cIdKota=""){
			
		$curl = curl_init();
		$BeratProduk = 1;
		$origin = 115;
		$destination = 419;
		curl_setopt_array($curl, array(
		  CURLOPT_URL => "http://api.rajaongkir.com/starter/cost",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_TIMEOUT => 30,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "POST",
		  CURLOPT_POSTFIELDS => "origin=$origin&destination=$destination&weight=1&courier=jne",
		  CURLOPT_HTTPHEADER => array(
		    "content-type: application/x-www-form-urlencoded",
		    "key: 7239102c0765b385e52a364a099b4c24"
		  ),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
		  echo "cURL Error #:" . $err;
		} else {
		  $hasil = json_decode($response, true);
		  
		  for($i=0; $i<$hasil; $i++){
		  
			  for($ix=0; $ix<count($hasil['rajaongkir']['results'][0]['costs'][$i]['cost']); $ix++){
			  echo $hasil['rajaongkir']['results'][0]['costs'][$i]['service'] - $hasil['rajaongkir']['results'][0]['costs'][$i]['cost'][$ix]['value']*$BeratProduk;
			  
			  }
			 
			}
			 
		}
			

			 


		}


	public function CetakInvoice(){

	        $data['row']	=   $this->model->ViewWhere('v_history_trs','kodetrs',$this->session->userdata('kodeTrs'));
	        //load the view and saved it into $html variable
	        $html		=	$this->load->view('front-end/cetak/invoice', $data, true);
				 
	        //this the the PDF filename that user will get to download
	        $pdfFilePath = "invoice-mausaya-.pdf";
	 
	        //load mPDF library
	 		$this->m_pdf->pdf->mPDF('','A4','10','ctimesbi','5','5','5','5','5','5','I');
	 		$this->m_pdf->pdf->useOddEven = true ;

	       //generate the PDF from the given html
	        $this->m_pdf->pdf->WriteHTML($html);
	     
	 
	        //download it.
	        $this->m_pdf->pdf->Output($pdfFilePath,'I');        
	    }			
}