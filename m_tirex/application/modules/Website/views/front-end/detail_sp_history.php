
		<!-- //End Bar Nav -->		
		<div class="content">
			<!-- //Begin Main Content -->
			<div class="container page-builder-ltr">
				<div class="row">
					<div id="content" >
						<div class="col-xs-12 section_mobile_1">
							<div class="module no-margin">
								<div class="loading-placeholder"></div>
								<div class="menu-link contentslider" data-rtl="no" data-autoplay="yes" data-autowidth="yes" data-delay="4" data-speed="0.6" data-margin="10" data-item_xs="2" data-item_sm="2" data-arrows="no" data-pagination="no" data-lazyload="no"  data-loop="yes" data-hoverpause="yes">
									<div class="item-link">
										<span class="menu-title" style="color:white">INFORMASI DARI ADMIN</span>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="col-xs-12">
							<div class="module mobile_deals ">
								<br>
								<h4 class="panel-title" style="color:black"><i class="fa fa-user"></i> DETAIL PAKET & PENERIMA | <?=$this->session->userdata('nama')?></h4>
								<hr>
									<?php 
										foreach ($row as $key => $vaData) {
											$noFaktur 	= $vaData['no_faktur'];
											$Apotek 	= $vaData['nama_apotek'];
											$Koli 		= $vaData['koli'];
											$Keterangan = $vaData['keterangan'];
											$idStatus	= $vaData['id_status'];
											$cTime		= $vaData['time_terima'];
											$cNama		= $vaData['id_penerima'];
										}
									?>
									<div class="modcontent">
										 <form type="multipart/form-data" 
				                               method="post"
				                               action="<?=base_url()?>Website/Halaman/penerima/<?=$idStatus?>">
										<table class="table table-responsive" width="100%" style="font-size: 14px">
												<tr>
													<td class="text-left">Faktur</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$noFaktur?></td>
												</tr>
												<tr>
													<td class="text-left">Penerima</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$Apotek?></td>
												</tr>
												<tr>
													<td class="text-left">Koli</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$Koli?> Koli</td>
												</tr>
												<tr>
													<td class="text-left">Keterangan</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$Keterangan?></td>
												</tr>
												<tr>
													<td class="text-left">Tanggal & Waktu</td>
													<td class="text-left">:</td>
													<td class="text-left"><?=$cTime?></td>
												</tr>
												<tr>
													<td class="text-left">Penerima</td>
													<td class="text-left">:</td>
													<td class="text-left"><input type="text" class="form-control" placeholder="Penerima"  name="penerima" readonly value="<?=$cNama?>">
													</td>	
												</tr>
												
										</table>
									</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		
						