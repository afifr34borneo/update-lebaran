<div class="content">
<header class="bar bar-nav ">
			<h1 class="title">TIREX KURIR LOGIN</h1>
		</header>

			<!-- //Begin Main Content -->
			<div class="container page-sitemap">
				<div class="row">
					<div id="content" class="col-xs-12">
						<div class="tab-account">
							<div class="icon-custom">
								<img src="<?=base_url()?>assets/image/logo-2.png" style="    width: 55%;">
							</div>
							<ul class="nav nav-tabs segmented-control">
								<li class="active"><a class="platform-switch control-item active" data-toggle="tab" href="#home" aria-expanded="true">Login</a> </li>
							</ul>

							<div class="tab-content">
								<div id="home" class="tab-pane form-login fade active in">


									<div class="well col-sm-12">
										<form id="login" method="post" action="<?=site_url('Website/Halaman_Act/signin')?>">
											<div class="form-group form-user">
												<label class="control-label font-ct" for="input-email">Username</label>
												<input type="text"  value="" placeholder="Username"  name="username" id="cUsername" class="form-control">
											</div>
											<div class="form-group form-pw">
												<label class="control-label font-ct" for="input-password">Password</label>
												<input type="password" name="password" value="" placeholder="Password" id="cPassword" class="form-control">
											</div>

											<input type="submit" value="Login" class="btn btn-primary pull-left">

										</form>
									</div>

								</div>
								<div id="menu1" class="tab-pane fade in">
									<div class="well col-sm-12">
										<h2 class="hidden">Member Baru</h2>
										<p><strong class="font-ct">Register Akun</strong>
										</p>
										<p style="margin-bottom: 2em;">Dengan Mendaftar sebagai member mausaya.com anda akan mendapatkan berbagai kemudahan yang anda rasakan ketika bertransaksi di market place mausaya.com</p>
										<a href="<?=base_url()?>Website/Pengunjung/register" class="btn btn-sn">Continue</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			<script type="text/javascript">

			function login(){

				cUsername	=	$('#username_login').val() ;

				cPassword	=	$('#password_login').val() ;

				 if(cUsername == "" ){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Username Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }else if(cPassword == ""){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Password Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }



				 $.ajax({

		         type: "POST",

		         data  :"user="+cUsername+

		               	"&pass="+cPassword,  

		                url: "<?=site_url('Pengunjung/signin')?>",

		                cache: false,

		                success:function(msg){

		                  

		                  if(msg == 'sukses'){

		                  	if($.gritter.add({

				              title: 'Informasi',

				              text: '<p style="color:white">Login Berhasil</p>',

				              class_name: 'gritter-info gritter-center' 

				            })){

		                  	window.location.href='<?=site_url('Website/Halaman/cart')?>';

		                  	}

		                  }else{

		                  	$.gritter.add({

				              title: 'Informasi',

				              text: '<p style="color:white">Login Gagal ,Password Salah</p>',

				              class_name: 'gritter-info gritter-center' 

				            });

		                  }

		                }

	            });

			}



			function register(){

				cUsername	=	$('#username_daftar').val() ;

				cNama		=	$('#nama_daftar').val() ;

				cPassword	=	$('#password_daftar').val() ;

				cRePassword =   $('#repassword_daftar').val() ;

				 if(cUsername == "" ){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Username Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }else if(cPassword == ""){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Password Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }else if(cNama == ""){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Nama Masih Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }else if(cRePassword == ""){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Re Password Kosong</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }



				 if(cPassword != cRePassword){

				 	$.gritter.add({

		              title: 'Informasi',

		              text: '<p style="color:white">Password Tidak Sama</p>',

		              class_name: 'gritter-info gritter-center' 

		            });

		            return false ;

				 }



				 $.ajax({

		         type: "POST",

		         data  :"user="+cUsername+

		         		"&nama="+cNama+

		               	"&pass="+cPassword,  

		                url: "<?=site_url('Master_Act/register')?>",

		                cache: false,

		                success:function(msg){

		                  	if($.gritter.add({

				              title: 'Informasi',

				              text: '<p style="color:white">Berhasil Daftar</p>',

				              class_name: 'gritter-info gritter-center' 

				            })){

		                  	window.location.href='<?=site_url('Halaman/Website/login')?>';

		                  	}	

		                }

	            });





			}

		</script>