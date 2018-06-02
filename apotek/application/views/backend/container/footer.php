 <div class="footer">
            <div class="pull-right">
                <strong><?=$this->session->userdata('nama')?></strong>.
            </div>
            <div>
                <strong>Copyright</strong> TIREX Powered By Tirta Jaya Travel &copy; 1978 - <?=date("Y")?>
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
    <!-- DataTables -->
    <script src="<?=base_url()?>assets/js/plugins/dataTables/datatables.min.js"></script>
     <!-- Select2 -->
    <script src="<?=base_url()?>assets/js/plugins/select2/select2.full.min.js"></script>
    <!-- TouchSpin -->
    <script src="<?=base_url()?>assets/js/plugins/touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Data picker -->
    <script type="text/javascript" src="<?=base_url()?>assets/js/datepicker/js/moment.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/datepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="<?=base_url()?>assets/js/datepicker/js/bootstrap-datetimepicker.id.js"></script>
     <!-- Typehead -->
    <script src="<?=base_url()?>assets/js/plugins/typehead/bootstrap3-typeahead.min.js"></script>
    <script src="<?php echo base_url()?>assets/js/plugins/toastr/toastr.min.js"></script>

    <script src="<?php echo base_url()?>assets/js/bootbox.min.js"></script>
    <script>
        $(document).ready(function(){
            
           

            $('.dataTables').DataTable({
                pageLength: 10,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

            $(".select").select2();

            $(".touchspin1").TouchSpin({
                buttondown_class: 'btn btn-white',
                buttonup_class: 'btn btn-white',
                step: 1000,
                min: 0,
                max: 10000000,
            });

            $(".qty").TouchSpin({
                buttondown_class: 'btn btn-white',
                buttonup_class: 'btn btn-white',
                step: 1,
                min: 0,
                max: 100,
            });

            $('.datetimepicker').datetimepicker({
                  language:'in',
                  format:'DD-MM-YYYY'  
             });
            

        });

    </script>
     <?php if ($action == "I") { ?>
            <script type="text/javascript">
              setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.success('Data Berhasil Di Simpan');
                }, 1300);
            </script>
          <?php }elseif($action == "U"){ ?>
            <script type="text/javascript">
             setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.info('Data Berhasil Di Update');
                }, 1300);
            </script>
            <?php }elseif($action == "D"){  ?>
            <script type="text/javascript">
              setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown'
                };
                toastr.error('Data Berhasil Di Hapus');
                }, 1300);
            </script>
            <?php }?>

<!--Start of Tawk.to Script-->

<!--End of Tawk.to Script-->

</body>

</html>
