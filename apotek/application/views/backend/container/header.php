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
    <script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/5a2df6ec5d3202175d9b773a/default';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>

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
                        <a href="<?=base_url()?>"><i class="fa fa-home"></i> DASHBOARD</a>
                    </li>
                    <li class="dropdown <?php if($link == 'Monitor'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="<?=base_url()?>Halaman/Monitor" class="dropdown-toggle" > <i class="fa fa-tv"></i> MONITOR ORDER</a>
                    </li>
                    <li class="dropdown <?php if($link == 'Cetak'){ ?>active <?php } ?>">
                        <a aria-expanded="false" role="button" href="<?=base_url()?>Halaman/Cetak"> <i class="fa fa-print"></i> CETAK ORDER</a>
                    </li>
                    
                </ul>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <a href="<?=base_url()?>Halaman_Act/logout">
                            <i class="fa fa-user"></i> Hai <?=$this->session->userdata('nama')?>
                        </a>
                        
                    </li>
                    <li>
                        <a href="<?=base_url()?>Halaman_Act/logout">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        </div>