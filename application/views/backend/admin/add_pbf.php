<?php 
  if($action == 'edit') {
     foreach ($field as $column) {
      $cIdPbf          = $column['id_pbf'];
      $cNama           = $column['nama'];
      $cAlamat         = $column['alamat'];
      $cTelepon        = $column['telepon'];
     }
      $cIconButton    =   "fa fa-refresh";
      $cValueButton   =   "Update Data"; 
      $cAction        =   "ubah/$cIdPbf";
    }else{
        $cIdPbf          = "";
        $cNama           = "";
        $cAlamat         = "";
        $cTelepon        = "";
        $cUsername       = "";
        $cPassword       = "";
        $cEmail          = "";
        $cIconButton     = "fa fa-save";
        $cValueButton    = "Save Data";
        $cAction         =  "simpan" ;  
    }
  ?>
  <div class="wrapper wrapper-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                           DATA USER PBF
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NAMA PBF</th>
                                                <th>ALAMAT</th>
                                                <th>TELEPON</th>
                                                <th>USERNAME</th>
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
                                            <td><strong><?=$vaData['nama']?></strong></td>
                                            <td><strong><?=$vaData['alamat']?></strong></td>
                                            <td><?=$vaData['telepon']?></td>
                                            <td><?=$vaData['username']?></td>
                                            
                                            <td><a class="btn btn-danger btn-flat"  title="Hapus Data" 
                                           onclick="if(confirm('Apakah anda yakin akah menghapus data Faktur?'))
                                            { window.location.href='<?=base_url()?>Halaman_Act/pbf/hapus/<?=$vaData['id_pbf']?>'}">
                                            <i class="fa fa-trash-o"></i>
                                          </a></td>
                                          </tr>
                                          <?php } ?>
                                        </tbody>
                                    </table>
                        </div>        
                      </div>
                        
                    <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">Input PBF</span>
                            
                            <h5>INPUT PBF</h5> 
                        </div>
                        <div class="ibox-content">
                        <form type="multipart/form-data" 
                              method="post"
                              action="<?=base_url()?>Administrator_Act/input_pbf/<?=$cAction?>" 
                              >
                                <div class="row">
                                <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">Nama PBF</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-credit-card"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cNama" 
                                                     id="cNama"
                                                     placeholder="NAMA PBF" 
                                                     class="form-control"  
                                                     value="<?=$cNama?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Nama PBF')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">Telepon</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-phone"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cTelepon" 
                                                     id="cTelepon"
                                                     placeholder="TELEPON" 
                                                     class="form-control"  
                                                     value="<?=$cTelepon?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan No Telepon')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">Email</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-envelope"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cEmail" 
                                                     id="cEmail"
                                                     placeholder="Email" 
                                                     class="form-control"  
                                                     value="<?=$cEmail?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Email')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-12 col-md-12">
                                    <div class="form-group">  
                                        <label for="cContent">ALAMAT</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-home"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cAlamat" 
                                                     id="cAlamat"
                                                     placeholder="Alamat PBF" 
                                                     class="form-control"  
                                                     value="<?=$cAlamat?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Alamat PBF')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">Username</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-user"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cUsername" 
                                                     id="cUsername"
                                                     placeholder="Username" 
                                                     class="form-control"  
                                                     value="<?=$cUsername?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Username')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
                                  <div class="col-sm-5 col-md-5">
                                    <div class="form-group">  
                                        <label for="cContent">Password</label>   
                                              <div class="input-group m-b">
                                              <span class="input-group-addon"> 
                                                <i class="fa fa-key"></i>
                                              </span> 
                                              <input type="Text" 
                                                     name="cPassword" 
                                                     id="cPassword"
                                                     placeholder="Password" 
                                                     class="form-control"  
                                                     value="<?=$cPassword?>" 
                                                     oninvalid="this.setCustomValidity('Inputkan Password')"
                                                     oninput="setCustomValidity('')"
                                                     required>
                                              </div>

                                    </div>
                                  </div>
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

                    

                </div>
                </div>
            </div>
            </form>
        </div>