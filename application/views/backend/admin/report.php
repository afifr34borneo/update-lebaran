<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
           <div class="col-md-12">

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
                                                <th>PBF</th>
                                                <th>APOTEK/TOKO</th>
                                                <th>KURIR</th>
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
                                            <strong><?=$vaData['jam_booking']?> / <?=$vaData['tanggal_booking']?>
                                            <strong>
                                            </td>
                                            <td>
                                                <?php 
                                                if ($vaData['id_sp'] > '0') {
                                                ?>
                                                <span class="label label-info"><?=$vaData['nama']?></span>
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <?php 
                                                if ($vaData['status'] == '0') {
                                                ?>
                                                <span class="label" style="background-color:#00a819;color:white"> <?=$vaData['time_order']?> | New Order</span>
                                                <?php }elseif($vaData['status'] == '1'){ ?>
                                                  <span class="label" style="background-color:#ff8400;color:white" > <?=$vaData['time_sp']?>  | Ambil Paket</span>
                                                <?php }elseif($vaData['status'] == '2'){ ?>
                                                  <span class="label" style="background-color:#ba8602;color:white"> <?=$vaData['time_pickup']?>  | picked-up</span>
                                                 <?php }elseif($vaData['status'] == '3'){ ?>
                                                  <span class="label" style="background-color:#dd00ff;color:white"> <?=$vaData['time_kirim']?>  |  Pengiriman Apotek </span>
                                                <?php }elseif($vaData['status'] == '4'){ ?>
                                                 <span class="label" style="background-color:#00ccff;color:white"> <?=$vaData['time_terima']?>  |  Paket Diterima | <?=$vaData['id_penerima']?>  </span>
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