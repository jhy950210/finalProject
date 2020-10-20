<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZipZom</title>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
 
</head>
<body>


<!-- dialog -->
<div class="modal fade" id="modal-match">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- modal 헤더 -->
			<div class="modal-header">
				<!-- modal 머릿말 -->
				<h4 class="modal-title"></h4>
					<!-- modal창 닫기 버튼 -->
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                	<span aria-hidden="true">&times;</span>
              		</button>
            </div>
            
            <!-- modal 바디 -->
            <div class="modal-body" style="font-family: 'Helvetica', sans-serif; color: #085ee4; font-weight: bold;">
		            <div class="card card-primary card-outline card-outline-tabs">
						<!-- 카드 헤더 -->
						<div class="card-header p-0 border-bottom-0">
							고객 찾기
						</div>
						
						<!-- 카드 바디 -->
						<form name="find" id="find">
						<div class="card-body">
						
		                	<div class="form-group">
		                		<section>
									<div class="input-group">
									
										<div class="col-md-4">
											<span>이름</span>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="name" name="name" placeholder="이름" style="width: 150px;">
										</div>
									</div>
								</section>
								<section>
									<div class="input-group">
										<div class="col-md-4">
											<span>연락처</span>
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control" id="tel" name="tel" placeholder="연락처" style="width: 150px;">
										</div>
									</div>
								</section>
								<section>
									<div>
									<button type="button"  id="customerFind" class="btn btn-primary btn-block" data-dismiss="modal">고객 찾기</button>
									</div>
								</section>
							</div>

						</div>
						</form>
					</div>
				

			<!-- 카드 바디 -->
            </div>          
        </div>
	</div>
</div>

        

<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
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

</body>
</html>