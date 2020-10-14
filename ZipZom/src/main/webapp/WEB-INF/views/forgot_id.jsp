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

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#btn").button().on('click', function() {
		var name = $('#name').val();
		var email = $('#email').val();
		forgotOk( name, email ); // id email 일치 확인
	});
	
	$("#okBtn").button().on('click', function() {
		location.href = "./start.action"; // 로그인화면 가기
	});
	
	$("#closeBtn").button().on('click', function() {
		$("#modal").hide(); // 모달 닫기
	});
	
});

var forgotOk = function( name, email ){
	$.ajax({
		url: './findId.action',
		data: {
			name: name,
			email: email
		},
		type: 'post',
		datatype: 'json',
		success: function( json ) {
			if( json.flag == 1 ){
				alert('ID 찾기 성공');
				$('#findId').text(json.id); 
				$("#myModal").show(); // 모달 열기
				
			} else {
				alert("일치하는 ID가 없습니다.");
			}
			
		}
	}); 
}

</script>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>ID</b>Find</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">You forgot your ID? Here you can easily retrieve a new password.</p>

      <form action="./sendNumber.action" method="post">
        <div class="input-group mb-3">
          <input type="text"  id="name" name="name" class="form-control" placeholder="Name">
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
            <button type="button"  id="btn" class="btn btn-primary btn-block">ID 찾기</button>
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

<div id="myModal" class="modal">
     <div class="modal-dialog">
          <div class="modal-content">
               <div class="modal-header">
               		<h4 class="modal-title">찾은 ID</h4>
               </div>
               <div class="modal-body">
                    <div id="findId"></div>
               </div>
               <div class="modal-footer">
                    <button type="button" id="closeBtn" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <button type="button" id="okBtn" class="btn btn-primary">로그인하러 가기</button>
               </div>
          </div>
     </div>
</div>

<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>

</body>
</html>