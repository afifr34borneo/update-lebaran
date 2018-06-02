<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
           <div class="col-md-12">

           		 <div class="ibox float-e-margins">
                        <div class="ibox-title panel-primary">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <span class="label label-primary pull-right">MONITOR</span><span class="label label-success pull-right"><?=$this->session->userdata('nama')?></span>
                            <h5>MONITORING PAKET PBF <?=$this->session->userdata('nama_pbf')?></h5> 
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
			 $('#responsecontainer_mau').load('<?php echo base_url()?>Administrator/view_monitor/<?php echo $action?>');
		}, 1000);
	</script>