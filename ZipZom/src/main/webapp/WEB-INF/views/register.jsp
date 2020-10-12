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
<script src="./resources/plugins/jquery/jquery.min.js" />
<script type="text/javascript">
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
		if( $('#address').val().trim() == "" ){
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
		
	});
});
</script>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>ZipZom</b>Register</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form action="./sign_up.do" method="post">
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
              <span class="fas fa-passport"></span>
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
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control"  id="address" name="address" placeholder="Address">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-map"></span>
            </div>
          </div>
        </div>
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
            <button type="submit"  id="btn" class="btn btn-primary btn-block">Register</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <a href="./start.jsp" class="text-center">I already have a membership</a>
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