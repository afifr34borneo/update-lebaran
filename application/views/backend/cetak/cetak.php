<link href="<?=base_url()?>assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<?=base_url()?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="<?=base_url()?>assets/css/animate.css" rel="stylesheet">
<link href="<?=base_url()?>assets/css/style.css" rel="stylesheet">
<link href="<?=base_url()?>assets/css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<div class="col-md-12">
<div class="row">
            <div class="col-lg-12">
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="ibox-content p-xl">
                            <div class="row">
                                <div class="col-sm-6">
                                    <img src="<?=base_url()?>assets/login/img/logo-2.png" alt="" style="width: 37%;" />
                                </div>

                                <div class="col-sm-6 text-right">
                                    <h4>Tanggal Order</h4>
                                    <h4 class="text-navy"><?=$tanggal?></h4>
                                    <span>PBF:</span>
                                    <address>
                                        <strong><?=$this->session->userdata('nama_pbf')?></strong>
                                    </address>
                                    
                                </div>
                            </div>

                            <div class="table-responsive m-t">
                                <table class="table invoice-table">
                                    <thead>
                                    <tr>
                                        <th width="2%">NO</th>
                                        <th>NO FAKTUR</th>
                                        <th>PENERIMA</th>
                                        <th>ALAMAT</th>
                                        <th>KOTA</th>
                                        <th>PENGIRIMAN</th>
                                        <th>NO ORDER</th>
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
                                            <td><?=$vaData['id_booking']?></td>
                                          </tr>
                                          <?php } ?>
                                    </tbody>
                                </table>
                            </div><!-- /table-responsive -->
                            <div class="well m-t"><strong>Comments</strong>
                                It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less
                            </div>
                        </div>
                </div>
            </div>
        </div>


</div>