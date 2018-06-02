<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
           <div class="col-md-12">

           		 <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">MONITOR</span><span class="label label-success pull-right"><?=$this->session->userdata('nama')?></span>
                            <h5>MONITORING PAKET APOTEK <?=strtoupper($this->session->userdata('nama'))?> / <?=date("d-m-Y")?></h5> 
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
                                                <th>STATUS BAYAR</th>
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
                                             PBF : <?=$vaData['nama']?> <br>
                                            </strong>
                                             <?=$vaData['jam_kirim']?> / <?=$vaData['tanggal_kirim']?>
                                            </td>
                                            <td>
                                               <?=$vaData['status_bayar']?>
                                            </td>
                                            <td>
                                               <?php if($vaData['jam_kirim'] >= '15.00' || $vaData['jam_kirim'] >= '16:00' ){?>
                                                    <span class="label label-success">PENGIRIMAN HARI INI / BESOK PAGI</span>
                                               <?php }else{?>
                                                    <span class="label label-danger">PENGIRIMAN HARI INI</span>
                                               <?php } ?>
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
	