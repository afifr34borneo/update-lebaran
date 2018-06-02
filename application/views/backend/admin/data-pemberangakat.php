 <div class="wrapper wrapper-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <h5>JADWAL SP AMBIL ORDER</h5> 
                        </div>
                        <div class="ibox-content">
                        	<button class="btn btn-success" type="button" onclick="return ViewRelasi()">
                                    <i class="fa fa-plus"></i> &nbsp;Tambah SP
                             </button>
                        	<br><br>
                      		<div class="table-responsive">
						  				<table class="table table-striped table-bordered table-hover dataTables">
											<thead>
												<tr>
													<th>No</th>
													<th>No SP</th>
													<th>Tanggal</th>
													<th>Jam Berangkat</th>
													<th>Sopir</th>
													<th>No Hp</th>
													<th>No Mobil</th>
													<td align="center"><strong>Action</strong></td> 
												</tr>
											</thead>
											<tbody>
											<?php $no = 0; foreach ($row as $key => $vaData){ ?>
												<tr>
													<td><?php echo ++$no ?></td>
													<td><?php echo $vaData['no_sp'] ?></td>
													<td><?php echo $vaData['tanggal_kirim'] ?></td>
													<td><?php echo $vaData['jam_kirim'] ?></td>
													<td><?php echo $vaData['nama'] ?></td>
													<td><?php echo $vaData['no_hp'] ?></td>
													<td><?php echo $vaData['no_mobil'] ?></td>
													<td align="center">
													   <a class="btn btn-effect btn-success" 
								                               	onclick="return ViewEdit(<?php echo $vaData['id_antar_paket'] ?>);">
								                                	<i class="fa fa-edit"></i> Edit
								                               	</a>
													    <a  class="btn btn-danger"
															href="<?=site_url('Administrator/sp_ambil_paket/'.$vaData['id_antar_paket'].'')?>">
														<i  class="fa fa-calendar-o"></i> Tambah Paket
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
						<div class="col-sm-12">
								<div class="form-group">
									<div class="modal fade bs-example-modal-lg" id="modal-paket" tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog" style="border-radius:0px;width:80%;">
											<div class="modal-content">
												<div class="modal-header" style="background-color:#e72a2a">
													<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
													    <h4 class="modal-title" id="myModalLabel" style="color:white"><strong>Add Jadwal</h4>
												</div>
												<div class="modal-body">
												
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						<script type="text/javascript">
						  function ViewRelasi(){
						    $("#modal-paket").modal('show');
						      $.ajax({
						       type: "GET",
						       url: "<?php echo base_url()?>Administrator/add_surat/",
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
					    <script type="text/javascript">
						  function ViewEdit(id){
						    $("#modal-paket").modal('show');
						      $.ajax({
						       type: "GET",
						       url: "<?php echo base_url()?>Administrator/edit_jadwal/edit/"+id,
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