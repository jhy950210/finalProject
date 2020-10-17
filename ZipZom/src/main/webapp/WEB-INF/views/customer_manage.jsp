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
<!-- datepicker -->
<link rel="stylesheet" href="./resources/plugins//jquery-ui/jquery-ui.css">
<!-- daterange picker -->
<link rel="stylesheet" href="./resources/plugins/daterangepicker/daterangepicker.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
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
        readServer(0);
		
        
        $('#customerWrite').on('click', function(){
           var params = $('#cfrm').serialize();
           writeServer(params);
        })
        
        

        $("#example2 tbody").on("click","tr",function(){ 	
			//console.log($(this).find('td:eq(0)').text());
        	viewServer($(this).find('td:eq(0)').text());

        });
        
        $('#customerModify').on('click', function(){
            var params = $('#mcfrm').serialize();
            modifyServer(params);
         })
		$('#deleteCustomer').on('click', function(){
			var checkbox = $('input:checkbox[name="selectCustomer"]:checked');
			var check = new Array();
			checkbox.each(function(index) {
				check[index] = checkbox[index].value;
			})
			deleteServer(check);
        })        

     });
     // ready 끝
        
                                              
           var readServer = function(flag) {    
         $.ajax({                         
            url: 'customer_list.json',   
            type: 'get',                 
            dataType: 'json',            
            success: function( json ) {  
               $( '#tbody' ).empty();
               $.each( json.data, function( index, item ) {
                  var html = '<tr data-toggle="modal" data-target="#modal-modify" ><th onclick="event.cancelBubble=true"><div class="custom-control custom-checkbox">';
                  html +=   '<input class="custom-control-input" type="checkbox" name="selectCustomer" id="customCheckbox'+ index+'" value="'+item.seqC+'">'
                  html += '<label for="customCheckbox'+index+'" class="custom-control-label"></label>';
                  html += '</div></th>';
                  html += '<td>'+ item.seqC +'</td>';
                  html += '<td>'+ item.bType +'</td>';
                  html += '<td>'+ item.name+'</td>';
                  html += '<td>'+ item.tel +'</td>';
                  html += '<td>'+ item.type +'</td>';
                  html += '<td>'+ item.progress +'</td>';
                  html += '<td>'+ item.contractType +'</td>';
                  html += '<td>'+ item.visitDate +'</td></tr>';
                  
                  $( '#tbody' ).append( html );
                  
               });
               //if(flag == 0){
               $('#example2').DataTable({
                     "paging": true,
                     "lengthChange": false,
                     "displayLength": 5,
                     "searching": true,
                     "ordering": false,
                     "info": true,
                     "autoWidth": true,
                     "responsive": true,
                     "bDestroy": true
                   });
            //}

            },
            error: function( e ) {
               alert( '서버 에러 ' + e );
            }
         })
        }
        // readServer 끝
        
        var writeServer = function(params) {
           $.ajax({
            url: 'customer_write.json',
            type: 'post',
            data:params,
            
            dataType: 'json',
            success: function( data ) {
               if(data.flag == 1) {
                  $('#example2').DataTable().destroy();
                  readServer(1);
               } else {
                  alert('잘못 입력했습니다')
               }
            },
            error: function( e ) {
               alert( '서버 에러 ' + e );
            }
         })
        };
        // writeServer 끝
        var viewServer = function(seqC) {
           $.ajax({
            url: 'customer_view.json?seqC='+seqC,
            type: 'get',
            dataType: 'json',
            success: function( json ) {
            	$.each( json, function( index, item ) {
                   // json이 json index는 키값 item은 value값
            		//console.log(item)
            		var name = ''+ document.getElementById(index).getAttribute('name');
                   console.log(index);
                   if(name == 'rooms') {
                	   json['room'] = json['room'] + '개';
                	   $('#mcfrm').find('#room').val(json['room']);
                	   console.log(name);
                	   console.log(json['room']);
                   }
            		$('#mcfrm').find('#'+name).val(json[index]);
            		
            		
            		if($('#mcfrm').find('#'+name).attr('type') == 'checkbox' && json[index] == 1){
            			$('#mcfrm').find('#'+name).prop("checked", true);
            		}
                  // console.log($('#mcfrm').find('#'+name));
                   //console.log(json[index]);
               //	$('#name').val(json.name);
                 });
            },
            error: function( e ) {
               alert( '서버 에러 ' + e );
            }
         })
        };
        // viewServer 끝
        
        var modifyServer = function(params) {
           $.ajax({
            url: 'customer_modify.json',
            type: 'post',
            data:params,
            dataType: 'json',
            success: function( data ) {
               if(data.flag == 1) {
                  $('#example2').DataTable().destroy();
                  readServer();
               } else {
                  alert('잘못 입력했습니다')
               }
            },
            error: function( e ) {
               alert( '서버 에러 ' + e );
            }
         })
        };
  			// modifyServer 끝
  			
  		var deleteServer = function(check) {
           $.ajax({
            url: 'customer_delete.json',
            type: 'get',
            traditional: true,
            data:{
            	check:check
            	},
            dataType: 'json',
            success: function( data ) {
               if(data.flag == 1) {
                  $('#example2').DataTable().destroy();
                  readServer(1);
               } else {
                  alert('잘못 입력했습니다')
               }
            },
            error: function( e ) {
               alert( '서버 에러 ' + e );
            }
         })
        };
        
        
  
  </script>
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
               <h1>고객 관리</h1>
            </div>
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">고객 관리</li>
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
            <h3 class="card-title">고객 정보</h3> 
         </div>
         <!-- 본문 내용 -->
         <div class="card-body" >
              <div class="form-group clearfix">
               <div class="col">
                  <div class="form-group row">
                     <span style="font-family: 'Helvetica', sans-serif; font-weight: bold; margin-right: 10px; margin-top: 5px;">고객 상태</span>
                     <select class="form-control select2bs4" style="width: 200px;">
                        <option value="none">선택</option>
                        <option>계약대기</option>
                        <option>계약진행</option>
                        <option>계약완료</option>
                        <option>방문예정</option>
                        <option>기타</option>
                     </select>
                  </div>
                  <br/>
                  
                  <div class="form-group row" style="margin-right: 10px; margin-top: 10px;">
                     <section>
                        <div class="input-group md-3">
                           <span style="font-family: 'Helvetica', sans-serif; font-weight: bold; margin-right: 10px; margin-top: 5px;">고객 속성</span>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px; ">
                                 <input type="checkbox" id="checkboxPrimary1" name="r1" value="1" checked>
                                 <label for="checkboxPrimary1">
                                 <span>전체</span>
                                 </label>
                                 </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary2" name="r2">
                                    <label for="checkboxPrimary2">
                              <span>매도인</span>
                                    </label>
                           </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary3" name="r3">
                                    <label for="checkboxPrimary3">
                                    <span>매수인</span>
                                    </label>
                           </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary4" name="r4" >
                                    <label for="checkboxPrimary4">
                                    <span>임대인</span>
                                    </label>
                           </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary5" name="r5" >
                                    <label for="checkboxPrimary5">
                                    <span>임차인</span>
                                    </label>
                           </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary6" name="r6" >
                                    <label for="checkboxPrimary6">
                                    <span>집주인</span>
                                    </label>
                           </div>
                        </div>
                     </section>
                     
                     <section>
                        <div class="input-group md-3">
                           <div class="icheck-primary d-inline" style="margin-right: 20px;" >
                                    <input type="checkbox" id="checkboxPrimary7" name="r7" >
                                    <label for="checkboxPrimary7">
                                    <span>일반상담</span>
                                    </label>
                           </div>
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
         </div>
         

    <!-- 고객리스트 테이블 -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
            <h3 class="card-title">고객 목록</h3> 
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
               <th></th>
               <th style="width:7%;">번호</th>
               		<th>매물</th>
                    <th>이름</th>
                    <th>연락처</th>
                    <th>고객 타입</th>
                    <th>진행 상태</th>
                    <th>계약 타입</th>
                    <th>방문일</th>
                  </tr>
                  </thead>
                  <tbody id="tbody">
                  </tbody>         
                </table>
                <div class="modal-footer justify-content-left">
                   <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-xl" style="width: 100px;">
               신규 등록
               </button>
               <button type="button" id="deleteCustomer" class="btn btn-primary">선택 삭제</button>
               
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
</section>
  <!-- footer include -->
<jsp:include page = "./footer.jsp" flush = "false"/>


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
</div>
<!-- ./wrapper -->

<!-- 다이얼로그창 인클루드 -->
<jsp:include page="./customer_resister_dialog.jsp"></jsp:include>
<jsp:include page="./customer_modify.jsp"></jsp:include>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- <!-- Select2
<script src="./resources/plugins/select2/js/select2.full.min.js"></script> -->
<!-- Bootstrap4 Duallistbox -->
<script src="./resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="./resources/plugins/moment/moment.min.js"></script>
<script src="./resources/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="./resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- datepicker -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- date-range-picker -->
<script src="./resources/plugins/daterangepicker/daterangepicker.js"></script>
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
<!-- Page script -->
<!-- DataTables -->
<script src="./resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="./resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="./resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script>
  $(function () {
    
    //Date picker
    $( '#datepicker' ).datepicker()

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
    //$('.duallistbox').bootstrapDualListbox()

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