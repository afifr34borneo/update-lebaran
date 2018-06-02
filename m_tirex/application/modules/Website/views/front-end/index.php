<?php 
 if($this->session->userdata('nama') == '' ) {
      redirect(site_url('Website/Halaman/signin'));
      }
?>
		<!-- //End Bar Nav -->		
		<div class="content">
			<!-- //Begin Main Content -->
			<div class="container page-builder-ltr">
				<div class="row">
					<div id="content" >
						<div class="col-xs-12 section_mobile_1">
							<div class="module no-margin">
								
								<marquee><span style="color:white">INFORMASI DARI ADMIN</span></marquee>		
									
								
							</div>
						</div>
						<div class="col-xs-12">
							<div class="module mobile_deals ">
								<h4 class="panel-title"><i class="fa fa-user"></i> DASHBOARD</h4>
									<div class="modcontent">
										<table class="table table-bordered">
											<thead>
												<tr>
													<td class="text-left">Karyawan No</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$this->session->userdata('id_karyawan')?></td>
												</tr>
												<tr>
													<td class="text-left" width="40%">Kode User</td>
													<td class="text-left" width="5%">:</td>
													<td class="text-left" width="55%"><?=$this->session->userdata('nama')?></td>
												</tr>
												<?php 

												$mdls = $this->model->viewWhere('tirex_v_pegawai','username',$this->session->userdata('nama'));
												foreach ($mdls as $key => $vaData) {
													$nama = $vaData['nama'];
													$Telepon = $vaData['telp'];
												}
												?>
												<tr>
													<td class="text-left" width="40%">Nama</td>
													<td class="text-left" width="5%">:</td>
													<td class="text-left" width="55%"><?=$nama?></td>
												</tr>
												<tr>
													<td class="text-left" width="40%">Telp</td>
													<td class="text-left" width="5%">:</td>
													<td class="text-left" width="55%"><?=$Telepon?></td>
												</tr>

											</thead>
										</table>
										
									</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		
						