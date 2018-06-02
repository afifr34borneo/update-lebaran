 <?php $no = 0; foreach($mobil as $vaData){ 
		$idPaket 	= $vaData['id_antar_kurir'];
		$nama 		= $vaData['nama'];
		$no_hp 		= $vaData['telp'];
		$jam		= $vaData['jam_kirim'];
		$tanggal 	= $vaData['tanggal_kirim'];
		$Mobil 		= $vaData['no_mobil'];
		$merk 		= $vaData['type'];
		$this->session->set_userdata('idkirim',$idPaket);
		}
?>
<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">

        	<form 	id="FormMstAlat" 
				    enctype="multipart/form-data" 
				    method="post"
					action="<?=site_url('Administrator/Master_Act/jadwal_Act/'.$this->session->userdata('idkirim').'')?>" >
				<div class="col-sm-12" style="margin-bottom:-50px">
					<div class="ibox-title">
						 <center><h3>SURAT PENGANTAR KIRIM ORDER</h3></center>
					</div>
					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label>Tanggal Pengiriman : </label><br>
									<?php echo $tanggal ?>
								</div>
							</div>	
							<div class="col-sm-6">
								<div class="form-group">
									<label>Jam Pengiriman : </label><br>
									<?php echo $jam ?>
								</div>
							</div>
							 <hr>
							  				<div class="col-sm-6" >
								          		 <div class="box box-success">
											            <div class="box-header">
											                 <h3 class="box-title">Data Kurir</h3>
											            </div>
											          	<div class="box-body">
											          		
											          		<div class="row">
											     			<div class="col-sm-4">
													  			<div class="form-group">
													  			  	<img src="<?php echo base_url()?>assets/images/mobil.jpg" style="width:150px;">
													  			</div>
													  		</div>	
													  		<div class="col-sm-6">
													  			<div class="form-group">
													  			 <label>Kurir  : </label><br>
													  			  	<?php echo $nama ?>
													  			</div>
													  		</div>	
													  		<div class="col-sm-6">
													  			<div class="form-group">
													  			 <label>Telepon Kurir  : </label><br>
													  			  	<?php echo $no_hp ?>
													  			</div>
													  		</div>	
											          		</div>
											          	</div>
										         </div>
									        </div>
									        <div class="col-sm-6">
								          		 <div class="box box-danger">
											            <div class="box-header">
											                 <h3 class="box-title">Detail Kendaraan</h3>
											            </div>
											          	<div class="box-body">
											          	<div class="row">
											          	<div class="col-sm-4">
													  			<div class="form-group">
													  			  	<img src="<?php echo base_url()?>assets/images/orang.jpg" style="width:150px;">
													  			</div>
													  		</div>
											          	<div class="col-sm-6">
													  			<div class="form-group">
													  			 <label>Jenis Kendaraan : </label><br>
													  			  	<?php echo $merk ?>
													  			</div>
													  		</div>	
													  		<div class="col-sm-6">
													  			<div class="form-group">
													  			 <label>No Mobil :</label><br>
													  			  	<?php echo $Mobil ?> 
													  			</div>
													  		</div>
													  		
													  	</div>
											          	</div>
										         </div>
									        </div>
									        
									        <div class="col-sm-12">
								          			<div class="ibox float-e-margins">
											            <div class="ibox-title">
											            	<div class="col-sm-6">
											                 <h3 class="box-title">Daftar Paket</h3>
											                </div>
											                <div class="col-sm-6" align="right">
											                 <button type="button"  class="btn btn-flat btn-primary" onclick="return ViewData();">
											                 	<i class="fa fa-plus"></i> Tambah
											                 </button>
											                 </div>
											            </div>
											          	<div class="ibox-content">
												          	<div class="row" id="responsecontainer_mau">
			
														  	</div>
											          	</div>
										         </div>
									        </div>
									    </div>
									    <br/>
								  	<!--<div class="row">
								  		<div class="col-sm-12">
								  			<button type="submit" id="act"  
								    		class="btn btn-primary btn-flat"><i class="fa fa-save"></i> 
								    		Simpan
								    		</button> 
								  		</div>
								  	</div>	-->
						</div>
						<br>
						<br>
					</div>

									    
			</form>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="modal fade bs-example-modal-lg" id="modal-detail" tabindex="-1" role="dialog" aria-hidden="true">
								<div class="modal-dialog" style="border-radius:0px;width:80%;">
									<div class="modal-content">
										<div class="modal-header" style="background-color:#e72a2a">
											<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											    <h4 class="modal-title" id="myModalLabel" style="color:white"><strong>DATA PAKET PBF BELUM DIAMBIL</h4>
											
										</div>
										<div class="modal-body">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	<script type="text/javascript">
	  function ViewData(id){
	    $("#modal-detail").modal('show');
	      $.ajax({
	       type: "GET",
	       url: "<?php echo base_url()?>Administrator/tb_paket_kirim/"+id,
	       cache: false,
	        beforeSend:function(){
	          $(".modal-body").html("<div align='center'><img  width='80' height=80'   src='<?php echo base_url()?>assets/images/logo/loading.gif' /></div>");
	        },
	        success:function(msg){
	          $(".modal-body").html(msg);
	        }
	     });
	    }  
    </script>
	<script>
		var refreshId = setInterval(function()
		{
			 $('#responsecontainer_mau').load('<?php echo base_url()?>Administrator/tb_kirimpaket/');
		}, 1000);
	</script>
