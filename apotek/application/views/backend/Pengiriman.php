  <?php 
  if($action == 'edit') {
     foreach ($field as $column) {
      $cIdFaktur       = $column['id_paket'];
      $cTglKirim       = $column['tanggal_kirim'];
      $cJamKirim       = $column['jam_kirim'];
      $cNo             = $column['no_faktur'];
      $cPenerima       = $column['penerima'];
      $cAlamat         = $column['alamat'];
      $cKota           = $column['kota'];
     }
      $cIconButton    =   "fa fa-refresh";
      $cValueButton   =   "Update Data"; 
      $cAction        =   "ubah/$cIdFaktur";
  }else{
      $cIdFaktur       = "";
      $cTglKirim       = date("d-m-Y");
      $cJamKirim       = "";
      $cNo             = "";
      $cPenerima       = "";
      $cAlamat         = "";
      $cKota           = "";
      $cJumlah         = "1";
      $cKeterangan     = "";
      $cAmbil          = "";
      $cBayar          = "";
      $cIconButton     = "fa fa-save";
      $cValueButton    = "Save Data";
      $cAction        =  "simpan" ;  
  }
  ?>
 <div class="wrapper wrapper-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">Input Data Faktur</span><span class="label label-success pull-right"><?=$kodebooking?></span>
                            
                            <h5>Input Faktur - #<?=$kodebooking?></h5> 
                        </div>
                        <div class="ibox-content">
                        <form type="multipart/form-data" 
                              method="post"
                              action="<?=base_url()?>Halaman_Act/order_pengiriman/<?=$cAction?>" 
                              >
                            <div class="row">
                                <div class="col-sm-3 col-md-3">
                                    <div class="form-group" id="data_1">  
                                        <label for="cContent">Tanggal Order</label> 
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-calendar"></i>
                                          </span>   
                                          <input type="Text"  
                                                 name="cTglKirim"
                                                 id="cTglKirim" 
                                                 placeholder="Tanggal" 
                                                 class="form-control"  
                                                 value="<?=$cTglKirim?>" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-3">
                                    <div class="form-group" id="data_1">  
                                        <label for="cContent">Jam Order</label>   
                                        
                                          <select class="form-control select " 
                                                  name="cJamKirim" 
                                                  id="cJamKirim" required
                                                  oninvalid="this.setCustomValidity('PILIH PENGIRIMAN')"
                                                     oninput="setCustomValidity('')">
                                            <?php if($time <= "11:30" && $time >= "06:30"){ ?>
                                            <option value="11:00">11:00</option>
                                            <?php }elseif($time >= '11:30' && $time <= '14:00'){ ?>
                                            <option value="13.00">13:00</option>
                                            <?php }elseif($time >= '14:00' && $time <= '16:15'){ ?>
                                            <option value="15.00">15:00</option>
                                            <?php } ?>
                                            
                                          </select>
                                   </div>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">No Faktur</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-credit-card"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cNo" 
                                                     id="cNo"
                                                     placeholder="No Faktur" 
                                                     class="form-control"  
                                                     value="<?=$cNo?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan No Faktur')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-2 col-md-2">
                                    <div class="form-group">  
                                        <label for="cContent">Koli</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-cube"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cJumlah" 
                                                     id="cJumlah"
                                                     placeholder="Jumlah Koli" 
                                                     class="form-control"  
                                                     value="<?=$cJumlah?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Jumlah Koli')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                <div class="col-sm-3 col-md-3">
                                    <div class="form-group">  
                                        <label for="cContent">Apotek / Toko</label>   
                                        <select name="cPenerima" onchange="return changeValue(this.value)" class="form-control select" required
                                          oninvalid="this.setCustomValidity('Pilih Apotek')"
                                                     oninput="setCustomValidity('')">
                                                 <option value=""></option>
                                              <?php 
                                              $jsArray = "var jason = new Array();\n";
                                              foreach ($apotek as $key => $rowJenis) {
                                              ?>
                                              <option value="<?=$rowJenis['id_apotek']?>" > 
                                                <?=$rowJenis['nama_apotek']?>
                                              </option>
                                              <?php 
                                        $jsArray .= "jason['" . $rowJenis['id_apotek'] . "'] = 
                                        {
                                    alamat    :'" . addslashes(($rowJenis['alamat'])) . "',
                                    kota      :'" . addslashes(($rowJenis['kota'])) . "',
                                                  };\n";  
                                                        } ?>
                                      </select>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <div class="form-group">  
                                        <label for="cContent">Alamat</label>
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-home"></i>
                                          </span>    
                                          <input type="Text"  
                                                 name="cAlamat" 
                                                 id="cAlamat" 
                                                 placeholder="Alamat Apotek" 
                                                 class="form-control"  
                                                 value="<?=$cAlamat?>" 
                                                 oninvalid="this.setCustomValidity('Inputkan Alamat')"
                                                 oninput="setCustomValidity('')"
                                                 readonly>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-sm-3 col-md-3">
                                    <div class="form-group">  
                                        <label for="cContent">Kota</label> 
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-arrows-h"></i>
                                          </span> 
                                          <select class="form-control m-b" 
                                                  name="cKota" 
                                                  id="cKota"
                                                  required
                                                  oninvalid="this.setCustomValidity('Pilih Kota')"
                                               oninput="setCustomValidity('')">
                                            <?php
                                              foreach ($kota as $key => $vaKota) { 
                                             ?>
                                            <option value="<?=$vaKota['kota']?>"><?=$vaKota['kota']?></option>
                                            <?php } ?>
                                          </select>  
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                              <div class="col-sm-8 col-md-8">
                                    <div class="form-group">  
                                        <label for="cContent">Keterangan</label> 
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-comment"></i>
                                          </span>   
                                        <input type="Text"  
                                               name="cKeterangan" 
                                               id="cKeterangan" 
                                               placeholder="Keterangan Barang" 
                                               class="form-control"  
                                               value="" 
                                               oninvalid="this.setCustomValidity('Inputkan Kota')"
                                               oninput="setCustomValidity('')"
                                               >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-3">
                                    <div class="form-group">  
                                        <label for="cContent">Status Faktur</label> 
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-cart-plus"></i>
                                          </span>   
                                        <select class="form-control m-b" 
                                                  name="cBayar" 
                                                  id="cBayar"
                                                  required
                                                  oninvalid="this.setCustomValidity('Pilih Status')"
                                               oninput="setCustomValidity('')">
                                           
                                            <option value="KREDIT">KREDIT</option>
                                            <option value="COD">COD</option>
                                          </select>
                                    </div>
                                  </div>
                                </div>
                                <!--<div class="col-sm-2 col-md-2">
                                    <div class="form-group">  
                                        <label for="cContent">Pick Up</label> 
                                        <div class="input-group m-b">
                                          <span class="input-group-addon"> 
                                            <i class="fa fa-truck"></i>
                                          </span>   
                                        <select class="form-control m-b" 
                                                  name="cBayar" 
                                                  id="cBayar">
                                            <option value="" disabled selected> Pilih Pick Up </option>
                                            <option value="1"><i class="fa fa-truck"></i>Motor</option>
                                            <option value="2"><i class="fa fa-motorcycle"></i> Mobil</option>
                                          </select>
                                    </div>
                                  </div>
                                </div>-->
                            </div>
                            <div>
                                <button type="submit" id="act" 
                                        class="btn btn-primary">
                                        <i class="<?php echo $cIconButton?>"></i> 
                                <?php echo $cValueButton?>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-primary">
                        <div class="panel-heading">
                           DATA PENGIRIMAN PBF <?=$this->session->userdata('nama_pbf')?>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NO FAKTUR</th>
                                                <th>PENERIMA</th>
                                                <th>ALAMAT</th>
                                                <th>KOTA</th>
                                                <th>PENGIRIMAN</th>
                                                <th>NO ORDER</th>
                                                <th>STATUS</th>
                                                <th>ACTION</th> 
                                            </tr>
                                        </thead>
                                        <tbody>
                                          <?php 
                                            $No = 0;
                                            foreach ($row as $key => $vaData) { 
                                            ?>
                                          <tr>
                                            <td><?= ++$No?></td>
                                            <td><strong><?=$vaData['no_faktur']?></strong></td>
                                            <td><strong><?=$vaData['nama_apotek']?></strong></td>
                                            <td><?=$vaData['alamat']?></td>
                                            <td><?=$vaData['kota']?></td>
                                            <td><strong><?=$vaData['jam_kirim']?> - <?=$vaData['tanggal_kirim']?><strong></td>
                                            <td><strong>#<?=$vaData['id_booking']?></strong></td>
                                            <td>
                                              <?php if($vaData['status_bayar'] == '1'){?>
                                              <strong>KREDIT</strong>
                                              <?php } elseif($vaData['status_bayar'] == '2'){?>
                                              <strong>COD</strong>
                                              <?php } else {?>
                                              <?=$vaData['status_bayar']?>
                                              <?php } ?>
                                            </td>
                                            <td><a class="btn btn-danger btn-flat"  title="Hapus Data" 
                                           onclick="if(confirm('Apakah anda yakin akah menghapus data Faktur?'))
                                            { window.location.href='<?=base_url()?>Halaman_Act/order_pengiriman/hapus/<?=$vaData['id_faktur']?>'}">
                                            <i class="fa fa-trash-o"></i>
                                          </a></td>
                                          </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>
                        </div>        
                      </div>

                </div>
                </div>
            </div>
            </form>
        </div>
        <script type="text/javascript">
          <?php echo $jsArray; ?>  
          function changeValue(id){  
            document.getElementById('cAlamat').value = jason[id].alamat;
            document.getElementById('cKota').value = jason[id].kota; 
            
          };
        </script>