
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
								<h4 class="panel-title" style="color:black"><i class="fa fa-user"></i> Detail Pickup Order </h4>
								<hr>
									
									<div class="modcontent">
									
										<table class="table table-responsive" width="100%" style="font-size: 14px">
												<tr>
													<td class="text-left">No</td>
													<td class="text-left">Faktur</td>
													<td class="text-left">Apotek</td>
												</tr>
												<?php 
													$no = '0';
													foreach ($row as $key => $vaData) {
													$idSp = $vaData['id_sp'];
													$Pbf  = $vaData['id_pbf'];
												?>
												<tr>
													<td class="text-left"><?=++$no?></td>
													<td class="text-left"><?=$vaData['no_faktur']?></td>
													<td class="text-left"><?=$vaData['nama_apotek']?></td>
												</tr>
												<?php } ?>
										</table>
										<a class="btn btn-primary" href="<?=base_url()?>/Website/Halaman/add_pickup/<?=$idSp?>/<?=$Pbf?>">
															<i class="fa fa-truck"></i> <?=$idSp?>/<?=$Pbf?>
														</a>
									</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		
						