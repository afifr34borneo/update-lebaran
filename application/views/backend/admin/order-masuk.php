<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
           <div class="col-md-12">

           		 <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">ORDER</span><span class="label label-success pull-right">REALTIME</span>
                            <h5>ORDER REAL TIME PBF</h5> 
                        </div>
                        <div class="ibox-content">
                        	<div class="row" id="responsecontainer_mau">
		
							</div>
                        </div>
                </div>
                  
           </div>
        </div>
    </div>
</div>
	
    <script>
		var refreshId = setInterval(function()
		{
			 $('#responsecontainer_mau').load('<?php echo base_url()?>Administrator/view_order_real');
		}, 1000);
	</script>