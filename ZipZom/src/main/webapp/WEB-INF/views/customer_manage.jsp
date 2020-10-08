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
  <!-- 폰트 테스트 -->
  <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Select2 -->
  <link rel="stylesheet" href="./resources/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="./resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- datepicker -->
  <link rel="stylesheet" href="./resources/plugins//jquery-ui/jquery-ui.css">
  <link rel="stylesheet" href="./resources/demos/style.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="./resources/plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="./resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="./resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="./resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
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

    <!-- Sidebar -->
    <div class="sidebar">
		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
			<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-tachometer-alt"></i>
					<p>
	                사이트 소개
	                
	                <i class="right fas fa-angle-left"></i>
					</p>
	            </a>
            	<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="./resources/index.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>사이트 소개</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="./resources/index2.html" class="nav-link">
						<!-- 공지사항이나 업데이트에 새로운 글이 등록되면 옆에 숫자뜸 -->
						<span class="badge badge-info right">1</span>
						<i class="far fa-circle nav-icon"></i>
						<p>공지사항</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="./resources/index3.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>업데이트</p>
						</a>
					</li>
				</ul>
			</li>
          
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-copy"></i>
					<p>
					고객 관리
					<i class="fas fa-angle-left right"></i>
					</p>
				</a>
            
			</li>
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-chart-pie"></i>
					<p>
                	고객 상담
					<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="../charts/chartjs.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>매물 시세</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="../charts/flot.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>맞춤 매물</p>
        		        </a>
              		</li>
					<li class="nav-item">
						<a href="../charts/inline.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>상담 보고서</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview">
				<a href="#" class="nav-link">
					<i class="nav-icon fas fa-tree"></i>
              		<p>
                	매물 관리
                	<i class="fas fa-angle-left right"></i>
              		</p>
            	</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="../UI/icons.html" class="nav-link">
						<i class="far fa-circle nav-icon"></i>
						<p>등록 매물 관리</p>
						</a>
					</li>
					<li class="nav-item">
                		<a href="../UI/buttons.html" class="nav-link">
            	      	<i class="far fa-circle nav-icon"></i>
						<p>매물 비교</p>
             	   		</a>
              		</li>
             
            	</ul>
          </li>
          
	          <li class="nav-item">
					<a href="../calendar.html" class="nav-link">
					<i class="nav-icon far fa-calendar-alt"></i>
					<p>일정 관리
	                <!-- 오늘의 일정 갯수가 옆에 뜸 -->
	                <span class="badge badge-info right">2</span>
					</p>
					</a>
	          </li>          
			</ul>
      	</nav>
      	<!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>고객 관리</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">고객 관리</li>
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
				<h3 class="card-title">고객 정보</h3> 
			</div>
			<!-- 본문 내용 -->
			<div class="card-body" >
	        	<div class="form-group clearfix">
					<div class="col">
						<div>고객 상태
							<select class="form-control select2bs4" style="width: 200px;">
								<option value="none">선택</option>
								<option>계약대기</option>
								<option>계약진행</option>
								<option>계약완료</option>
								<option>방문예정</option>
								<option>기타</option>
							</select>
						</div>
						<br/>
						
						<span>고객 속성
							<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="checkboxPrimary1" name="r1" checked>
	                        	<label for="checkboxPrimary1">
	                        	<span>전체</span>
	                        	</label>
							</div>
							<div class="icheck-primary d-inline">
		                        <input type="checkbox" id="checkboxPrimary2" name="r2">
	    	                    <label for="checkboxPrimary2">
								<span>매도인</span>
	            	            </label>
							</div>
							<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="checkboxPrimary3" name="r3">
		                        <label for="checkboxPrimary3">
	                        	<span>매수인</span>
	                        	</label>
							</div>
							<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="checkboxPrimary4" name="r4" >
	                        	<label for="checkboxPrimary4">
		                        <span>임대인</span>
	    	                    </label>
							</div>
							<div class="icheck-primary d-inline">
		                        <input type="checkbox" id="checkboxPrimary5" name="r5" >
		                        <label for="checkboxPrimary5">
	                        	<span>임차인</span>
	                        	</label>
							</div>
							<div class="icheck-primary d-inline">
		                        <input type="checkbox" id="checkboxPrimary6" name="r6" >
	    	                    <label for="checkboxPrimary6">
	        	                <span>집주인</span>
	            	            </label>
							</div>
							<div class="icheck-primary d-inline">
		                        <input type="checkbox" id="checkboxPrimary7" name="r7" >
	    	                    <label for="checkboxPrimary7">
	        	                <span>일반상담</span>
	            	            </label>
							</div>
						</span>
						<br/>
						
						
						<!-- 검색 텍스트바 & 버튼 -->
						<div class="form-group row" >
							<input type="text" class="form-control" placeholder="이름 또는 연락처를 입력하세요." style="width: 600px; margin-right: 30px; margin-top: 30px;" >
							<button type="button" class="btn btn-block btn-primary" style="width: 200px; margin-right: 10px; margin-top: 30px">
							검색하기
							</button>
							<!-- 신규등록 모달창 버튼 -->
							<button type="button" class="btn btn-block btn-outline-primary" data-toggle="modal" data-target="#modal-xl" style="width: 200px; margin-top: 30px">
							신규 등록
							</button>
						</div>
					</div>      
				</div>
			</div>

    <!-- 고객리스트 테이블 -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
				<h3 class="card-title">고객 목록</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
					<th></th>
                    <th>이름</th>
                    <th>연락처</th>
                    <th>고객 타입</th>
                    <th>진행 상태</th>
                    <th>계약 타입</th>
                    <th>방문일</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>정연규</th>
                    <th>010-1234-1234</th>
                    <th>매도인</th>
                    <th>계약준비</th>
                    <th>매매</th>
                    <th>2020-10-05</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option2">
						<label for="customCheckbox2" class="custom-control-label"></label>
						</div>
					</th>
                    <th>정연규</th>
                    <th>010-1234-1234</th>
                    <th>매도인</th>
                    <th>계약준비</th>
                    <th>매매</th>
                    <th>2020-10-05</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox3" value="option3">
						<label for="customCheckbox3" class="custom-control-label"></label>
						</div>
					</th>
                    <th>정연규</th>
                    <th>010-1234-1234</th>
                    <th>매도인</th>
                    <th>계약준비</th>
                    <th>매매</th>
                    <th>2020-10-05</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox4" value="option4">
						<label for="customCheckbox4" class="custom-control-label"></label>
						</div>
					</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox5" value="option5">
						<label for="customCheckbox5" class="custom-control-label"></label>
						</div>
					</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                  </tr>                  
                </table>
                <div class="modal-footer justify-content-left">
					<button type="button" class="btn btn-primary">선택 삭제</button>
				</div> 
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.5
    </div>
    <strong>Copyright &copy; 2020-2020 <a href="http://adminlte.io">ZipZom.com</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- 다이얼로그창 인클루드 -->
<jsp:include page="./customer_resister_dialog.jsp"></jsp:include>
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
<!-- datepicker -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- date-range-picker -->
<script src="./resources/plugins/daterangepicker/daterangepicker.js"></script>
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
<!-- Page script -->
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
    
    //Date picker
    $( '#datepicker' ).datepicker()

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
