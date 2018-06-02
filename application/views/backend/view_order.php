<?php
 $dataCek = $this->model->viewWhere('pbf_v_order','id_status',$id_faktur);
  foreach ($dataCek as $key => $vaCek) { 
	$nobooking = $vaCek['id_booking'];
  }
  $row = $this->model->viewWhere('pbf_v_order','id_booking',$nobooking);
?>

<table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NO ORDER</th>
                                                <th>NO FAKTUR</th>
                                                <th>PENERIMA</th>
                                                <th>ALAMAT</th>
                                                <th>KOTA</th>
                                                <th>PENGIRIMAN</th>
                                                
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                          <?php 
                                            $No = 0;
                                            foreach ($row as $key => $vaData) { 
                                            ?>
                                          <tr>
                                            <td><?= ++$No?></td>
                                             <td><strong style="color:red">#<?=$vaData['id_booking']?></strong></td>
                                            <td><strong><?=$vaData['no_faktur']?></strong></td>
                                            <td><strong><?=$vaData['nama_apotek']?></strong></td>
                                            <td><?=$vaData['alamat']?></td>
                                            <td><?=$vaData['kota']?></td>
                                            <td><strong><?=$vaData['jam_kirim']?> - <?=$vaData['tanggal_kirim']?><strong></td>
                                           
                                            
                                          </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>