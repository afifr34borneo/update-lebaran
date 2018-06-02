<h3 align="CENTER">PENGIRIMAN TANGGAL <?= $akhir ?> SAMPAI TANGGAL <?= $awal ?></h3>

<table width="100%" border="1" cellpadding="2" cellspacing="0">
    <tr style="background-color:#C0C0C0">
      <td align="center" width="4%">#</td>
      <td align="center" width="8%">NO ORDER</td>
      <td align="center" width="8%">FAKTUR</td>
      <td align="center" width="30%">PENERIMA</td>
      <td align="center" width="8%">STATUS</td>
      <td align="center" width="8%">KOLI</td>
      <td align="center" width="20%">KETERANGAN</td>
      
    </tr>
    <?php 
    $no = 0;
    foreach ($row as $key => $vaPaket){ 
    ?>
    <tr>
      <td align="center"><?=++$no?></td>
      <td align="center">#<?=$vaPaket['id_booking']?></td>
      <td align="center"><?=$vaPaket['no_faktur']?></td>
      <td>
        NAMA : <strong><?=$vaPaket['nama_apotek']?></strong><br>
        ALAMAT : <strong><?=$vaPaket['alamat']?></stong><br>
        TELEPON : <strong><?=$vaPaket['telepon']?></strong> 
      </td>
      <td align="center">
        <?=$vaPaket['status_bayar']?>
      </td>
      <td align="center"> <?=$vaPaket['koli']?> KOLI</td>
      <td align="center"></strong><?=$vaPaket['keterangan']?></td>
      
    </tr>
    <?php } ?>
  </table>