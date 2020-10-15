<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
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
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>ZipZom</b>Register</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form id="form" name="form" action="./sign_up.action" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="name" name="name" placeholder="Name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="id" name="id" placeholder="ID">
          <div class="input-group-append">
            <div class="input-group-text">
              <button type="button"  id="idBtn" class="btn btn-primary btn-block" style="width:60pt; height:18pt; padding: 0.1rem 0.1rem; font-size: 11.5pt;'">중복검사</button>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control"  id="password" name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control"  id="email" name="email" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <button type="button"  id="emailBtn" class="btn btn-primary btn-block" style="width:60pt; height:18pt; padding: 0.1rem 0.1rem; font-size: 11.5pt;'">중복검사</button>
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
          <input type="tel" class="form-control"  id="phone" name="phone" placeholder="Phone">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="tel" class="form-control"  id="tel" name="tel" placeholder="Tel">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-suitcase"></span>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="button"  id="btn" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <a href="./start.action" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>
</body>
</html>