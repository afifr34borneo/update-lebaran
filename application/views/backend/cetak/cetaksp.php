<html>
<head>
<title>TIREX Powered By Tirta Jaya Travel - Print SP Paket</title>
</head>

<body style="background-color:#FFFFFF;font-family:Arial;color:#000000;font-size:small;" >
<br>
<div id="form_container">


	<h1 align="center">SURAT PENGAMBILAN ORDER PBF</h1>
	
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
    $no="0";
    foreach ($row as $key => $vaPaket){ 
    ?>
    <tr>
      <td align="center"><?=++$no?></td>
      <td align="center">#<?=$vaPaket['id_booking']?></td>
      <td align="center"><?=$vaPaket['no_faktur']?></td>
      <td>
        NAMA : <strong><?=$vaPaket['nama_apotek']?></strong><br>
        ALAMAT : <strong><?=$vaPaket['alamat']?></stong><br>
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
        PBF
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
