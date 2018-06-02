<div class="wrapper wrapper-content">
   	<div class="container">
        <div class="row">
            <div class="col-md-12">
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
                                            <td><a class="btn btn-danger btn-flat"  title="View Order <?=$vaData['id_status']?>" onclick="return viewData(<?=$vaData['id_status']?>)">
                                            <i class="fa fa-eye"></i>
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
<div class="col-sm-12">
      <div class="form-group">
        <div class="modal fade bs-example-modal-lg" id="modal-paket" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" style="border-radius:0px;width:80%;">
            <div class="modal-content">
              <div class="modal-header" style="background-color:#e72a2a">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel" style="color:white"><strong>View Order</h4>
              </div>
              <div class="modal-body">
              
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
      function viewData(id){
        $("#modal-paket").modal('show');
          $.ajax({
           type: "GET",
           url: "<?php echo base_url()?>Halaman/view_order/"+id,
           cache: false,
            beforeSend:function(){
              $(".modal-body").html("<div align='center'><img  width='80' height=80'   src='<?php echo base_url()?>assets/img/loading.gif' /></div>");
            },
            success:function(msg){
              $(".modal-body").html(msg);
            }
         });
        }  
      </script>