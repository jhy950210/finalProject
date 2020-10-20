<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ZipZom | Change Password</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="./resources3/css/animate.css">
  <!-- Custom Stylesheet -->
  <link rel="stylesheet" href="./resources3/css/style.css">
    
  <!-- jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="./resources/plugins/jquery/jquery.min.js"></script>
  
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
$(document).ready(function() {
	$("#okBtn").button().on('click', function() {
		var email = "<%=request.getParameter("email") %>";
		var password = $('#password').val();
		var checkPassword = $('#checkPassword').val();
		console.log( password );
		console.log( checkPassword );
		if( password == checkPassword ){
			alert('비밀번호 일치');
			checkPasswordOk( password, email );
		} else {
			alert('비밀번호 일치하지 않음');
		}
	});

});

var checkPasswordOk = function( password, email ){
	$.ajax({
		url: './changePassword.action',
		data: {
			password: password,
			email: email
		},
		type: 'post',
		datatype: 'json',
		success: function( json ) {
			if( json.flag == 1 ){
				alert('성공');
				location.href = "./start.action";
			} else {
				alert("실패");
				//location.href = "./start.action";
			}
		}
	}); 
}

</script>
<body>
<div class="login-box">
 <div class="box-searchID">
  <div class="login-logo">
    <a href="#"><b>Password</b>Change</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">변경하실 새로운 비밀번호를 입력해주세요.</p>

      <form action="./changePassword.action" method="post">
        <div class="input-group mb-3">
          <input type="text"  id="password" name="password" class="form-control" placeholder="새 비밀번호">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-password"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text"  id="checkPassword" name="checkPassword" class="form-control" placeholder="비밀번호 확인">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-password"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <button type="button"  id="okBtn" >변경</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    </div>
    <!-- /.login-card-body -->
  </div>
 </div>
</div>
<!-- /.login-box -->

<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>

</body>
</html>