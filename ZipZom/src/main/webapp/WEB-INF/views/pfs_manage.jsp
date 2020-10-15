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
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- jQuery UI -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
  <!-- datepicker 
  <link rel="stylesheet" href="./resources/plugins/datepicker/css/datepicker.css">-->
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
            <h1>등록 매물 관리</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">등록 매물 관리</li>
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
        	<div class="btn-group row" >
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
			
			<div class="form-group row" style="margin-right: 10px; margin-top: 10px;">
				<section>
					<div class="input-group md-3">
						<span style="margin-right: 10px; margin-top: 5px;">계약 유형</span>
					</div>
				</section>
				
				<section>
					<div class="input-group md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px; ">
                        <input type="checkbox" id="check_all" name="check_all" value="1" checked>
                        <label for="check_all">
                        <span>전체</span>
                        </label>
                        </div>
					</div>
				</section>
				
				<section>
					<div class="input-group md-3">						
						<div class="icheck-primary d-inline" style="margin-right: 20px; ">
                        <input type="checkbox" id="checkbox1" name="r1">
                        <label for="checkbox1">
						<span>매매</span>
                        </label>
                      	</div>
					</div>
				</section>
				
				<section>
					<div class="input-group md-3">
                      	<div class="icheck-primary d-inline" style="margin-right: 20px; ">
                        <input type="checkbox" id="checkbox2" name="r2">
                        <label for="checkbox2">
                        <span>전세</span>
                        </label>
                      	</div>
					</div>
				</section>
				
				<section>
					<div class="input-group md-3">
                      	<div class="icheck-primary d-inline" style="margin-right: 20px; ">
                        <input type="checkbox" id="checkbox3" name="r3" >
                        <label for="checkbox3">
                        <span>월세</span>
                        </label>
                      	</div>
					</div>
				</section>
			</div>
			
			<div class="form-group row">
				<section>
					<div class="input-group mb-3">
					<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
					<input type="text" class="form-control" style="width: 100px; margin-top: 5px;" >
					<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;" ">만원</span>
					<span style="margin-top: 10px;">~</span>
					<input type="text" class="form-control" style="width: 100px; margin-left: 10px; margin-top: 5px;" >
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;" ">만원</span>
				</section>

				<section>
					<div class="input-group mb-3">
					<span style="margin-right: 10px; margin-top: 10px;">건축년도</span>
					<input type="text" class="form-control" style="width: 100px; margin-top: 5px;" >
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;" ">년</span>
					</div>
				</section>

				<section>
					<div class="input-group mb-3">
					<span style="margin-right: 10px; margin-top: 10px;">전용면적</span>
					<input type="text" class="form-control" style="width: 100px; margin-top: 5px;" >
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;" ">m²</span>
					<span style="margin-top: 10px;">~</span>
					<input type="text" class="form-control" style="width: 100px; margin-left: 10px; margin-top: 5px;" >
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;" ">m²</span>
					</div>
				</section>
				
				<section>
					<div class="input-group mb-3">
					<button type="button" class="btn btn-primary" style="width: 100px; margin-top:5px;">
					검색하기
					</button>
					</div>
				</section>
            </div>       
        </div>
    
      </div>
    </section>
    
    
    
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">매물 목록</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
					<th></th>
                    <th>타입</th>
                    <th>거래 유형</th>
                    <th>매물</th>
                    <th>동</th>
                    <th>호</th>
                    <th>매도금액(만)</th>
                    <th>보증금</th>
                    <th>월임대료</th>
                    <th>융자금</th>
                    <th>거래상태</th>
                    <th>등록일</th>
                  </tr>
                  </thead>
                  <tbody id="myTable" >
                  <tr data-toggle="modal" data-target="#modal2" >
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <td>아파트</td>
                    <td>매매</td>
                    <td>서울특별시 강남구 역삼동 819-10</td>
                    <td>역삼동</td>
                    <td>301호</td>
                    <td>10,000</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>정상</td>
                    <td>2020-10-06</td>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>삼성동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>삼성동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>삼성동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-11</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox2" value="option2">
						<label for="customCheckbox2" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 삼성동 12-10</th>
                    <th>삼성동</th>
                    <th>203호</th>
                    <th>14,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-01</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox3" value="option3">
						<label for="customCheckbox3" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 삼성동 12-10</th>
                    <th>삼성동</th>
                    <th>203호</th>
                    <th>14,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-01</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox4" value="option4">
						<label for="customCheckbox4" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 삼성동 12-10</th>
                    <th>삼성동</th>
                    <th>203호</th>
                    <th>14,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-01</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                   <tr>
                  	<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox1" value="option1">
						<label for="customCheckbox1" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 역삼동 819-10</th>
                    <th>역삼동</th>
                    <th>301호</th>
                    <th>10,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-06</th>
                  </tr>
                  <tr>
					<th>
                  		<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="customCheckbox5" value="option5">
						<label for="customCheckbox5" class="custom-control-label"></label>
						</div>
					</th>
                    <th>아파트</th>
                    <th>매매</th>
                    <th>서울특별시 강남구 삼성동 12-10</th>
                    <th>삼성동</th>
                    <th>203호</th>
                    <th>14,000</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th>정상</th>
                    <th>2020-10-01</th>
                  </tr>                  
                </table>
                <div class="modal-footer justify-content-left">
                <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-xl" style="width: 200px;">
				신규 등록
				</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">선택 매물 삭제하기</button>
				<button type="button" class="btn btn-primary">선택 매물 비교하기</button>
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
<jsp:include page="./pfs_modify_dialog.jsp"></jsp:include>

<!-- ajax googleapis -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<!-- date-picker 
<script src="./resources/plugins/datepicker/js/bootstrap-datepicker.js"></script>-->
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
      "displayLength": 5,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>

<!-- 테이블 검색기능(필터) -->
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<script>
$("#example2").click(function(){ 	

	var str = ""
	var tdArr = new Array();	// 배열 선언
	
	// 현재 클릭된 Row(<tr>)
	var tr = $(this);
	var td = tr.children();
	
	// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	
	// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
	td.each(function(i){
		tdArr.push(td.eq(i).text());
	});
	
	console.log("배열에 담긴 값 : "+tdArr);
	
	// td.eq(index)를 통해 값을 가져올 수도 있다.
	var no = td.eq(0).text();
	var userid = td.eq(1).text();
	var name = td.eq(2).text();
	var email = td.eq(3).text();
	
	
	str +=	" * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
			", 아이디 : <font color='red'>" + userid + "</font>" +
			", 이름 : <font color='red'>" + name + "</font>" +
			", 이메일 : <font color='red'>" + email + "</font>";		
	

});
</script>
<script>
  $(function () {
    //Initialize Select2 Elements
    //$('.select2').select2()

    //Initialize Select2 Elements
   /*  $('.select2bs4').select2({
      theme: 'bootstrap4'
    }) */

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
