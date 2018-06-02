<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
           <div class="col-md-12">
                  <div class="ibox float-e-margins">
                        <div class="ibox-title panel-success">
                            <h5>PENCARIAN BERDASARKAN TANGGAL</h5> 
                        </div>
                        <div class="ibox-content">
                            <form action="<?=base_url()?>/Halaman/Monitor/cari" method="POST">
                            <div class="row">
                                <div class="col-sm-2">
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">  
                                      <input type="Text"  name="tanggalawal" placeholder="Tanggal Awal" class="form-control datetimepicker"> 
                                    </div>
                                </div>
                                
                                <div class="col-sm-3">
                                    <div class="form-group">  
                                      <input type="Text"  name="tanggalakhir" placeholder="Tanggal Akhir" class="form-control datetimepicker"> 
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                   <button type="submit" name="cetak"  value="act" 
                                        class="btn btn-success">
                                        <i class="fa fa-search"></i> 
                                    Cari
                                    </button>
                                    <button type="submit" name="cetak" value="cetak" 
                                            class="btn btn-warning">
                                            <i class="fa fa-print"></i> 
                                    Cetak
                                    </button>
                                </div>
                               
                            </div>
                        </div>
                        </form>
                  </div>
           		 <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">MONITOR</span><span class="label label-success pull-right"><?=$this->session->userdata('nama')?></span>
                            <h5>MONITORING PAKET PBF <?=$this->session->userdata('nama_pbf')?></h5> 
                        </div>
                        <div class="ibox-content">
                        	<table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NO ORDER</th>
                                                <th>NO FAKTUR</th>
                                                <th>PENERIMA</th>
                                                <th>PENGIRIMAN</th>
                                                <th>STATUS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          <?php 
                                            $No = 0;
                                            foreach ($row as $key => $vaData) { 
                                            ?>
                                          <tr>
                                            <td><?= ++$No?></td>
                                            <td>
                                                <strong style="color:red">#<?=$vaData['id_booking']?></strong>
                                            </td>
                                            <td>
                                                <strong><?=$vaData['no_faktur']?></strong>
                                            </td>
                                            <td>
                                                Penerima : <strong><?=$vaData['nama_apotek']?></strong><br>
                                                Alamat : <?=$vaData['alamat']?> <br>
                                                Kota : <?=$vaData['kota']?>
                                            </td>
                                            <td>
                                            <strong>
                                             PBF : <?=$vaData['nama']?><br>
                                            </strong>
                                            <?=$vaData['jam_kirim']?> / <?=$vaData['tanggal_kirim']?>
                                            </td>
                                            <td>
                                                <?=$vaData['status_bayar']?>   
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
