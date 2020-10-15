<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Schedule</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="./resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="./resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="./resources/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./resources/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="./resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="./resources/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="./resources/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
   <link rel="stylesheet" href="./vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="./vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='./vendor/css/select2.min.css' />
    <link rel="stylesheet" href='./vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="./resources/css/main.css">

</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

<jsp:include page="./sideBar.jsp" flush="false" />

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">일정 관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Schedule</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- <div class="col-lg-6"> -->
            
            <!-- Calendar -->
          <!-- <div class="container"> -->

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:absolute;top: -20px; left: -25px;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">일정 추가</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<h4 class="modal-title"></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">날짜</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-customer">고객</label>
                                <input class="inputModal" type="text" name="edit-customer" id="edit-customer1"
                                    required="required" style="width:22%" placeholder="연락처"/>
                                <input class="inputModal" type="text" name="edit-customer" id="edit-customer2"
                                	required="required" style="width:21%" placeholder="고객명"/>
                                <select class="inputModal" type="text" name="edit-customer" id="edit-customer3"  style="width:20.5%">
                                    <option value="" hidden>선택</option>
                                    <option value="카테고리1">매도인</option>
                                    <option value="카테고리2">매수인</option>
                                    <option value="카테고리3">임대인</option>
                                    <option value="카테고리4">임차인</option>
                                    <option value="카테고리5">중개인</option>
                                    <option value="카테고리6">집주인</option>
                                    <option value="카테고리7">일반상담</option>
                                </select>
                            </div>
                        </div>
                        <!-- 
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                         -->
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type1">일정구분</label>
                                <select class="inputModal" type="text" name="edit-type1" id="edit-type1">
                                	<option value="" hidden>선택</option>
                                    <option value="카테고리1">전화상담</option>
                                    <option value="카테고리2">방문상담</option>
                                    <option value="카테고리3">계약일</option>
                                    <option value="카테고리4">중도금일</option>
                                    <option value="카테고리5">잔금일</option>
                                    <option value="카테고리6">계약일</option>
                                    <option value="카테고리7">만기일</option>
                                    <option value="카테고리8">매물방문</option>
                                    <option value="카테고리9">기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type2">일정상태</label>
                                <select class="inputModal" type="text" name="edit-type2" id="edit-type2">
                                	<option value="" hidden>선택</option>
                                    <option value="카테고리1">진행중</option>
                                    <option value="카테고리2">대기중</option>
                                    <option value="카테고리3">완료</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type3">매물종류</label>
                                <select class="inputModal" type="text" name="edit-type3" id="edit-type3">
                                	<option value="" hidden>선택</option>
                                    <option value="카테고리1">아파트</option>
                                    <option value="카테고리2">오피스텔</option>
                                    <option value="카테고리3">연/빌/다세대</option>
                                    <option value="카테고리4">단독/다가구</option>
                                    <option value="카테고리5">도시형 생활주택</option>
                                    <option value="카테고리6">원룸</option>
                                    <option value="카테고리7">상가</option>
                                    <option value="카테고리8">사무실</option>
                                    <option value="카테고리9">건물(전체매매)</option>
                                    <option value="카테고리10">토지</option>
                                    <option value="카테고리11">공장/창고</option>
                                    <option value="카테고리12">분양권</option>
                                    <option value="카테고리13">지식산업센터</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type4">거래유형</label>
                                <select class="inputModal" type="text" name="edit-type4" id="edit-type4">
                                	<option value="" hidden>선택</option>
                                    <option value="카테고리1">매매</option>
                                    <option value="카테고리2">월세</option>
                                    <option value="카테고리3">전세</option>
                                    <option value="카테고리4">연세</option>
                                </select>
                            </div>
                        </div>
                       <!--  <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        -->
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">일정내용</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                            	<input id="edit-allDay" type="checkbox" style="color:#D25565;">
                                <label class="col-xs-4" for="edit-allDay" style="color:#D25565; font-size: 8pt;">중요일정일 경우 체크</label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!-- /.filter panel -->
    </div>
    <!-- /.container -->
    </div>
    </div>
    </div>
    <!--  </div> -->
    <!--  </div> -->
  
  <jsp:include page="footer.jsp" flush="false" />
  
  </div>
<!-- ./wrapper -->
	
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Sparkline -->
<script src="./resources/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="./resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="./resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- AdminLTE App -->
<script src="./resources/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="./resources/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="./resources/js/demo.js"></script>
<!-- overlayScrollbars -->
<script src="./resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="./vendor/js/jquery.min.js"></script>
    <script src="./vendor/js/bootstrap.min.js"></script>
    <script src="./vendor/js/moment.min.js"></script>
    <script src="./vendor/js/fullcalendar.min.js"></script>
    <script src="./vendor/js/ko.js"></script>
    <script src="./vendor/js/select2.min.js"></script>
    <script src="./vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="./resources/js/main.js"></script>
    <script src="./resources/js/addEvent.js"></script>
    <script src="./resources/js/editEvent.js"></script>
    <script src="./resources/js/etcSetting.js"></script>
</body>
</html>
