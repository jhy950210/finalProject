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
 <script type="text/javascript">
  $(document).ready(function() {
      var param = null;
      readServer(param);
            
       $('#customerFind').on('click', function(){
         var param = $('#find').serialize();
         customerInfo(param);
         })
         
       $('#search').on('click', function(){
         param = $('#findrtp').serialize();
         $('#example2').DataTable().destroy();
        // $( '#myTable' ).empty();
         	readServer(param);
         })
        
         $('#btn').on('click', function() {
        	$('#example2').DataTable().destroy();
        	var value1 = '-- 시 --';
        	var value2 = '-- 구 --';
        	var value3 = '-- 동 --';
        	
        	value1 = $('#si option:selected').val();
        	value2 = $('#gu option:selected').val();
        	value3 = $('#dong option:selected').val();
        	console.log(value2);
        	if(value1 == '-- 시 --' && value2 == '-- 구 --' && value3 == '-- 동 --'){
        		readServer();
        	} else if(value1 != '-- 시 --' && value2 == '-- 구 --' && value3 == '-- 동 --'){
        		selectServer1(value1);
        	} else if(value1 != '-- 시 --' && value2 != '-- 구 --' && value3 == '-- 동 --'){
        		selectServer2(value1,value2);
        	}else {
        		selectServer3(value1,value2,value3);
        	}
        }) 
        
   
   });
   // ready 끝
      
                                            
     var readServer = function(param) {
	   if(param == null) {
       $.ajax({                         
          url: 'rtp_list.json',   
          type: 'get',                 
          dataType: 'json',            
          success: function( json ) {  
             $( '#myTable' ).empty();
             $.each( json.data, function( index, item ) {
                var mytable = '<tr>'
                	mytable += '<td>'+item.bType+'</td>';
                    mytable += '<td>'+item.si+'</td>';
                    mytable += '<td>'+item.gu+'</td>';
                    mytable += '<td>'+item.dong+'</td>';
                    mytable += '<td>'+item.bunji+'</td>';
                    mytable += '<td>'+item.bName+'</td>';
                    mytable += '<td>'+item.area2+'</td>';
                    mytable += '<td>'+item.contractDate1+'</td>';
                    mytable += '<td>'+item.contractDate2+'</td>';
                    mytable += '<td>'+item.price+'</td>' ;
                    mytable += '<td>'+item.floor+'</td>';
                    mytable += '<td>'+item.bYear+'</td>';
                    mytable += '<td>'+item.roadAddress+'</td></tr>';
                
                $( '#myTable' ).append( mytable );
             });
             $('#example2').DataTable({
                 "paging": true,
                 "lengthChange": false,
                 "displayLength": 5,
                 "searching": true,
                 "ordering": true,
                 "language":{
              	 "paginate":{
              		 "next":"다음",
              		 "previous":"이전"
              	 },
              	"search":"주소검색",
              	 "info":"현재 _START_-_END_ / _TOTAL_건",
              	"emptyTable": "데이터가 없어요."
                 },
                 "info": true,
                 "autoWidth": false,
                 "responsive": true,
                 "bDestroy": true
               });
          },
          error: function( e ) {
             alert( '서버 에러 ' + e );
          }
       })
	   } else {
		   $.ajax({                         
	             url: 'rtp_find.json',   
	             type: 'post',
	             data: param,
	             dataType: 'json',            
	             success: function( json ) { 
	                if(json.data != '' || json.data != null) {
	                $( '#myTable' ).empty();
	                $.each( json.data, function( index, item ) {
	                	var mytable = '<tr>'
	                		mytable += '<td>'+item.bType+'</td>';
	                        mytable += '<td>'+item.si+'</td>';
	                        mytable += '<td>'+item.gu+'</td>';
	                        mytable += '<td>'+item.dong+'</td>';
	                        mytable += '<td>'+item.bunji+'</td>';
	                        mytable += '<td>'+item.bName+'</td>';
	                        mytable += '<td>'+item.area2+'</td>';
	                        mytable += '<td>'+item.contractDate1+'</td>';
	                        mytable += '<td>'+item.contractDate2+'</td>';
	                        mytable += '<td>'+item.price+'</td>' ;
	                        mytable += '<td>'+item.floor+'</td>';
	                        mytable += '<td>'+item.bYear+'</td>';
	                        mytable += '<td>'+item.roadAddress+'</td></tr>';
	                   
	                   $( '#myTable' ).append( mytable );
	                });
	                $('#example2').DataTable({
	                    "paging": true,
	                    "lengthChange": false,
	                    "displayLength": 5,
	                    "searching": true,
	                    "ordering": true,
	                    "language":{
                      	 "paginate":{
                      		 "next":"다음",
                      		 "previous":"이전"
                      	 },
                      	"search":"주소검색",
                      	 "info":"현재 _START_-_END_ / _TOTAL_건",
                      	"emptyTable": "데이터가 없어요."
                       	},
	                    "info": true,
	                    "autoWidth": false,
	                    "responsive": true,
	                    "bDestroy": true
	                  });
	                } else {
	                	alert('맞는 매물이 없습니다');
	                }
	             },
	             error: function( e ) {
	                alert( '서버 에러 ' + e );
	             }
	          })
	   }
      }
      // readServer 끝
      
      var selectServer1 = function(value1) {    
             $.ajax({                         
                url: 'customer_list.json',   
                type: 'get',                 
                dataType: 'json',            
                success: function( json ) {  
                   $( '#tbody' ).empty();
                   $.each( json.data, function( index, item ) {
                	   if(item.si == value1) {
                		   var mytable = '<tr>'
   	                		mytable += '<td>'+item.bType+'</td>';
   	                        mytable += '<td>'+item.si+'</td>';
   	                        mytable += '<td>'+item.gu+'</td>';
   	                        mytable += '<td>'+item.dong+'</td>';
   	                        mytable += '<td>'+item.bunji+'</td>';
   	                        mytable += '<td>'+item.bName+'</td>';
   	                        mytable += '<td>'+item.area2+'</td>';
   	                        mytable += '<td>'+item.contractDate1+'</td>';
   	                        mytable += '<td>'+item.contractDate2+'</td>';
   	                        mytable += '<td>'+item.price+'</td>' ;
   	                        mytable += '<td>'+item.floor+'</td>';
   	                        mytable += '<td>'+item.bYear+'</td>';
   	                        mytable += '<td>'+item.roadAddress+'</td></tr>';
                      
                      $( '#tbody' ).append( html );
                	   }
                   });
                  table();
                },
                error: function( e ) {
                   alert( '서버 에러 ' + e );
                }
             })
		}
      // selectServer1 끝
      
      var selectServer2 = function(value1) {    
             $.ajax({                         
                url: 'customer_list.json',   
                type: 'get',                 
                dataType: 'json',            
                success: function( json ) {  
                   $( '#tbody' ).empty();
                   $.each( json.data, function( index, item ) {
                	   if(item.si == value1 && item.gu == value2) {
                		   var mytable = '<tr>'
   	                		mytable += '<td>'+item.bType+'</td>';
   	                        mytable += '<td>'+item.si+'</td>';
   	                        mytable += '<td>'+item.gu+'</td>';
   	                        mytable += '<td>'+item.dong+'</td>';
   	                        mytable += '<td>'+item.bunji+'</td>';
   	                        mytable += '<td>'+item.bName+'</td>';
   	                        mytable += '<td>'+item.area2+'</td>';
   	                        mytable += '<td>'+item.contractDate1+'</td>';
   	                        mytable += '<td>'+item.contractDate2+'</td>';
   	                        mytable += '<td>'+item.price+'</td>' ;
   	                        mytable += '<td>'+item.floor+'</td>';
   	                        mytable += '<td>'+item.bYear+'</td>';
   	                        mytable += '<td>'+item.roadAddress+'</td></tr>';
                      
                      $( '#tbody' ).append( html );
                	   }
                   });
                  table();
                },
                error: function( e ) {
                   alert( '서버 에러 ' + e );
                }
             })
		}
      // selectServer2 끝
      
      var selectServer3 = function(value1) {    
             $.ajax({                         
                url: 'customer_list.json',   
                type: 'get',                 
                dataType: 'json',            
                success: function( json ) {  
                   $( '#tbody' ).empty();
                   $.each( json.data, function( index, item ) {
                	   if(item.si == value1 && item.gu == value2 && item.dong == value3) {
                		   var mytable = '<tr>'
   	                		mytable += '<td>'+item.bType+'</td>';
   	                        mytable += '<td>'+item.si+'</td>';
   	                        mytable += '<td>'+item.gu+'</td>';
   	                        mytable += '<td>'+item.dong+'</td>';
   	                        mytable += '<td>'+item.bunji+'</td>';
   	                        mytable += '<td>'+item.bName+'</td>';
   	                        mytable += '<td>'+item.area2+'</td>';
   	                        mytable += '<td>'+item.contractDate1+'</td>';
   	                        mytable += '<td>'+item.contractDate2+'</td>';
   	                        mytable += '<td>'+item.price+'</td>' ;
   	                        mytable += '<td>'+item.floor+'</td>';
   	                        mytable += '<td>'+item.bYear+'</td>';
   	                        mytable += '<td>'+item.roadAddress+'</td></tr>';
                      
                      $( '#tbody' ).append( html );
                	   }
                   });
                  table();
                },
                error: function( e ) {
                   alert( '서버 에러 ' + e );
                }
             })
		}
      // selectServer3 끝
      
            
      var customerInfo = function(param) {
    	         $.ajax({
    	          url: 'customerFind.json',
    	          type: 'post',
    	          data:param,
    	          dataType: 'json',
    	          success: function( json ) {
    	        	  $.each( json, function( index, item ) {
    	             if(json[name] != '') {
    	            	 //$('#findname').val(json[name]);
    	            	 //console.log(index + ' ' + json[index]);
    	            	 $('#'+index).val(json[index]);
    	             } else {
    	                alert('고객이 없습니다')
    	             }
    	       });
    	          },
    	          error: function( e ) {
    	             alert( '서버 에러 ' + e );
    	          }
    	       })
    	      };
    	      
    	      var rtpList = function(param) {    
    	          $.ajax({                         
    	             url: 'rtp_find.json',   
    	             type: 'post',
    	             data: param,
    	             dataType: 'json',            
    	             success: function( json ) { 
    	                if(json.data != '' || json.data != null) {
    	                $( '#myTable' ).empty();
    	                $('#example2').DataTable().destroy();
    	                $.each( json.data, function( index, item ) {
    	                	var mytable = '<tr>'
    	                		mytable += '<td>'+item.bType+'</td>';
    	                        mytable += '<td>'+item.si+'</td>';
    	                        mytable += '<td>'+item.gu+'</td>';
    	                        mytable += '<td>'+item.dong+'</td>';
    	                        mytable += '<td>'+item.bunji+'</td>';
    	                        mytable += '<td>'+item.bName+'</td>';
    	                        mytable += '<td>'+item.area2+'</td>';
    	                        mytable += '<td>'+item.contractDate1+'</td>';
    	                        mytable += '<td>'+item.contractDate2+'</td>';
    	                        mytable += '<td>'+item.price+'</td>' ;
    	                        mytable += '<td>'+item.floor+'</td>';
    	                        mytable += '<td>'+item.bYear+'</td>';
    	                        mytable += '<td>'+item.roadAddress+'</td></tr>';
    	                   
    	                   $( '#myTable' ).append( mytable );
    	                });
    	                $('#example2').DataTable({
    	                    "paging": true,
    	                    "lengthChange": false,
    	                    "displayLength": 5,
    	                    "searching": true,
    	                    "ordering": true,
    	                    "language":{
   	                      	 "paginate":{
   	                      		 "next":"다음",
   	                      		 "previous":"이전"
   	                      	 },
   	                      	"search":"주소검색",
   	                      	 "info":"현재 _START_-_END_ / _TOTAL_건",
   	                      	"emptyTable": "데이터가 없어요."
   	                       	},
    	                    "info": true,
    	                    "autoWidth": false,
    	                    "responsive": true,
    	                    "bDestroy": true
    	                  });
    	                } else {
    	                	alert('맞는 매물이 없습니다');
    	                }
    	             },
    	             error: function( e ) {
    	                alert( '서버 에러 ' + e );
    	             }
    	          })
    	         }
</script>
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
      <form name="findrtp" id="findrtp" >       
   	  	<!-- 카드 헤더 -->
	  	<div class="card-header">
			<h3 class="card-title">정보 입력</h3> 
		</div>
		
		<!-- 카드 바디 -->
		<div class="card-body">
			<div class="form-group row">
				<section class="col-md-3">		
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

					</div>
           		</section>
			</div>
			
			<div class="card">
				
				<div class="form-group row" style="margin-left: 10px;">
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 계약 유형 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">계약 유형</span>
						<input type="text" class="form-control" id="findcontractType" name="contractType" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 매매 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">매매 예산</span>
						<input type="text" class="form-control" id="findbudgetT1" name="budgetT1" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 보증금 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">보증금 예산</span>
						<input type="text" class="form-control" id="findbudgetT2" name="budgetT2" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 보증금 예산 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">월세 예산</span>
						<input type="text" class="form-control" id="findbudgetT3" name="budgetT3" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
				
				</div>
				
				
				<div class="form-group row" style="margin-left: 10px;">
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 건물 용도 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">건물 용도</span>
						<input type="text" class="form-control" id="findbType" name="bType" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 전용 면적 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">전용 면적</span>
						<input type="text" class="form-control" id="findarea2" name="area2" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>
					
					<section class="col-md-3">		
						<div class="input-group">
						<!-- 건축 년도 -->
		         		<span style="margin-right: 10px; margin-top: 10px;">건축 년도</span>
						<input type="text" class="form-control" id="findbYear" name="bYear" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
						</div>
					</section>

				
				</div>
				<section>
							<button type="button" id="search" class="btn btn-primary" style="width: 150px; margin-top:5px;">
              				검색하기
              				</button>
						</section>
				</form>
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
			<table id="example2" class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>건물</th>
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
				<tbody id="myTable">
					
				</tbody>         
			</table>
			
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

</body>
</html>