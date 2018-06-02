<!-- //Begin Footer Content -->
	</div>
	</div>
	</div>
	<div id="panel-menu" class="side-menu panel panel-left">
		<div class="content">
			<div class="panel-left__top clearfix text-center">
				<div class="panel-logo">
					<a href="<?=site_url('Website/Halaman/Index')?>"><img src="<?=base_url()?>assets/image/logo.png" title="Your Store" alt="Your Store"></a>
				</div>
				<form action="<?=site_url('Website/Halaman/proses_search/')?>" method="post">
				<div class="panel-search">
					<div id="search" class="input-group">
						<input type="hidden" name="pilih" value="1">
						<input type="text" name="cari" value="" placeholder="Search" class="form-control input-lg">
						<span class="input-group-btn">
							<button type="submit" class="btn btn-default btn-link"><i class="fa fa-search"></i></button>
						  </span>
					</div>
				</div>
				</form>
			</div>
			<?php 
				foreach ($menu as $key => $vaDatae){ 
			?>

			<div class="panel-left__midde">
				<div class="panel-group" id="panel-category" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab">
							<a href="<?=base_url()?>catalog/<?php echo $vaDatae['url']?>"><?php echo $vaDatae['kategori']?></a>
							<span class="head">
							<a class="pull-right accordion-toggle" data-toggle="collapse" data-parent="#panel-category" href="#panel-category1<?php echo $vaDatae['id_kategori']?>" aria-expanded="true"></a></span>
						</div>
						<div id="panel-category1<?php echo $vaDatae['id_kategori']?>" class="panel-collapse collapse " role="tabpanel">
							<ul>
								<?php 

                                            $sub = $this->model->ViewWhereAndKat('tm_kategori','id_kategori_parent',$vaDatae['id_kategori'],'status','1');

                                            foreach ($sub as $key => $vaData){ 

                                                     $parent = $this->model->ViewWhereAnd('tm_kategori','id_kategori',$vaDatae['id_kategori'],'status','1');

                                                    foreach ($parent as $key => $vaPar){ 

                                                        $urlpar = kategori($vaPar['url']);

                                                    }

                                        ?>
								<li>
									<a href="<?=base_url()?>katalog/<?php echo $urlpar ?>/<?php echo kategori($vaData['url'])?>"><?php echo $vaData['kategori']?></a>
								</li>
								<?php } ?>
							</ul>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
  
<!-- Include Libs & Plugins
============================================ -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="<?=base_url()?>assets/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/ratchet/ratchet.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/slick/slick.min.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/themejs/libs.js"></script>
<!-- Theme files
============================================ -->
<script type="text/javascript" src="<?=base_url()?>assets/js/mobile.js"></script>
<script type="text/javascript" src="<?=base_url()?>assets/js/themejs/addtocart.js"></script>
<script src="<?=base_url()?>assets/gritter/js/jquery.gritter.min.js"></script>
<script type="text/javascript"><!--
	$(document).ready(function() {
		$('.product-options li.radio').click(function(){
			$(this).addClass(function() {
				if($(this).hasClass("active")) return "";
				return "active";
			});
			$(this).siblings("li").removeClass("active");
			$(this).parent().find('.selected-option').html('<span class="label label-success">'+ $(this).find('img').data('original-title') +'</span>');
		})
		
		if(!$('.slider').hasClass('slick-initialized')) {
			$('.slider-for').slick({
				slidesToShow: 1,
				slidesToScroll: 1,
				fade: true,
				slideMargin: 10,
				arrows: false,
				infinite: true,
				asNavFor: '.slider-nav'
			});
			$('.slider-nav').slick({
			  slidesToShow: 4,
			  slidesToScroll: 1,
			  asNavFor: '.slider-for',
			  slideMargin: 10,
			  dots: false,
			  arrows: false,
			  centerMode: false,
			  focusOnSelect: true,
			
			});
		}
			
		
	});

//--></script>
</body>
</html>		