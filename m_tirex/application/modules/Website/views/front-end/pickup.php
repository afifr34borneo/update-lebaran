
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
								<h4 class="panel-title" style="color:black"><i class="fa fa-user"></i> PICKUP ORDER | <?=$this->session->userdata('nama')?></h4>
								<hr>

									<div class="modcontent">
										<table class="table table-bordered table-responsive" width="100%" style="font-size: 10px">
											<thead>
												<tr>
													<td class="text-left">SP</td>
													<td class="text-left">PBF</td>
													<td class="text-left">ACT</td>
												</tr>
											</thead>
											<tbody>
											<?php 
												foreach ($row as $key => $vaData) {
											?>
												<tr>
													<td class="text-left"><?=$vaData['no_sp']?></td>
													<td class="text-left"><?=$vaData['namapbf']?></td>
													<td class="text-left">
														<a class="btn btn-primary" href="<?=base_url()?>/Website/Halaman/detail_pickup/<?=$vaData['id_sp']?>/<?=$vaData['id_pbf']?>">
															<i class="fa fa-truck"></i>
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
		
						