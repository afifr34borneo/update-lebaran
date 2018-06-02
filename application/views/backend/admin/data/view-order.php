<table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NO ORDER</th>
                                                <th>NO FAKTUR</th>
                                                <th>PBF</th>
                                                <th>APOTEK/TOKO</th>
                                                <th>STATUS</th>
                                                <th>ZONA</th>
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
                                                <?=$vaData['jam_booking']?> / 
                                                <?=$vaData['tanggal_booking']?> <br> 
                                                <strong>
                                                    <?=$vaData['namapbf']?>
                                                <strong>
                                            </td>
                                            <td>
                                                Penerima : <strong><?=$vaData['nama_apotek']?></strong><br>
                                                Alamat : <?=$vaData['alamat']?> <br>
                                                Kota : <?=$vaData['kota']?>
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
                                             <td align="center">
                                                <strong style="font-size: 22px"><?=$vaData['zona']?></strong>
                                            </td>
                                          </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>