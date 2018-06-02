<link href="<?=base_url()?>assets/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<h4><span style='color:#2b50a3'><strong>Paket Belum Di PICKED UP</strong></span> <span style='color:#ff7f12'></span></h4>
<form id="myForm" method="post" enctype="multipart/form-data">    
<table class="table table-striped table-bordered table-hover dataTables-example">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>No Resi</th>
                          <th>Tgl Berangkat</th>
                          <th>Jam</th>
                          <th>PBF</th>
                          <th>Penerima</th>
                          <th>Alamat Penerima</th>
                          <td align="center"><strong>Action</strong></td> 
                        </tr>
                      </thead>
                      <tbody>
                      <?php $no = 0; foreach($paket as $vaData){ ?>
                          <tr>
                          <td><?php echo ++$no ?></td>
                          <td><?php echo $vaData['no_faktur'] ?></td>
                          <input type="hidden" name="cIdWowPak" id="cIdWowPak" value="<?php echo $vaData['id_status'] ?>">
                          <input type="hidden" name="cIdJadwal" id="cIdJadwal" value="<?php echo $this->session->userdata('idpaket') ?>">
                          <td><?php echo $vaData['tanggal_kirim'] ?></td>
                          <td><?php echo $vaData['jam_kirim'] ?></td>
                          <td><?php echo $vaData['nama'] ?></td>
                          <td><?php echo $vaData['nama_apotek'] ?></td>
                          <td><?php echo $vaData['alamat'] ?></td>
                          <td align="center">
                           <input type="checkbox" name="cKirim" 
                            value="<?php echo $vaData['id_status']?>" >
                          </td>
                        </tr>
                      <?php } ?>
                      </tbody>
                      
                    </table>
                    <button type="button" id="act" onclick="return SaveData();" 
                    class="btn btn-primary btn-flat" data-dismiss="modal"><i class="fa fa-save"></i> 
                    Add
                    </button>  
                  </form>
<script src="<?=base_url()?>assets/js/plugins/dataTables/datatables.min.js"></script>
<script src="<?php echo base_url()?>assets/js/jquery.dataTables.bootstrap.min.js"></script>       
<script type="text/javascript">
  $(document).ready(function(){
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                   

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });
  $('#4IDE-Datatables').dataTable();
</script>
<script type='text/javascript'>

function SaveData(){
   
    var cPenumpang      = $('#cIdWowPen').val();
    var cIdJadwal       = $('#cIdJadwal').val();
    var cKirim          = $('input[name=cKirim]:checked').map(function(){
                              return $(this).val();
                            }).get();
  
              $.ajax({
                  type: "POST",
                  data:"penumpang="+cPenumpang+
                       "&idjadwal="+cIdJadwal+
                       "&kirim="+cKirim,
                  url: "<?php echo site_url('Administrator_Act/input_sp_paket/simpan')?>",
                  cache: false,
                  success:function(msg){
                    $.gritter.add({
                          title: 'Notifikasi Sukses',
                          text:  'Paket Sukses Ditambahkan',
                          class_name: 'gritter-info gritter-center' ,
                          time:1000
                      });
                    
                    
                  }
              });
           
       
  };

</script>

