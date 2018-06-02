<div class="wrapper wrapper-content">
   	<div class="container">
        <div class="row">
            <div class="col-md-3">
              <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                          <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <h5>Cetak Faktur</h5> 
                        </div>
                        <div class="ibox-content" align="left">
                          <form type="multipart/form-data" 
                                method="post"
                                action="<?=base_url()?>Halaman/CetakSP/"
                                target="_blank">
                              <div class="form-group">  
                                  <label for="cContent">Pilih Jam</label> 
                                    <div class="input-group m-b">
                                      <span class="input-group-addon"> 
                                        <i class="fa fa-calendar"></i>
                                      </span>   
                                     <select name="cJam" class="form-control">
                                       <option value="11:00">11:00</option>
                                       <option value="13.00">13:00</option>
                                       <option value="15.00">15:00</option>
                                     </select>
                                      </div>
                                      <button type="submit" id="act" 
                                        class="btn btn-danger">
                                        <i class="fa fa-print" align="right"></i> 
                                        Cetak
                                </button>
                              </div>
                          </form>
                        </div>
                    </div>

            </div>
            <div class="col-md-9">
            	<div class="panel panel-danger">
                        <div class="panel-heading">
                           DATA PENGIRIMAN PBF <?=$this->session->userdata('nama_pbf')?>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-bordered table-hover dataTables"
                                  style="font-size: 12px" >
                                        <thead>
                                            <tr>
                                                <th width="2%">NO</th>
                                                <th>NO ORDER</th>
                                                <th>PBF</th>
                                                <th>EMAIL</th>
                                                <th>TANGGAL</th>
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
                                            <td>#<?=$vaData['id_booking']?></td>
                                            <td><?=$this->session->userdata('nama_pbf')?></td>
                                            <td><?=$this->session->userdata('email_pbf')?></td>
                                            <td><?=$vaData['tanggal_kirim']?></td>
                                            <td><a class="btn btn-danger btn-flat"  title="View Order <?=$vaData['id_status']?>" href="<?=base_url()?>Halaman_Act/cetak_perorder/<?=$vaData['id_status']?>"
                                            target="_blank">
                                            <i class="fa fa-print"></i> Cetak
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
</div>
