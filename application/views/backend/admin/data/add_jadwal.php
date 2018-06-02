 <link href="<?=base_url()?>assets/plugins/datepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet"> 
 <link rel="stylesheet" href="<?php echo base_url()?>assets/js/select2/select2.css" />
<?php 
	if($action == 'edit') {
		 foreach ($field as $column) {
		 	$cIdAntar		=	$column['id_antar_paket'];
		 	$cIdKaryawan	=	$column['id_karyawan'];
		 	$cTelp			=	$column['no_hp'];
		 	$cNamaSopir		=	$column['nama'];
		 	$cMobil			=	$column['no_mobil'];
		 	$cJamKirim		=	$column['jam_kirim'];
		 	$cTanggalKirim	=	$column['tanggal_kirim'];

		 }
		 	$cIconButton    =   "fa fa-refresh"    ;
            $cValueButton   =   "Update Data" ; 
		 	$cAction 		=   "ubah/$cIdAntar" ;
	}else{
			$cIdAntar		=	"";
		 	$cIdKaryawan	=	"";
		 	$cNamaSopir		=	"";
		 	$cTelp			=	"";
		 	$cIdMobil		=	"";
		 	$cMobil			=	"";
		 	$cJamKirim		=	"";
		 	$cTanggalKirim	=	date("d-m-Y");
			$cIconButton    =   "fa fa-save"    ;
            $cValueButton   =   "Save Data" ;
            $cAction        =   "simpan" ; 	
	}
?>
<h4><span style='color:#2b50a3'><strong>JADWAL PENGIRIMAN PBF</strong></span> <span style='color:#ff7f12'></span></h4>

<form 
									 role="form" 
								 	 data-toggle="validator" 
								 	 id="Barang" 
								 	 method="post" 
								 	 action="<?=site_url('Administrator_Act/jadwal/'.$cAction.'')?>" 
								 	 enctype="multipart/form-data">

											  <div class="row">
											  	<div class="col-sm-12">
												  <div class="box box-info">
										            <div class="box-header">
										                 <h3 class="box-title">Input Jadwal Pengiriman PBF</h3>
										            </div>
										          <div class="box-body">
										          	<div class="row">
												  		<div class="col-sm-4" id="data_1">
												  			<div class="form-group">
												  			 <label>Tanggal Kirim</label>
												  			<div class="input-group date">
										                                    <span class="input-group-addon">
										                                    <i class="fa fa-calendar"></i>
										                                    </span>
										                                    <input type="text" class="form-control datetimepicker" 
										                                   	placeholder ="Tanggal Kirim"
														  			 		name="cTglKirim"
														  			 		value="<?php echo $cTanggalKirim ?>" required>
										                               </div>
												  		</div>
												  		</div>
												  		<div class="col-sm-4">
												  			<div class="form-group">
												  			 <label>Jam Kirim</label>
												  			 <select class="form-control" 
												  			 		 placeholder="Jam Pengiriman"
												  			 		 name="cJamKirim" required>
												  			 	<?php if($action == 'edit') { ?>
												  			 	<option value="<?=$cJamKirim?>" ><?=$cJamKirim?> WIB</option>
												  			 	<?php } ?>
												  			  	<option value="11:00" >11:00 WIB</option>
												  			  	<option value="13:00" >13:00 WIB</option>
																<option value="15:00" >15:00 WIB</option>
																
												  			  </select>
												  			</div>
												  		</div>
												  	</div>
												  	
										          	<div class="row">
												  		<div class="col-sm-4">
												  			<div class="form-group">
												  			 <label>Pilih Sopir</label>
												  			 <select name="cIdKaryawan" onchange="return changeValue(this.value)" class="form-control comboBox">
							                                   <option value=""></option>
							                                    <?php 
							                                          $jsArray = "var jason = new Array();\n";
							                                          
							                                          foreach ($mobil as $key => $rowJenis) {
							                                          ?>
							                                  		 <option value="<?=$rowJenis['id_pegawai']?>" <?php if($rowJenis['id_pegawai']== $cIdKaryawan) echo "selected"; ?>> 
							                                  		 <?=$rowJenis['nama']?>
							                                          </option>
							                                          <?php 
							                                          $jsArray .= "jason['" . $rowJenis['id_pegawai'] . "'] = 
							                          					{plat_nomor		 :'" . addslashes((number_format($rowJenis['plat_nomor']))) . "',
							                          					 no_mobil		 :'" . addslashes(($rowJenis['no_mobil'])) . "',
							                          					 telp		 	 :'" . addslashes(($rowJenis['telp'])) . "',
							                          					 nama_sopir	     :'" . addslashes(($rowJenis['nama'])) . "',
							                          					};\n"; 
							                                       		} ?>
							                                  </select>
												  			</div>
												  		</div>
												  	</div>
												  	<div class="row">
												  		<div class="col-sm-4">
												  			<div class="form-group">
												  			 <label>Nomor HP</label>
												  			 <input type="text" 
												  			 		class="form-control" 
												  			 		placeholder ="Nomor Hp"
												  			 		name="cTelp"
												  			 		id="cTelp"
												  			 		value="<?=$cTelp?>">
												  			</div>
												  			<input type="hidden" 
												  			 		class="form-control" 
												  			 		placeholder ="Nomor Hp"
												  			 		name="cNamaSopir"
												  			 		id="cNamaSopir"
												  			 		value="<?=$cNamaSopir?>">
												  		</div>
												  	</div>
												  	<div class="row">
												  		<div class="col-sm-7">
												  			<div class="form-group">
												  			 <label>No Mobil</label>
												  			 <input type="text" 
												  			 		class="form-control" 
												  			 		placeholder ="No Mobil"
												  			 		name="cIdMobil"
												  			 		id="cIdMobil"
												  			 		value="<?=$cMobil?>">
												  			</div>
												  		</div>
												  	</div>
												  	
								  	<div class="row">
								  		<div class="col-sm-12">
								  			<button type="submit" id="act"  
								    		class="btn btn-primary btn-flat"><i class="<?=$cIconButton?>"></i> 
								    		<?=$cValueButton?>
								    		</button> 
								  		</div>
								  	</div>				    	  	
					          
							 
							 </form>
							 </div>  <!-- row -->
    <script type="text/javascript">
    <?php echo $jsArray; ?>  
    function changeValue(id){  
  	  document.getElementById('cTelp').value = jason[id].telp;
      document.getElementById('cIdMobil').value = jason[id].no_mobil; 
      
    };
  </script>
  
  <script type="text/javascript" src="<?=base_url()?>assets/plugins/datepicker/js/moment.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/plugins/datepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/plugins/datepicker/js/bootstrap-datetimepicker.id.js"></script>
  <script src="<?php echo base_url()?>assets/js/select2/select2.js"></script>
  <script>
  	   $('.datetimepicker').datetimepicker({
          language:'in',
          format : 'DD-MM-YYYY'
   		});
       
        $('#comboBox').select2(); 

 </script>