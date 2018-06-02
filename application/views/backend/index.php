                <div class="wrapper wrapper-content">
            <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-success pull-right"><?=date("M-y")?></span>
                            <h5>Total Order</h5>
                        </div>
                        <div class="ibox-content">
                            <h1 class="no-margins" align="right">200</h1>
                            <div class="stat-percent font-bold text-success"><small>faktur</small></div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-info pull-right"><?=date("M-y")?></span>
                            <h5>Terkirim</h5>
                        </div>
                        <div class="ibox-content">
                                    <h1 class="no-margins" align="right">192</h1>
                                    <div class="stat-percent font-bold text-info"><small>Faktur</small></div>
                                    
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-danger pull-right"><?=date("M-y")?></span>
                            <h5>Proses</h5>
                        </div>
                        <div class="ibox-content">
                                    <h1 class="no-margins" align="right">6</h1>
                                    <div class="stat-percent font-bold text-danger"><small>Faktur</small></div>
                                    
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <span class="label label-warning pull-right"><?=date("M-y")?></span>
                            <h5>Pending</h5>
                        </div>
                        <div class="ibox-content">
                                    <h1 class="no-margins" align="right">2</h1>
                                    <div class="stat-percent font-bold text-warning"><small>faktur</small></div>
                                    
                        </div>
                    </div>
                </div>
            </div>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <div>
                                        <span class="pull-right text-right">
                                        <small>Rata - Rata Pengiriman Faktur</small>
                                            <br/>
                                            All Faktur: 200
                                        </span>
                                    <h3 class="font-bold no-margins">
                                        Rata - Rata Pengiriman Faktur Perbulan
                                    </h3>
                                    <small>Pengiriman Selama Bulan <?=date("M-y")?>.</small>
                                </div>

                                <div class="m-t-sm">

                                    <div class="row">
                                        <div class="col-md-8">
                                            <div>
                                            <canvas id="lineChart" height="114"></canvas>
                                            </div>

                                        </div>
                                        <div class="col-md-4">
                                            <ul class="stat-list m-t-lg">
                                                <li>
                                                    <h2 class="no-margins">192</h2>
                                                    <small>Pengiriman Terkirim</small>
                                                    <div class="progress progress-mini">
                                                        <div class="progress-bar" style="width: 48%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <h2 class="no-margins ">200</h2>
                                                    <small>Order Pengiriman</small>
                                                    <div class="progress progress-mini">
                                                        <div class="progress-bar" style="width: 60%;"></div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>

                                <div class="m-t-md">
                                    <small class="pull-right">
                                        <i class="fa fa-clock-o"> </i>
                                        Update on <?=date("d-m-Y")?>
                                    </small>
                                    <small>
                                        <strong>Analysis of sales:</strong> The value has been changed over time, and last month reached a level over $50,000.
                                    </small>
                                </div>

                            </div>
                        </div>
                    </div>
                    

                </div>


            </div>

        </div>
        <div class="footer">
            <div class="pull-right">
                <strong><?=$this->session->userdata('nama')?></strong>.
            </div>
            <div>
                <strong>Copyright</strong> TIREX Powered By Tirta Jaya Travel &copy; 1978 - <?=date("Y")?>
            </div>
        </div>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="<?=base_url()?>assets/js/jquery-3.1.1.min.js"></script>
    <script src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
    <script src="<?=base_url()?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?=base_url()?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<?=base_url()?>assets/js/inspinia.js"></script>
    <script src="<?=base_url()?>assets/js/plugins/pace/pace.min.js"></script>

    <!-- Flot -->
    <script src="<?=base_url()?>assets/js/plugins/flot/jquery.flot.js"></script>
    <script src="<?=base_url()?>assets/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="<?=base_url()?>assets/js/plugins/flot/jquery.flot.resize.js"></script>

    <!-- ChartJS-->
    <script src="<?=base_url()?>assets/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Peity -->
    <script src="<?=base_url()?>assets/js/plugins/peity/jquery.peity.min.js"></script>
    <!-- Peity demo -->
    <script src="<?=base_url()?>assets/js/demo/peity-demo.js"></script>


    <script>
        $(document).ready(function() {



            var lineData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                    {
                        label: "Order Pengiriman",
                        backgroundColor: "#e66767",
                        borderColor: "#e72a2a",
                        pointBackgroundColor: "#e72a2a",
                        pointBorderColor: "#fff",
                        data: [48, 48, 60, 39, 56, 37, 30]
                    },
                    {
                        label: "Order Terkirim",
                        backgroundColor: "rgba(220,220,220,0.5)",
                        borderColor: "rgba(220,220,220,1)",
                        pointBackgroundColor: "rgba(220,220,220,1)",
                        pointBorderColor: "#fff",
                        data: [65, 59, 40, 51, 36, 25, 40]
                    }
                ]
            };

            var lineOptions = {
                responsive: true
            };


            var ctx = document.getElementById("lineChart").getContext("2d");
            new Chart(ctx, {type: 'line', data: lineData, options:lineOptions});

        });
    </script>
    
</body>

</html>
