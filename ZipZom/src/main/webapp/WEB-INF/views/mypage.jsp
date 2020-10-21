<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ZipZom | MyPage</title>
  
  <style type="text/css">
  	.content-body {
  		background-image: url("https://img.freepik.com/free-photo/house-model-with-real-estate-agent-customer-discussing-contract-buy-house-insurance-loan-real-estate-background_1418-2274.jpg?size=626&ext=jpg");
  		background-repeat: no-repeat;
  		background-size: cover;
  	}
  
  </style>
  
  <!-- Custom Stylesheet -->
  <link rel="stylesheet" href="./resources3/css/style.css">
    
  <!-- jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="./resources/plugins/jquery/jquery.min.js"></script>
  

  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="./resources/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="./resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

</head>
<script type="text/javascript">
var isCheckId = 0;
var isCheckEmail = 0;

$(document).ready(function() {
	
	$("#btn").button().on('click', function() {
		//alert('click');
		if( $('#name').val().trim() == "" ){
			alert('이름 입력 오류입니다.');
			return false;
		}
		if( $('#id').val().trim() == "" ){
			alert('아이디 입력 오류입니다.');
			return false;
		}
		if( $('#password').val().trim() == "" ){
			alert('패스워드 입력 오류입니다.');
			return false;
		}
		if( $('#email').val().trim() == "" ){
			alert('이메일 입력 오류입니다.');
			return false;
		}
		if( $('#zipNo').val().trim() == "" ){
			alert('주소 입력 오류입니다.');
			return false;
		}
		if( $('#phone').val().trim() == "" ){
			alert('핸드폰 번호 입력 오류입니다.');
			return false;
		}
		if( $('#tel').val().trim() == "" ){
			alert('유선 전화번호 입력 오류입니다.');
			return false;
		}
		
		if( isCheckId == 0 ){
			alert('ID 중복을 확인하세요.');
			return false;
		}
		
		if( isCheckEmail == 0 ){
			alert('Email 중복을 확인하세요.');
			return false;
		}
		
		$("#form").submit();
	});
	
	$("#idBtn").button().on('click', function() {
		var id = $('#id').val();
		checkId( id );
	});
	
	$("#emailBtn").button().on('click', function() {
		var email = $('#email').val();
		checkEmail( email );
	});
	
});

var checkId = function( id ){
	$.ajax({
		url: './duId.action',
		data: {
			id: id
		},
		type: 'post',
		datatype: 'json',
		success: function( json ) {
			if( json.flag == 1 ){
				alert("이미 존재하는 ID입니다.");
			} else {
				alert('사용 가능한 ID입니다.');
				isCheckId = 1;
			}
		}
		
	}); 
}

var checkEmail = function( email ){
	$.ajax({
		url: './duEmail.action',
		data: {
			email: email
		},
		type: 'post',
		datatype: 'json',
		success: function( json ) {
			if( json.flag == 1 ){
				alert("이미 존재하는 email입니다.");
			} else {
				alert('사용 가능한 email입니다.');
				isCheckEmail = 1;
			}
		}
		
	}); 
}

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("./jusoPopup.action?id=0","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
}

</script>
<body class="w3-content" style="max-width:1500px">
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

<jsp:include page="./sidebar.jsp" flush="false" />

  <!-- Content Wrapper. Contains page content -->

    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Main</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

  <!-- /.content-wrapper -->

  <div class="login-box">
 <div class="card">
   <div class="card-body register-card-body">
      <p class="login-box-msg">새로운 회원으로 가입하세요.</p>

      <form id="form" name="form" action="./sign_up.action" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="name" name="name" placeholder="이름">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="id" name="id" placeholder="아이디">
          <div class="input-group-append">
            <div class="input-group-text">
              <button type="button"  id="idBtn" style="width:60pt; height:18pt; padding: 0.1rem 0.1rem; font-size: 11.5pt;'">중복검사</button>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control"  id="password" name="password" placeholder="비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control"  id="email" name="email" placeholder="이메일">
          <div class="input-group-append">
            <div class="input-group-text">
              <button type="button"  id="emailBtn" style="width:60pt; height:18pt; padding: 0.1rem 0.1rem; font-size: 11.5pt;'">중복검사</button>
            </div>
          </div>
        </div>
        <!-- 주소 -->
        <div class="input-group mb-3">
          <!--  <input type="text" class="form-control"  id="address" name="address" placeholder="Address"> -->
          	<input type="hidden" id="confmKey" name="confmKey" value=""  >
			<input type="text" class="form-control" id="zipNo" name="zipNo"  placeholder="우편번호" readonly style="width:100px">
			<input type="button"  class="form-control" value="주소검색" onclick="goPopup();">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-map"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          
		<input type="text"  class="form-control" id="roadAddrPart1" name="roadAddrPart1" placeholder="도로명주소"  readonly >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-map"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          	<input type="text"  class="form-control" id="addrDetail" name="addrDetail" placeholder="상세주소" style="width:50%" value="" readonly>
			<input type="text"  class="form-control" id="roadAddrPart2" name="roadAddrPart2" style="width:50%" value="" readonly>
			
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-map"></span>
            </div>
          </div>
          
        </div>
        <!-- /주소 -->
        <div class="input-group mb-3">
          <input type="tel" class="form-control"  id="phone" name="phone" placeholder="사무실번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-suitcase"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="tel" class="form-control"  id="tel" name="tel" placeholder="핸드폰번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-8">
			<div style="float:right;">
            <button type="button"  id="" >수정</button>
          	
            <button type="button"  id="" >삭제</button>
 			</div>
          </div>
          <!-- /.col -->
          
          <!-- /.col -->
        </div>
               
      </form>

      
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
  </div>
  </div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="./resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
