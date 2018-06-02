<form 
	role="form" 
	data-toggle="validator" 
	id="Barang" 
	method="post" >
	<table class="table table-striped table-bordered table-hover" style="font-size: 13px">
	<thead>
	  <tr>
	    <th>No</th>
	    <th>No Faktur</th>
	    <th>Tgl Kirim</th>
	    <th>Jam</th>
	    <th>PBF</th>
	    <th>Nama Penerima</th>
	    <th>Alamat</th>
	    <td align="center"><strong>Action</strong></td> 
	  </tr>
	</thead>
	<tbody>
	<?php 

	  $no = 0; 
	  foreach ($paket as $key => $vaData){ 
	  	$cJadwal = $vaData['id_status'];
	?>
	    <tr>
          <td><?php echo ++$no ?></td>
          <td><?php echo $vaData['no_faktur'] ?></td>
          <td><?php echo $vaData['tanggal_kirim'] ?></td>
          <td><?php echo $vaData['jam_kirim'] ?></td>
          <td><?php echo $vaData['namapbf'] ?></td>
          <td><?php echo $vaData['nama_apotek'] ?></td>
          <td><?php echo $vaData['alamat'] ?></td>
          <td align="center" width="10%">
          	<button type="button" id="act"
          			onclick="return HapusData(<?php echo $vaData['id_status'] ?>);"
          			class="btn btn-primary btn-flat"><i class="fa fa-trash"></i> 
			</button> 									                  
          </td>
		</tr>
	<?php } ?>
	</tbody>
</table>
	<a class="btn btn-flat btn-primary" target="blank" href="<?=base_url()?>Administrator/CetakSpKirim/">
	<i class="fa fa-print"></i> Cetak
	</a>
	</form>
	<script type="text/javascript">
	function HapusData(id){
	$.ajax({
	    type: "GET",  
	    url: "<?php echo site_url('Administrator_Act/hapus_sp_kirim/')?>/"+id,
	    cache: false,
	    success:function(msg){
					$.gritter.add({
					    title: 'Notifikasi Sukses',
					    text:  'Data Sukses Dihapus',
					    class_name: 'gritter-danger gritter-center' 
					});
																	   
	    }
	});
	}
	</script>