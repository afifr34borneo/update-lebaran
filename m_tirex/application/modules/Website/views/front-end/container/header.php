
<html lang="en">
<head>
	<title>TIREX</title>
	<meta charset="utf-8">
    <meta name="keywords" 
    	  content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />
   
	<!-- Mobile specific metas
	============================================ -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<!-- Favicon
	============================================ -->

    <link rel="apple-touch-icon-precomposed" href="<?=base_url()?>assets/image/logo.png">
    <link rel="shortcut icon" href="<?=base_url()?>assets/image/logo.png">
	
	<!-- Google web fonts
	============================================ -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<?=base_url()?>assets/css/bootstrap/css/bootstrap.min.css">
	<link href="<?=base_url()?>assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/js/ratchet/ratchet.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/js/slick/slick.css" rel="stylesheet">
    <link href="<?=base_url()?>assets/css/themecss/lib.css" rel="stylesheet">
	
	<!-- Theme CSS
	============================================ -->
	<link href="<?=base_url()?>assets/css/mobile.css" rel="stylesheet">
   

</head>

<body class="mobile-home ltr mobilelayout-1">
	<!-- Begin Main wrapper -->
    <div id="wrapper" >
		
		<!-- Begin Bar Tab -->
		<nav class="bar bar-tab">
			<a class="tab-item " href="<?php echo base_url()?>Website/Halaman/index" data-transition="slide-in">
				<span class="icon icon-home"></span>
				<span class="tab-label">Home</span>
			</a>
			<a class="tab-item" href="<?php echo base_url()?>Website/Halaman/pickup" data-transition="slide-in">
				<span class="icon icon-download"></span>
				<span class="tab-label">PICKUP</span>
			</a>
			<a class="tab-item" href="<?php echo base_url()?>Website/Halaman/sp" data-transition="slide-in">
				<span class="icon icon-check"></span>
				<span class="tab-label">KIRIM</span>
			</a>
			<a class="tab-item" href="<?php echo base_url()?>Website/Halaman/history" data-transition="slide-in">
				<span class="icon icon-search"></span>
				<span class="tab-label">HISTORY</span>
			</a>
			<?php if ($this->session->userdata('nama') != ""){ ?> 
			<a class="tab-item" href="<?=site_url('Website/Halaman_Act/logout')?>" data-transition="slide-in">
				<span class="icon icon-person"></span>
				<span class="tab-label">Logout</span>
			</a>
			<?php }else{?>
			<a class="tab-item" href="<?=site_url('Website/Halaman/signin')?>" data-transition="slide-in">
				<span class="icon icon-person"></span>
				<span class="tab-label">Login</span>
			</a>
			<?php } ?>
		</nav>
		<div id="popover" class="popover fade bottom in right">
			<ul class="table-view">
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/index"> Profile </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/history"> History Belanja </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/wallets"> Wallets </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/konfirmasiPembayaran"> Konfirmasi Pembayaran </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/ProdukReview"> Produk Review </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/pusat_resolusi"> Pusat Resolusi </a></li>
				<li class="table-view-cell"><a class="tab-item" href="<?=base_url()?>Website/Pengunjung/logout"> Logout </a></li>
			</ul>
		</div>
		
		<!-- //End Bar Tab -->
		
		<!-- Begin Bar Nav -->
		<header class="bar bar-nav bar-navhome typeheader-1">
			<div class="row navbar-bar ">
				<!-- LOGO -->
				<div class="navbar-menu col-xs-2">
					<a class="toggle-panel" href="#panel-menu">
						<span class="icon-bar"></span>
						<span class="icon-bar bar2"></span>
						<span class="icon-bar"></span>
					</a>
				</div>
				<div class="navbar-search col-xs-7">
					<!-- BOX CONTENT SEARCH -->
					<form action="<?=site_url('Website/Halaman/proses_search/')?>" method="post">
					<div id="search-bar" class="input-group">
					<input type="hidden" name="pilih" value="1">
					<input type="text" name="cari" value="" placeholder="Pencarian...." class="form-control input-lg">
						<span class="input-group-btn">
							<button type="submit" class="btn btn-default btn-link">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					</form>
				</div>
			</div>
		</header>
		