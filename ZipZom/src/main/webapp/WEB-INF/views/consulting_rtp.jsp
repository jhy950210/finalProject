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
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="./resources/css/adminlte.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="./resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="./resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
 
</head>
<body class="w3-content" style="max-width:1700px">
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
               
            </div>
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">고객 상담</li>
                  <li class="breadcrumb-item active">매물 시세</li>
               </ol>
            </div>
         </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 메인 컨텐츠 -->
    <section class="content">

      <!-- 카드 시작 -->
      <div class="card">         
   	  	<!-- 카드 헤더 -->
	  	<div class="card-header">
			<h3 class="card-title">정보 입력</h3> 
		</div>
		
		<!-- 카드 바디 -->
		<div class="card-body">
			<div class="form-group row">
				<section class="col-md-4">		
					<div class="input-group">
					<!-- 고객 이름 -->
	         		<li style="margin-right: 10px; margin-top: 10px;">고객 이름</li>
					<input type="text" class="form-control" id="findname" placeholder="이름" style="width: 120px; margin-right: 10px; margin-top: 5px;" readonly>
					<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-rtp" style="width: 70px; margin-top:5px;">
              		찾기
              		</button>
              		
					</div>

              		
				</section>
				
				<section class="col-md-8">
              		<div class="input-group mb-3">
						<!-- 시 -->
						<li style="margin-right: 10px; margin-top: 10px;">주소</li>
						<select class="form-control select" id="si" name="si" style="width: 150px; margin-right: 20px; margin-top: 5px;">
	                    	<option value="none">-- 시 --</option>
								<option>서울특별시</option>
						</select>
						
						<!-- 구 -->
						<select class="form-control select" id="gu" name="gu" style="width: 150px; margin-right: 20px; margin-top: 5px;">
	                    	<option value="none">-- 구 --</option>
								<option>강남구</option>
								<option>강동구</option>
								<option>강서구</option>
						</select>
						
						<!-- 동 -->
						<select class="form-control select" id="dong" name="dong" style="width: 150px; margin-right: 20px; margin-top: 5px;">
	                    	<option value="none">-- 동 --</option>
								<option>개포동</option>
								<option>논현동</option>
								<option>대치동</option>
						</select>
						
						<section>
							<button type="button" class="btn btn-primary" style="width: 150px; margin-top:5px;">
              				검색
              				</button>
						</section>
					</div>
           		</section>
			</div>
			
			<div class="card">
				<div class="form-group row" style="margin-left: 10px;">
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 계약 유형 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">계약 유형</span>
						<input type="text" class="form-control" id="contract_type" name="contract_type" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 매매 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">매매 예산</span>
						<input type="text" class="form-control" id="budget_t1" name="budget_t1" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 보증금 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">보증금 예산</span>
						<input type="text" class="form-control" id="budget_t2" name="budget_t2" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 보증금 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">월세 예산</span>
						<input type="text" class="form-control" id="budget_t3" name="budget_t3" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
				
				</div>
				
				<div class="form-group row" style="margin-left: 10px;">
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 건물 용도 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">건물 용도</span>
						<input type="text" class="form-control" id="b_type" name="b_type" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 전용 면적 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">전용 면적</span>
						<input type="text" class="form-control" id="area2" name="area2" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 건축 년도 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">건축 년도</span>
						<input type="text" class="form-control" id="b_year" name="b_year" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
				
				</div>
			</div>
			
		</div>
	</div>
	
	<!-- 카드 시작 -->
	<div class="card">
		<!-- 카드 헤더 -->
	  	<div class="card-header">
			<h3 class="card-title">실거래가 조회</h3> 
		</div>
		
		<!-- 카드 바디 -->
		<div class="card-body">
			<table id="example3" class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>시</th>
	               		<th>구</th>
	                    <th>동</th>
	                    <th>번지</th>
	                    <th>건물이름</th>
	                    <th>전용면적</th>
	                    <th>계약년월</th>
	                    <th>계약일</th>
	                    <th>실거래가</th>
	                    <th>층수</th>
	                    <th>건축년도</th>
	                    <th>도로명주소</th>
	                  </tr>
				</thead>
				<tbody id="tbody">
					<tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>삼성동</td>
	                    <td>142-3</td>
	                    <td>LG선릉에클라트(B)</td>
	                    <td>56.68</td>
	                    <td>202006</td>
	                    <td>10</td>
	                    <td>83000</td>
	                    <td>14</td>
	                    <td>2004</td>
	                    <td>테헤란로63길 12</td>
	                  </tr>
	                  
	                  <tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>삼성동</td>
	                    <td>142-3</td>
	                    <td>LG선릉에클라트(B)</td>
	                    <td>56.68</td>
	                    <td>202006</td>
	                    <td>10</td>
	                    <td>83000</td>
	                    <td>14</td>
	                    <td>2004</td>
	                    <td>테헤란로63길 12</td>
	                  </tr>
	                  
	                  <tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>대치동</td>
	                    <td>503</td>
	                    <td>개포우성1</td>
	                    <td>127.61</td>
	                    <td>202006</td>
	                    <td>8</td>
	                    <td>322000</td>
	                    <td>14</td>
	                    <td>1983</td>
	                    <td>선릉로 120</td>
	                  </tr>
	                  
	                  <tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>대치동</td>
	                    <td>503</td>
	                    <td>개포우성1</td>
	                    <td>127.61</td>
	                    <td>202006</td>
	                    <td>21</td>
	                    <td>334000</td>
	                    <td>3</td>
	                    <td>1983</td>
	                    <td>선릉로 120</td>
	                  </tr>
	                  
	                  <tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>대치동</td>
	                    <td>500</td>
	                    <td>개포우성2</td>
	                    <td>127.78</td>
	                    <td>202006</td>
	                    <td>12</td>
	                    <td>335000</td>
	                    <td>12</td>
	                    <td>1984</td>
	                    <td>선릉로 120</td>
	                  </tr>
	                  
	                  <tr>
						<td>서울특별시</td>
	               		<td>강남구</td>
	                    <td>삼성동</td>
	                    <td>142-3</td>
	                    <td>LG선릉에클라트(B)</td>
	                    <td>56.68</td>
	                    <td>202006</td>
	                    <td>10</td>
	                    <td>83000</td>
	                    <td>14</td>
	                    <td>2004</td>
	                    <td>테헤란로63길 12</td>
	                  </tr>
				</tbody>         
			</table>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-primary" style="width: 100px;">
				출력하기
               	</button>
			</div> 
		</div>
		<!-- /.card-body -->
	</div>
	<!-- /.card -->
	</section>
    <!-- /.content -->
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

<!-- 다이얼로그창 인클루드 -->
<jsp:include page="./consulting_rtp_dialog.jsp"></jsp:include>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="./resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
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
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": true,
    });
    $('#example3').DataTable({
      "paging": true,
      "lengthChange": false,
      "displayLength": 5,
      "searching": true,
      "ordering": false,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
<script type="text/javascript">
  
$(document).ready(function() {
	$("#si").change(function(){
		if($(this).val()=="") {
			alert("시를 선택해 주세요.");
		} else if ($(this).val()=="서울특별시") {
			alert("서울특별시를 선택하였습니다.")
		}
	})
})

</script>

</body>
</html>