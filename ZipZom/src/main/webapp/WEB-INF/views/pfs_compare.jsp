<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Zipzom - Realtor</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- jQuery UI -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="./resources/index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>


  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="./resources/index3.html" class="brand-link">
      <img src="./resources/img/zipzom_logo.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">ZipZom</span>
    </a>
    
	<!-- sidebar include -->
    <jsp:include page = "./sidebar.jsp" flush = "false"/>
   
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>매물 비교하기</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">매물 비교하기</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
      	<!-- 카드 제목 -->
        <div class="card-header">
          <h3 class="card-title">매물 종류</h3> 
        </div>
        <!-- 카드 바디 -->
        <div class="card-body" >
        	<div class="form-group row">
        		<div>
        		<button type="button" class="btn btn-block btn-outline-secondary" data-toggle="button" aria-pressed="false" autocomplete="off" style="width: 200px;">전 체</button>
        		</div>
        		<div>
				<button type="button" class="btn btn-block btn-outline-secondary" data-toggle="button" aria-pressed="false" autocomplete="off" style="width: 200px;">아파트</button>
				</div>
        		<div>
				<button type="button" class="btn btn-block btn-outline-secondary" data-toggle="button" aria-pressed="false" autocomplete="off" style="width: 200px;" >오피스텔</button>
				</div>
        		<div>
				<button type="button" class="btn btn-block btn-outline-secondary" data-toggle="button" aria-pressed="false" autocomplete="off" style="width: 200px;">다세대/빌라</button>
				</div>
        		<div>
				<button type="button" class="btn btn-block btn-outline-secondary" data-toggle="button" aria-pressed="false" autocomplete="off" style="width: 200px;">다가구/단독</button>
				</div>
			</div>
			
			<div class="form-group">
				<table class="table table-bordered" >
				
					<!-- 주소 선택 -->
					<tr class="top">
						<th class="cell head">주소</th>
						<td class="cell">
							<select class="form-control" id="" name="" >
							<option value="none">매물 선택</option>
						</td>
						<td class="cell">
							<select class="form-control" id="" name="" >
							<option value="none">매물 선택</option>
						</td>
						<td class="cell">
							<select class="form-control" id="" name="" >
							<option value="none">매물 선택</option>
						</td>
					</tr>
					
					<!-- 거래 유형 출력 -->
					<tr>
						<th class="cell head">거래유형</th>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
					</tr>
					
					<!-- 거래 가격 출력 -->
					<tr>
						<th class="cell head">거래가격</th>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
					</tr>
					
					<!-- 면적 정보 출력 -->
					<tr>
						<th class="cell head">면적정보</th>
						<td class="cell">
							<section>
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
								
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
							</section>
						</td>
						<td class="cell">
							<section>
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
								
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
								
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">대지면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
							</section>
						</td>
						<td class="cell">
							<section>
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
								
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
								
								<div class="input-group mb-3">
									<span style="margin-right: 10px; margin-top: 10px;">대지면적</span> 
									<input type="text" name="area1" id="area1" class="form-control" style="width: 100%; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
									</div>
								</div>
							</section>
						</td>
					</tr>
					
					
					<!-- 상세 정보 출력 -->
					<tr>
						<th class="cell head">상세정보</th>
						<td class="cell">
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">방개수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">향</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">주차유무</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">승강기</span> 
							</div>
						</td>
						<td class="cell">
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">방개수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">향</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">주차유무</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">승강기</span> 
							</div>
						</td>
						<td class="cell">
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">방개수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">향</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">주차유무</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
							</div>
							<div class="input-group mb-3">
								<span style="margin-right: 10px; margin-top: 10px;">승강기</span> 
							</div>
						</td>
					</tr>
					
					
					<!-- 메모 출력 -->
					<tr>
						<th class="cell head">메 모</th>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
						<td class="cell">
						-
						</td>
					</tr>
					
				</table>
			</div>
			
			
        </div>
      </div>
    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<!-- footer include -->
<jsp:include page = "./footer.jsp" flush = "false"/>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- 다이얼로그창 인클루드 -->
<jsp:include page="./pfs_register_dialog.jsp"></jsp:include>
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
<script src="./resources/plugins/datepicker/js/bootstrap-datepicker.js"></script>
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
<!-- Page script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": true,
    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
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
