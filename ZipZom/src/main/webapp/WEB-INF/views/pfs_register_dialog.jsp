<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZipZom</title>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Select2 -->
  <link rel="stylesheet" href="./resources/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="./resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="./resources/plugins/daterangepicker/daterangepicker.css">
  <!-- datepicker -->
  <link rel="stylesheet" href="./resources/plugins/datepicker/css/datepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css?after">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="./resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="./resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="./resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="./resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="./resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  
</head>
<body>
<!-- 44라인 아파트, 320라인 오피스텔, 596라인 다세대/빌라, 872라인 다가구,단독 -->

<!-- dialog -->
<div class="modal fade" id="modal-xl">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<!-- modal 헤더 -->
			<div class="modal-header">
				<!-- modal 머릿말 -->
				<h4 class="modal-title">신규 매물 등록</h4>
					<!-- modal창 닫기 버튼 -->
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                	<span aria-hidden="true">&times;</span>
              		</button>
            </div>
            
            <!-- modal 바디 -->
            <div class="modal-body" style="font-family: 'Helvetica', sans-serif; color: #085ee4; font-weight: bold;">
	            <div class="card card-primary card-outline card-outline-tabs">
					<!-- 카드 헤더 -->
					<div class="card-header p-0 border-bottom-0">
						<ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">아파트</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-four-officetel-tab" data-toggle="pill" href="#custom-tabs-four-officetel" role="tab" aria-controls="custom-tabs-four-officetel" aria-selected="false">오피스텔</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-four-dasede-tab" data-toggle="pill" href="#custom-tabs-four-dasede" role="tab" aria-controls="custom-tabs-four-dasede" aria-selected="false">다세대/빌라</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="custom-tabs-four-dagagu-tab" data-toggle="pill" href="#custom-tabs-four-dagagu" role="tab" aria-controls="custom-tabs-four-dagagu" aria-selected="false">다가구/단독</a>
							</li>
						</ul>
					</div>
					
					<!-- 카드 바디 -->
					<div class="card-body">
	                	<div class="tab-content" id="custom-tabs-four-tabContent" style="font-family: 'Helvetica', sans-serif; font-weight: bold;">
							<!-- 아파트 탭 시작 -->
							<jsp:include page = "./pfs_register_dialog_apt.jsp" flush = "false"/>
							
							<!-- 오피스텔 탭 시작 -->
							<jsp:include page = "./pfs_register_dialog_officetel.jsp" flush = "false"/>
						
							<!-- 다세대 탭 시작 -->
							<jsp:include page = "./pfs_register_dialog_dasede.jsp" flush = "false"/>
						
							<!-- 다가구 탭 시작 -->
							<jsp:include page = "./pfs_register_dialog_dagagu.jsp" flush = "false"/>  
						</div>
					</div>
				</div>

			<!-- 카드 바디 -->
            </div>          
        </div>
	</div>
</div>
        

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="./resources/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="./resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="./resources/plugins/moment/moment.min.js"></script>
<script src="./resources/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="./resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- date-range-picker -->
<script src="./resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- date-picker -->
<script type="text/javascript"  src="./resources/plugins/datepicker/js/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="./resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="./resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="./resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="./resources/js/demo.js"></script>
<!-- DataTables -->
<script src="./resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="./resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });
    
    //Date picker
    $('#moveSchedule').datepicker()
    
    //Date range picker1
    $('#reservation1').daterangepicker()
    //Date range picker2
    $('#reservation2').daterangepicker()
    
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      locale: {
        format: 'MM/DD/YYYY hh:mm A'
      }
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Timepicker
    $('#timepicker').datetimepicker({
      format: 'LT'
    })
    
    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    });

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    });

  })
</script>

</body>
</html>