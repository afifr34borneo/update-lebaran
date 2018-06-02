
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
						<br>
						<div class="col-xs-12">
							<div class="module mobile_deals ">
								<br>
								<h4 class="panel-title" style="color:black"><i class="fa fa-user"></i> DETAIL PAKET & PENERIMA | <?=$this->session->userdata('nama')?></h4>
								<hr>
									<div class="modcontent">
										 <form type="multipart/form-data" 
				                               method="post"
				                               action="<?=base_url()?>Website/Halaman/penerima/<?=$idsp?>/<?=$apotek?>">
				                         <?php 
													foreach ($row as $key => $vaData) {
														$namaApotek = $vaData['nama_apotek'];
														$alamatApotek = $vaData['alamat'];
														$telepon = $vaData['telepon'];
													}
										?>
										<center><b><span style="font-size: 16px"><?=$namaApotek?></span></b></center>
										<table class="table table-responsive" width="100%" style="font-size: 14px">
												<tr>
													<td class="text-left">FAKTUR</td>
													<td class="text-left">KOLI</td>
													<td class="text-left">STATUS</td>
												</tr>
												<?php 
													foreach ($row as $key => $vaData) {
												?>
												<tr>
													<td class="text-left"><?=$vaData['no_faktur']?></td>
													<td class="text-left"><?=$vaData['koli']?></td>
													<td class="text-left"><?=$vaData['status_bayar']?></td>
												</tr>
												<?php } ?>
												<tr>
													<td class="text-left" colspan="3"><input type="text" class="form-control" placeholder="Penerima"  name="penerima">
													</td>	
												</tr>
												<tr>
													<td colspan="3" align="right">
														<button type="submit" id="act" 
						                                        class="btn btn-primary form-control">
						                                        <i class="fa fa-truck"></i>&nbsp; 
						                               	 Simpan
						                                </button>
														
													</td>
												</tr>
										</table>
										</form>
									</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		
						