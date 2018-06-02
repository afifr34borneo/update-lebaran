
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
								<h4 class="panel-title" style="color:black"><i class="fa fa-user"></i> SURAT PENGANTARAN PAKET | <?=$this->session->userdata('nama')?></h4>
								<hr>

									<div class="modcontent">
										<table class="table table-bordered table-responsive" width="100%" style="font-size: 10px">
											<thead>
												<tr>
													<td class="text-center">#</td>
													<td class="text-left">FAKTUR</td>
													<td class="text-left">PENERIMA</td>
													<td class="text-left">ACT</td>
												</tr>
											</thead>
											<tbody>
											<?php 
												foreach ($row as $key => $vaData) {
											?>
												<tr>
													<td class="text-center">#<?=$vaData['id_booking']?></td>
													<td class="text-left"><?=$vaData['no_faktur']?></td>
													<td class="text-left"><?=$vaData['nama_apotek']?></td>
													<td class="text-left">
														<a class="btn btn-primary" href="<?=base_url()?>/Website/Halaman/detail_sp_history/<?=$vaData['id_status']?>">
															<i class="fa fa-eye"></i>
														</a>
													</td>				
												</tr>
											<?php } ?>
											</tbody>
										</table>
									</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		
						