<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Zipzom - Realtor</title>
<style type="text/css">

table.type03 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
 	margin : 20px 10px;
}
table.type03 th {
    width: 300px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
	background: #eee;
}
table.type03 td {
    width: 349px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    
}

}
</style>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- 폰트 테스트 -->
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
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
<!-- datepicker -->
<link rel="stylesheet" href="./resources/plugins//jquery-ui/jquery-ui.css">
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
<!-- DataTables -->
<link rel="stylesheet" href="./resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="./resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
 
</head>
<body class="w3-content" style="max-width:1400px">

   <!-- sidebar include -->
    <jsp:include page = "./sidebar.jsp" flush = "false"/>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-top:10px; margin-bottom:50px;">
      <div class="container-fluid">
         <div class="row mb-2">
            <div class="col-sm-6">
               
            </div>
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">고객 상담</li>
                  <li class="breadcrumb-item active">상담 보고서</li>
               </ol>
            </div>
         </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 메인 컨텐츠 -->
    <section class="content">
	
 	<div class="book">
 		<div class="page" id="pdf_wrap">	 			
	 			
	 			<div class="card">         
   	  	<!-- 카드 헤더 -->
	  	<div class="card-header">
			<h3 class="card-title">정보 입력</h3> 
		</div>
		
		<!-- 카드 바디 -->
		<div class="card-body">
			<div class="form-group row">
				<section class="col-md-4">		
					<div class="input-group mb-6">
					<!-- 고객 이름 -->
	         		<li style="margin-right: 10px; margin-top: 10px;">고객 이름</li>
					<input type="text" class="form-control" id="name" name="name" placeholder="이름" style="width: 150px; margin-right: 10px; margin-top: 5px;" >
					<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-rtp" style="width: 70px; margin-top:5px;">
              		검색
              		</button>
					</div>
				</section>
				
				<section class="col-md-4">		
					<div class="input-group mb-6">
					<!-- 고객 이름 -->
	         		<span style="margin-right: 10px; margin-top: 10px;">매물주소</span>
					<input type="text" class="form-control" id="name" name="name" placeholder="이름" style="width: 150px; margin-right: 10px; margin-top: 5px;" >
					<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-rtp" style="width: 70px; margin-top:5px;">
              		추가
              		</button>
					</div>
				</section>
				
			</div>
			
		</div>
	</div>
	
	<div class="card">
		<!-- 카드 헤더 -->
	  	<div class="card-header">
			<h3 class="card-title">매물 정보</h3> 
		</div>
		
		<!-- 카드 바디 -->
		<div class="card-body">
			<div class="card">
				<table class="type03">
                  <thead>
                  <tr>
					<th>매물 주소</th>
					<td colspan="4">서울특별시 강남구 대치동 503 개포우성1차</td>
					<th>계약 유형</th>
					<td colspan="3">매매</td>
                  </tr>
                  
                  <tr>
					<th>금액정보</th>
					<td>매매가</td>
					<td>340,000</td>
					<td>보증금</td>
					<td>10,000</td>
					<td>월세</td>
					<td>200</td>
					<td>융자금</td>
					<td>100,000</td>
                  </tr>
                  
                  <tr>
					<th>면적정보</th>
					<td>공급면적</td>
					<td>127.23</td>
					<td>전용면적</td>
					<td>100.32</td>
					<td>대지면적</td>
					<td>16.45</td>
					<td>-</td>
					<td>-</td>
                  </tr>
                  
                  <tr>
					<th>입주정보</th>
					<td colspan="2">입주가능날짜</td>
					<td colspan="2">2020-10-30</td>
					<td colspan="2">임대만기날짜</td>
					<td colspan="2">2020-10-27</td>
                  </tr>
                  
				  <tr>
					<th rowspan="4">상세정보</th>
					<td>방개수</td>
					<td>4개</td>
					<td>방향</td>
					<td>남향</td>
					<td>욕실수</td>
					<td>2개</td>
					<td>난방방식</td>
					<td>도시가스</td>
                  </tr>
                  
                  <tr>
					<td>세대수</td>
					<td>360세대</td>
					<td>층수</td>
					<td>11층</td>
					<td>총층수</td>
					<td>14층</td>
					<td>냉방시설</td>
					<td>있음</td>
                  </tr>
                  
                  <tr>
					<td>승강기</td>
					<td>있음</td>
					<td>주차유무</td>
					<td>가능</td>
					<td>건축년도</td>
					<td>1990년</td>
					<td>-</td>
					<td>-</td>
                  </tr>
                  
                  <tr>
					<td>옵션</td>
					<td colspan="3">에어컨, 가스렌지</td>
					<td>보안시설</td>
					<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
                  </tr>
                  
				  <tr>
					<th>메모</td>
					<td colspan="8">-</td>
                  </tr>
                  
                  </thead>
                  <tbody id="tbody">
                  </tbody>         
                </table>
				
				
			</div>
			
			<div class="card">
				<table class="type03">
                  <thead>
                  <tr>
					<th>매물 주소</th>
					<td colspan="4">서울특별시 강남구 대치동 503 개포우성1차</td>
					<th>계약 유형</th>
					<td colspan="3">매매</td>
                  </tr>
                  
                  <tr>
					<th>금액정보</th>
					<td>매매가</td>
					<td>340,000</td>
					<td>보증금</td>
					<td>10,000</td>
					<td>월세</td>
					<td>200</td>
					<td>융자금</td>
					<td>100,000</td>
                  </tr>
                  
                  <tr>
					<th>면적정보</th>
					<td>공급면적</td>
					<td>127.23</td>
					<td>전용면적</td>
					<td>100.32</td>
					<td>대지면적</td>
					<td>16.45</td>
					<td>-</td>
					<td>-</td>
                  </tr>
                  
                  <tr>
					<th>입주정보</th>
					<td colspan="2">입주가능날짜</td>
					<td colspan="2">2020-10-30</td>
					<td colspan="2">임대만기날짜</td>
					<td colspan="2">2020-10-27</td>
                  </tr>
                  
				  <tr>
					<th rowspan="4">상세정보</th>
					<td>방개수</td>
					<td>4개</td>
					<td>방향</td>
					<td>남향</td>
					<td>욕실수</td>
					<td>2개</td>
					<td>난방방식</td>
					<td>도시가스</td>
                  </tr>
                  
                  <tr>
					<td>세대수</td>
					<td>360세대</td>
					<td>층수</td>
					<td>11층</td>
					<td>총층수</td>
					<td>14층</td>
					<td>냉방시설</td>
					<td>있음</td>
                  </tr>
                  
                  <tr>
					<td>승강기</td>
					<td>있음</td>
					<td>주차유무</td>
					<td>가능</td>
					<td>건축년도</td>
					<td>1990년</td>
					<td>-</td>
					<td>-</td>
                  </tr>
                  
                  <tr>
					<td>옵션</td>
					<td colspan="3">에어컨, 가스렌지</td>
					<td>보안시설</td>
					<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
                  </tr>
                  
				  <tr>
					<th>메모</td>
					<td colspan="8">-</td>
                  </tr>
                  
                  </thead>
                  <tbody id="tbody">
                  </tbody>         
                </table>
				
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-primary" style="width: 100px;">
				출력하기
               	</button>
               	<button type="button" id="create_pdf" class="btn btn-primary" >
               	PDF 생성하기
               	</button>
			</div> 
		</div>
		<!-- /.card-body -->
	</div>
	 			
	 			
	 			
	 		
 		</div>
 	</div>
	
	</section>
	
 
  </div>
  
  <!-- /.content-wrapper -->
  <!-- footer include -->
<%-- <jsp:include page = "./footer.jsp" flush = "false"/> --%>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- <!-- Select2
<script src="./resources/plugins/select2/js/select2.full.min.js"></script> -->
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
<!-- DataTables -->
<script src="./resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="./resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

<!-- PDF 생성 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.debug.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

<script type="text/javascript">


var pdfprint = document.getElementById('pdf_wrap').innerHTML;

jQuery('#create_pdf').click( function() {

    window.onbeforeprint = function (ev) {
        document.body.innerHTML = pdfprint;
    };

    window.print();
    location.reload();

});
</script>


</body>
</html>