<html>
<head>
<title>TIREX Powered By Tirta Jaya Travel - Print SP Paket</title>
</head>

<body style="background-color:#FFFFFF;font-family:Arial;color:#000000;font-size:small;" >
<br>
<div id="form_container">

  <?php 
    $no = 0; 
    foreach ($row as $key => $vaData){ 
      $nama     = $vaData['nama'];
      $no_mbl   = $vaData['no_mobil'];
      $jam      = $vaData['jam_kirim'];
      $tanggal  = $vaData['tanggal_kirim'];
      $bayar    = $vaData['no_sp'] ;
    }
  ?>
	<font size="1"><?php echo $this->session->userdata('nama') ?> - <?php echo date("D")?>, <?php echo date("d-M-Y")?> <?php echo date('H:i:s') ?></font>

  <?php 
    $dataPbf = $this->model->code("SELECT * FROM pbf_v_order_sp WHERE no_sp = '".$bayar."' GROUP BY id_pbf");
    foreach ($dataPbf as $key => $vaData){ 
  ?>
	<h1 align="center">SURAT PENGAMBILAN ORDER PBF <?= strtoupper($vaData['namapbf'])?></h1>
  <h3 align="center">Alamat :  <?=$vaData['alamatpbf']?>   </h3>
	
  <table width="100%" border="0" cellpadding="1" cellspacing="0">
    <tr>
      <td align="left" width="20%">Kurir :&nbsp;&nbsp;<b><?php echo $nama ?></b></td>
      <td align="center" width="20%">Jam Ambil:&nbsp;&nbsp;<b><?php echo $jam ?></b></td>
      <td align="center" width="20%">Tanggal:&nbsp;&nbsp;<b><?php echo $tanggal ?></b></td>
      <td align="right" width="20%">No SP :&nbsp;&nbsp;<b><?php echo $bayar?></b></td> 
    </tr>
  </table>
  <table width="100%" border="1" cellpadding="2" cellspacing="0">
    <tr style="background-color:#C0C0C0">
      <td align="center" width="4%">#</td>
      <td align="center" width="8%">NO ORDER</td>
      <td align="center" width="8%">FAKTUR</td>
      <td align="center" width="30%">PENERIMA</td>
      <td align="center" width="8%">STATUS</td>
      <td align="center" width="8%">KOLI</td>
      <td align="center" width="8%">CHECKLIST</td>
      <td align="center" width="20%">KETERANGAN</td>
    </tr>
    <?php 
    $no = 0;
    $dataPaket = $this->model->code("SELECT * FROM pbf_v_order_sp WHERE no_sp = '".$bayar."' AND id_pbf = '".$vaData['id_pbf']."'");
    foreach ($dataPaket as $key => $vaPaket){ 
    ?>
    <tr>
      <td align="center"><?=++$no?></td>
      <td align="center">#<?=$vaPaket['id_booking']?></td>
      <td align="center"><?=$vaPaket['no_faktur']?></td>
      <td>
        NAMA : <strong><?=$vaPaket['nama_apotek']?></strong><br>
        ALAMAT : <strong><?=$vaPaket['alamat']?></stong><br>
        <!--<strong>TELEPON : </strong> <?=$vaPaket['telepon_apotek']?>-->
      </td>
      <td align="center">
        <?=$vaPaket['status_bayar']?>
      </td>
      <td align="center"> <?=$vaPaket['koli']?> KOLI</td>
      <td align="center"><input type="checkbox" name=""></td>
      <td align="center"></strong><?=$vaPaket['keterangan']?></td>
    </tr>
    <?php } ?>
  </table>
  <br><br>
  <table width="100%" align="center">
    <tr>
      <td>
        PBF <?=$vaData['namapbf']?>
      </td>
      <td align="right">
        KURIR 
      </td>
    </tr>
  </table>
  <br><br><br><br>
  <table width="100%" align="center">
    <tr>
      <td>
        ............................
      </td>
      <td align="right">
         ............................
      </td>
    </tr>
  </table>
  <?php } ?>