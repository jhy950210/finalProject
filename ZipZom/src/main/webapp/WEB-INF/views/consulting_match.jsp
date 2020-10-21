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
  <script type="text/javascript">
  $(document).ready(function() {
      var param = null;
      readServer(param);
      
      $("#example2 tbody").on("click","tr",function(){    
      //console.log($(this).find('td:eq(0)').text());
         viewServer($(this).find('td:eq(0)').text());
      });
      
      
       $('#customerFind').on('click', function(){
         var param = $('#find').serialize();
         customerInfo(param);
         })
         
       $('#search').on('click', function(){
         param = $('#findpfs').serialize();
         $('#example2').DataTable().destroy();
        // $( '#myTable' ).empty();
         	readServer(param);
         })
        
         
       $('#report').on('click', function() {
         var checkbox = $('input:checkbox[name="selectPfs"]:checked');
         var check = new Array();
         var seqC = $('#number').val();
         checkbox.each(function(index) {
            check[index] = checkbox[index].value;
            //console.log(index + seqC);
         })
         if(seqC == '') {
        	 alert('고객을 검색해주세요');
         }
         else if(check[1] == null && check[0] != null) {
        	 location.href = './report.do?seqC='+seqC+'&seqPfs='+check[0];
         }
         else if(check[2] == null && check[1] != null){
            location.href = './report.do?seqC='+seqC+'&seqPfs='+check[0]+'&seqPfs='+check[1];
         } else if(check[2] != null) {
            location.href = './report.do?seqC='+seqC+'&seqPfs='+check[0]+'&seqPfs='+check[1]+'&seqPfs='+check[2]
         } else {
            alert('3개까지 선택 가능합니다.');
         }
      }) 
   
   });
   // ready 끝
      
                                            
     var readServer = function(param) {
	   if(param == null) {
       $.ajax({                         
          url: 'pfs_list.json',   
          type: 'get',                 
          dataType: 'json',            
          success: function( json ) {  
             $( '#myTable' ).empty();
             $.each( json.data, function( index, item ) {
                var mytable = '<tr data-toggle="modal" data-target="#modal2" >'
                   mytable += '<th onclick="event.cancelBubble=true">';
                   mytable += '<div class="custom-control custom-checkbox">';
                   mytable += '<input class="custom-control-input" type="checkbox" name="selectPfs" id="customCheckbox'+index+'" value="'+item.seqPfs+'">';
                   mytable += '<label for="customCheckbox'+index+'" class="custom-control-label"></label></div></th>';
                   mytable += '<td>'+item.seqPfs+'</td>';
                    mytable += '<td>'+item.bType+'</td>';
                    mytable += '<td>'+item.contractType+'</td>';
                    mytable += '<td>'+item.si+' '+item.gu+' '+' '+item.dong+' '+item.bunji+' '+item.hNumber+'</td>';
                    mytable += '<td>'+item.budget1+'</td>';
                    mytable += '<td>'+item.budget2+'</td>' ;
                    mytable += '<td>'+item.budget3+'</td>';
                    mytable += '<td>'+item.loan+'</td>';
                    mytable += '<td>'+item.wdate+'</td></tr>';
                
                $( '#myTable' ).append( mytable );
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
                 "bDestroy": true
               });
          },
          error: function( e ) {
             alert( '서버 에러 ' + e );
          }
       })
	   } else {
		   $.ajax({                         
	             url: 'pfs_find.json',   
	             type: 'post',
	             data: param,
	             dataType: 'json',            
	             success: function( json ) { 
	                if(json.data != '' || json.data != null) {
	                $( '#myTable' ).empty();
	                $.each( json.data, function( index, item ) {
	                   var mytable = '<tr data-toggle="modal" data-target="#modal2" >'
	                      mytable += '<th onclick="event.cancelBubble=true">';
	                      mytable += '<div class="custom-control custom-checkbox">';
	                      mytable += '<input class="custom-control-input" type="checkbox" name="selectPfs" id="customCheckbox'+index+'" value="'+item.seqPfs+'">';
	                      mytable += '<label for="customCheckbox'+index+'" class="custom-control-label"></label></div></th>';
	                      mytable += '<td>'+item.seqPfs+'</td>';
	                       mytable += '<td>'+item.bType+'</td>';
	                       mytable += '<td>'+item.contractType+'</td>';
	                       mytable += '<td>'+item.si+' '+item.gu+' '+' '+item.dong+' '+item.bunji+' '+item.hNumber+'</td>';
	                       mytable += '<td>'+item.budget1+'</td>';
	                       mytable += '<td>'+item.budget2+'</td>' ;
	                       mytable += '<td>'+item.budget3+'</td>';
	                       mytable += '<td>'+item.loan+'</td>';
	                       mytable += '<td>'+item.wdate+'</td></tr>';
	                   
	                   $( '#myTable' ).append( mytable );
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
      
      
      var viewServer = function(seqPfs) {
          $.ajax({
              url: 'pfs_view.json?seqPfs='+seqPfs,
              type: 'get',
              dataType: 'json',
              success: function( json ) {
                 $.each( json, function( index, item ) {
                     // json이 json index는 키값 item은 value값
                    //console.log(item)
                     var name = ''+ document.getElementById(index).getAttribute('name');
                     //console.log(item);
                     console.log(index + name);
                     if(name == 'rooms') {
                        json['room'] = json['room'] + '개';
                        $('#form2').find('#room').val(json['room']);
                        console.log(name);
                        console.log(json['room']);
                     } 
                     if(name == 'bathrooms') {
                        json['bathroom'] = json['bathroom'] + '개';
                          $('#form2').find('#bathroom').val(json['bathroom']);
                          console.log('bath' + json['bathroom']);
                     } 
                    $('#form2').find('#'+index).val(json[index]);
                    
                    
                    if($('#form2').find('#'+index).attr('type') == 'checkbox' && json[name] == 1){
                       $('#form2').find('#'+index).prop("checked", true); 
                    }
                   });
              },
              error: function( e ) {
                 alert( '서버 에러 ' + e );
              }
           })
      }
      // viewServer 끝
      
      
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
    	            	 //$('#number').val(json[number]);
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
    	      
    	      var pfsList = function(param) {    
    	          $.ajax({                         
    	             url: 'pfs_find.json',   
    	             type: 'post',
    	             data: param,
    	             dataType: 'json',            
    	             success: function( json ) { 
    	                if(json.data != '' || json.data != null) {
    	                $( '#myTable' ).empty();
    	                $('#example2').DataTable().destroy();
    	                $.each( json.data, function( index, item ) {
    	                   var mytable = '<tr data-toggle="modal" data-target="#modal2" >'
    	                      mytable += '<th onclick="event.cancelBubble=true">';
    	                      mytable += '<div class="custom-control custom-checkbox">';
    	                      mytable += '<input class="custom-control-input" type="checkbox" name="selectPfs" id="customCheckbox'+index+'" value="'+item.seqPfs+'">';
    	                      mytable += '<label for="customCheckbox'+index+'" class="custom-control-label"></label></div></th>';
    	                      mytable += '<td>'+item.seqPfs+'</td>';
    	                       mytable += '<td>'+item.bType+'</td>';
    	                       mytable += '<td>'+item.contractType+'</td>';
    	                       mytable += '<td>'+item.si+' '+item.gu+' '+' '+item.dong+' '+item.bunji+' '+item.hNumber+'</td>';
    	                       mytable += '<td>'+item.budget1+'</td>';
    	                       mytable += '<td>'+item.budget2+'</td>' ;
    	                       mytable += '<td>'+item.budget3+'</td>';
    	                       mytable += '<td>'+item.loan+'</td>';
    	                       mytable += '<td>'+item.wdate+'</td></tr>';
    	                   
    	                   $( '#myTable' ).append( mytable );
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
                  <li class="breadcrumb-item active">맞춤 매물</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
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
               <input type="text" class="form-control" id="findname" placeholder="이름" style="width: 100px; margin-right: 10px; margin-top: 5px;" readonly>
               <input type="hidden" name="number" id="number" value="" />
               <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-match" style="width: 70px; margin-top:5px;">
              		찾기
              	</button>
               </div>

            </section>
            
         </div>
         
         
         <div class="card">
         <form name="findpfs" id="findpfs" >
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
                  <!-- 월세 예산 -->
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
            
            <div class="form-group row" style="margin-left: 10px;">
               <section class="col-md-3">      
                  <div class="input-group">
                  <!-- 방 개수 -->
                     <span style="margin-right: 20px; margin-top: 10px;">방 개수</span>
                  <input type="text" class="form-control" id="findroom" name="room" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
                  </div>
               </section>
               
               <section class="col-md-3">
                  <div class="input-group">
                  <!-- 층 수 -->
                     <span style="margin-right: 35px; margin-top: 10px;">층 수</span>
                  <input type="text" class="form-control" id="findfloor" name="floor" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
                  </div>
               </section>
               
               <section class="col-md-3">      
                  <div class="input-group">
                  <!-- 승강기 -->
                     <span style="margin-right: 20px; margin-top: 10px;">승강기</span>
                  <input type="text" class="form-control" id="findelevator" name="elevator" placeholder="" style="width: 150px; margin-right: 10px; margin-top: 5px;" readonly>
                  </div>
               </section>
            
            </div>
            
         
         <div>
            <button type="button" id="search" class="btn btn-primary">검색하기</button>
         </div>
         </form>
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
               <th>매물 번호</th>
                    <th>타입</th>
                    <th>거래 유형</th>
                    <th>매물 주소</th>
                    <th>매도금액</th>
                    <th>(현)보증금</th>
                    <th>(현)월임대료</th>
                    <th>융자금</th>
                    <th>등록일</th>
                  </tr>
                  </thead>
                  <tbody id="myTable" >
                  </tbody>             
                </table>
                <div class="modal-footer justify-content-left">
                
            <button type="button" id="report" class="btn btn-primary">매물 보고서</button>
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
<%-- <jsp:include page = "./footer.jsp" flush = "false"/> --%>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- 다이얼로그창 인클루드 -->
<jsp:include page="./consulting_match_dialog.jsp"></jsp:include>
<jsp:include page="./pfs_modify_dialog2.jsp"></jsp:include>

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

</body>
</html>