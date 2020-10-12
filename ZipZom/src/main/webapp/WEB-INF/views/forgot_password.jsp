<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Forgot Password</title>
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
<style>
	/* The Modal (background) */
	.searchModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 10; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	/* Modal Content/Box */
	.search-modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 70%; /* Could be more or less, depending on screen size */
	}
</style>

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
//카운트 다운 
var num = 60 * 5; // 몇분을 설정할지의 대한 변수 선언
var myVar;

$(document).ready(function() {
	$("#btn").button().on('click', function() {
		$("#modal").show(); // 인증번호 모달
		time();
	});
	
	$("#closeBtn").button().on('click', function() {
		$("#modal").hide();
		clearInterval(myVar);
	});
	
	$("#okBtn").button().on('click', function() {
		$('#target').submit();
	});
	
});


function time(){
	num = 60*5;
    myVar = setInterval(alertFunc, 1000); 
}


function alertFunc() {
    var min = num / 60; 
    min = Math.floor(min);
     
    var sec = num - (60 * min);

    $('#timer').text(min + '분' + sec + '초');

    if(num == 0){
        clearInterval(myVar) // num 이 0초가 되었을대 clearInterval로 타이머 종료
    }
    num--;
}

</script>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Password</b>Find</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">You forgot your password? Here you can easily retrieve a new password.</p>

      <form action="./sendNumber.action" method="post">
        <div class="input-group mb-3">
          <input type="text"  id="id" name="id" class="form-control" placeholder="ID">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-passport"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email"  id="email" name="email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <button type="button"  id="btn" class="btn btn-primary btn-block">Request new password</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <p class="mt-3 mb-1">
        <a href="./start.action">Login</a>
      </p>
      <p class="mb-0">
        <a href="./register.action" class="text-center">Register a new membership</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<div id="modal" class="searchModal">
	<!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">인증번호 확인</h4>
      </div>
      <form id="target" action="./checkAuthKey.action" method="post">
      <div class="modal-body">
        <div class="input-group mb-3">
          <input type="text" class="form-control" id="number" name="number" placeholder="인증번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <div id="timer"></div>
            </div>
          </div>
         </div>
      </div>
      <div class="modal-footer">
      	<button type="button" id="okBtn" class="btn btn-default" data-dismiss="modal" >OK</button>
     
        <button type="button" id="closeBtn" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </form>
    </div>

</div>


<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>

</body>
</html>