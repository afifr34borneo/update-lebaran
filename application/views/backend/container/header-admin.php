<?php 
 if($this->session->userdata('isLogin') == '' ) {
      redirect(site_url('Halaman/signin'));
      }
?>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?=$title?> | Tirex Powered By Tirta Jaya Travel</title>

    <link href="<?=base_url()?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/css/animate.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/css/style.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="<?=base_url()?>assets/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
     <link href="<?=base_url()?>assets/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Select 2 -->
    <link href="<?=base_url()?>assets/css/plugins/select2/select2.min.css" rel="stylesheet">
    <!-- Touch Spin -->
    <link href="<?=base_url()?>assets/css/plugins/touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">
    <!-- Datepicker -->
    <link href="<?=base_url()?>assets/js/datepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet"> 


</head>

<body class="top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom white-bg">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>

            </div>
            <div class="navbar-collapse collapse" id="navbar">
                 <img src="<?=base_url()?>assets/login/img/logo-2.png" style="width: 12%;" align="left">
                <ul class="nav navbar-nav">
                	<li class="<?php if($link == 'index'){ ?>active <?php } ?>">
                        <a href="<?=base_url()?>Administrator/"><i class="fa fa-home"></i> DASHBOARD</a>
                    </li>
                    <li class="dropdown <?php if($link == 'order'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-windows"></i> JADWAL <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="<?=base_url()?>Administrator/surat_ambilorder"> <i class="fa fa-flag"></i> &nbsp; SP AMBIL ORDER</a></li>
                             <li><a href="<?=base_url()?>Administrator/surat_kirim"> <i class="fa fa-truck"></i> &nbsp; SP KIRIM APOTEK</a></li>
                        </ul>
                    </li>
                    <li class="dropdown <?php if($link == 'Monitor'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-windows"></i> MONITOR PENGIRIMAN <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <?php 
                            $mdt = $this->model->code("SELECT * FROM user_pbf ORDER BY nama ASC");
                            foreach ($mdt as $key => $vaData) {
                            ?>
                            <li><a href="<?=base_url()?>Administrator/Monitor/<?=$vaData['id_pbf']?>"> <i class="fa fa-flag"></i> &nbsp; MONITORING <?=$vaData['nama']?></a></li>
                            <?php } ?>
                        </ul>
                    </li>
                    
                    <li class="dropdown <?php if($link == 'Order'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="<?=base_url()?>Administrator/OrderMasuk"> <i class="fa fa-reorder"></i> ORDER MASUK</a>
                    </li>
                    <li class="dropdown <?php if($link == 'Users'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-users"></i> USER <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="<?=base_url()?>Administrator/add_pbf">Add PBF</a></li>
                            <li><a href="">Add Kurir</a></li>
                        </ul>
                    </li>
                     <li class="dropdown <?php if($link == 'report'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="<?=base_url()?>Administrator/report_pbf"> <i class="fa fa-reorder"></i> REPORT PBF</a>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <a href="<?=base_url()?>Halaman_Act/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        </div>