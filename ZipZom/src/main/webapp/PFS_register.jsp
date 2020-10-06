<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Legacy User Menu</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

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

  <jsp:include page="./sideBar.jsp" flush="false" />

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>신규 매물 등록</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">신규 매물 등록</li>
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
        <!-- 본문 내용 -->
        <div class="card-body" >
        	<div class="form-group row">
        		
				<button type="button" class="btn btn-block btn-outline-secondary" style="width: 200px;">아파트</button>

				<button type="button" class="btn btn-block btn-outline-secondary" style="width: 200px;" >오피스텔</button>

				<button type="button" class="btn btn-block btn-outline-secondary" style="width: 200px;">다세대/빌라</button>

				<button type="button" class="btn btn-block btn-outline-secondary" style="width: 200px;">다가구/단독</button>

			</div>
        </div>

       
      </div>
    </section>
    
    <section class="content">

	<!-- Default box -->
	<div class="card card-default">
      	<!-- 카드 제목 -->
        <div class="card-header">
          <h3 class="card-title">매물 주소</h3> 
        </div>
        <!-- 본문 내용 -->
        <!-- /.col -->

			<div class="card-body" ">
				<div class="row">
					<select class="form-control select2bs4" style="width: 200px;">
                    	<option value="none">시, 도</option>
      	              <option>서울특별시</option>
    	                <option>광주광역시</option>
    	                <option>부산광역시</option>
 	                   <option>울산광역시</option>
    	                <option>대구광역시</option>
        	            <option>대전광역시</option>
					</select>

					<select class="form-control select2bs4" style="width: 200px;">	
                    	<option value="none">구, 군</option>
                    	<option>강남구</option>
                    	<option>강동구</option>
                    	<option>강서구</option>
                    	<option>강북구</option>
                    	<option>관악구</option>
                    	<option>광진구</option>
					</select>

					<select class="form-control select2bs4" style="width: 200px;">
                    	<option value="none">동 </option>
                    	<option>개포동</option>
                    	<option>논현동</option>
                    	<option>대치동</option>
                    	<option>도곡동</option>
                    	<option>삼성동</option>
                    	<option>세곡동</option>
					</select>

					<select class="form-control select2bs4" style="width: 300px;">
                    	<option value="none">건물, 지번(검색가능)</option>
                    	<option>655-1 개포 현대아파트 200동</option>
                    	<option>655-2 개포2차현대아파트</option>
                    	<option>658-1 개포6차우성아파트</option>
                    	<option>179 개포8차우성아파트</option>
                    	<option>176-1 개포동상지리츠빌</option>
                    	<option>656 개포래미안포레스트</option>
					</select>
					<button type="button" class="btn btn-block btn-primary" data-toggle="modal" data-target="#modal-xl" style="width: 200px;">
                  	상세정보 등록
                	</button>
                	
                	<!-- /.modal -->

      <div class="modal fade" id="modal-xl">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
            <!-- modal 제목 -->
              <h4 class="modal-title">상세정보 등록</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <!-- modal 본문 -->
            <div class="modal-body">
              <ul>
              	<li>
              		<span>매물 주소</span>
              		<span> : 서울특별시 강남구 역삼동 KIC학원</span>
              	</li>
         		<li>
         			<span>거래 유형</span>
         			<span>
         			<div class="form-group clearfix">
         			
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="r1" checked>
                        <label for="radioPrimary1">
                        	매매
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" name="r1">
                        <label for="radioPrimary2">
                        	전세
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary3" name="r1" >
                        <label for="radioPrimary3">
                        	월세
                        </label>
                      </div>
                    </div>
                    </div>
                    </span>
				</li>
              </ul>
              

              <li>금액 정보 : 
              	<div class="input-group mb-3">
              		<span>매매가</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>보증금</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>월세금</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>융자금</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
                </div>
              </li> 
              <li>면적 정보 : 
              <div class="input-group mb-3">
              		<span>공급면적</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>전용면적</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>대지면적</span>
					<input type="text" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					
                </div>
              </li>
              <li>입주 정보 : </li>
              <!-- checkbox -->
                    <div class="form-group clearfix">
                      <div class="icheck-primary d-inline">
                        <input type="checkbox" id="checkboxPrimary1">
                        <label for="checkboxPrimary1">
                        즉시입주
                        </label>
                      </div>
                    </div>
				<!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control float-right" id="reservation1">
                  </div>
                  <!-- /.input group -->
                </div>
				<!-- checkbox -->
                    <div class="form-group clearfix">
                      <div class="icheck-primary d-inline">
                        <input type="checkbox" id="checkboxPrimary2">
                        <label for="checkboxPrimary2">
                        협의가능
                        </label>
                      </div>
                    </div>
              <li>임대 만기 : </li>
              <!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control float-right" id="reservation2">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>상세 정보 : </li>
				<!-- select -->
				<div class="form-group">
					<label>방개수</label>
						<select class="custom-select">
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
						<option>6개</option>
						<option>7개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>욕실수</label>
						<select class="custom-select">
						<option>1개</option>
						<option>2개</option>
						<option>3개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>향</label>
						<select class="custom-select">
						<option>북향</option>
						<option>남향</option>
						<option>서향</option>
						<option>동향</option>
						<option>북서향</option>
						<option>북동향</option>
						<option>남서향</option>
						<option>남동향</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>난방방식</label>
						<select class="custom-select">
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>냉방시설</label>
						<select class="custom-select">
						<option>1대</option>
						<option>2대 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>주차유무</label>
						<select class="custom-select">
						<option>가능</option>
						<option>불가능</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>승강기</label>
						<select class="custom-select">
						<option>있음</option>
						<option>없음</option>
                        </select>
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>세대수</label>
						<input type="text" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>층수</label>
						<input type="text" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>총 층수</label>
						<input type="text" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>건축 년도</label>
						<input type="text" class="form-control" style="width: 50px;">
				</div>
				
				<!-- textarea -->
				<div class="form-group">
					<label>메모</label>
						<textarea class="form-control" rows="3" ></textarea>
				</div>
				
				<!-- checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox1" class="custom-control-label">경비원</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox2" class="custom-control-label">비디오폰</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option2">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox3" class="custom-control-label">인터폰</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox3" value="option3">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox4" class="custom-control-label">카드키</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox4" value="option4">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox5" class="custom-control-label">CCTV</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox5" value="option5">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox6" class="custom-control-label">현관보안</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox6" value="option6">
					</div>
					<div class="custom-control custom-checkbox">
						<label for="customCheckbox7" class="custom-control-label">방범창</label>
						<input class="custom-control-input" type="checkbox" id="customCheckbox7" value="option7">
					</div>
				</div>
				
				<!-- phone mask -->
                <div class="form-group">
                  <label>임대인</label>

                  <div class="input-group">
                    <div class="input-group-prepend">
                    <!-- text input -->
					<input type="text" class="form-control" placeholder="이름"  style="width: 100px;">
                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    </div>
                    <input type="text" class="form-control" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
                  </div>
                  <!-- /.input group -->
                </div>
                
                <!-- phone mask -->
                <div class="form-group">
                  <label>임차인</label>

                  <div class="input-group">
                    <div class="input-group-prepend">
					<!-- text input -->
					<input type="text" class="form-control" placeholder="이름"  style="width: 100px;">
                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
                    </div>
                    <input type="text" class="form-control" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
                  </div>
                  <!-- /.input group -->
                </div>
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary">등록</button>
			</div>              
            </div>

          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      
				</div>
    	    </div>
    	     <div class="card-footer">
        	<p>지번주소
        		<input type="text" class="form-control" style="width: 500px;"disabled>
        	</p>
        	<p>도로명주소
        		<input type="text" class="form-control" style="width: 500px;" disabled>
        	</p>
        	
        	
        </div>

	</div>
	<!-- /.card -->

    </section>
    
    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
      	<!-- 카드 제목 -->
        <div class="card-header">
          <h3 class="card-title">사진 등록</h3> 
        </div>
        <!-- 본문 내용 -->
        <div class="card-body" ">
        <div class="form-group">
			<div class="input-group">
				<div class="custom-file">
					<input type="file" class="custom-file-input" id="exampleInputFile">
						<label class="custom-file-label" for="exampleInputFile">사진 찾기</label>
				</div>
				<div class="input-group-append">
					<span class="input-group-text" id="">등록</span>
				</div>
			</div>
		</div>
		</div>

       
      </div>
    </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <jsp:include page="footer.jsp" flush="false" />
  
</div>
<!-- ./wrapper -->

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
