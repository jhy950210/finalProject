<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='vendor/css/select2.min.css' />
    <link rel="stylesheet" href='vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="css/main.css">

</head>

<body>
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
	<input type="hidden" value="<%=session.getAttribute("seqU") %>" id="pseqS">
    <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">전화상담</a></li>
                <li><a tabindex="-1" href="#">방문상담</a></li>
                <li><a tabindex="-1" href="#">계약일</a></li>
                <li><a tabindex="-1" href="#">중도금일</a></li>
                <li><a tabindex="-1" href="#">잔금일</a></li>
                <li><a tabindex="-1" href="#">계약일</a></li>
                <li><a tabindex="-1" href="#">만기일</a></li>
                <li><a tabindex="-1" href="#">매물방문</a></li>
                <li><a tabindex="-1" href="#">기타</a></li>
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
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
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
                                    <option value="매도인">매도인</option>
                                    <option value="매수인">매수인</option>
                                    <option value="임대인">임대인</option>
                                    <option value="임차인">임차인</option>
                                    <option value="중개인">중개인</option>
                                    <option value="집주인">집주인</option>
                                    <option value="일반상담">일반상담</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type1">일정구분</label>
                                <select class="inputModal" type="text" name="edit-type1" id="edit-type1">
                                	<option value="" hidden>선택</option>
                                    <option value="전화상담">전화상담</option>
                                    <option value="방문상담">방문상담</option>
                                    <option value="계약일">계약일</option>
                                    <option value="중도금일">중도금일</option>
                                    <option value="잔금일">잔금일</option>
                                    <option value="계약일">계약일</option>
                                    <option value="만기일">만기일</option>
                                    <option value="매물방문">매물방문</option>
                                    <option value="기타">기타</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type2">일정상태</label>
                                <select class="inputModal" type="text" name="edit-type2" id="edit-type2">
                                	<option value="" hidden>선택</option>
                                    <option value="진행중">진행중</option>
                                    <option value="대기중">대기중</option>
                                    <option value="완료">완료</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type3">매물종류</label>
                                <select class="inputModal" type="text" name="edit-type3" id="edit-type3">
                                	<option value="" hidden>선택</option>
                                    <option value="아파트">아파트</option>
                                    <option value="오피스텔">오피스텔</option>
                                    <option value="연/빌/다세대">연/빌/다세대</option>
                                    <option value="단독/다가구">단독/다가구</option>
                                    <option value="도시형 생활주택">도시형 생활주택</option>
                                    <option value="원룸">원룸</option>
                                    <option value="상가">상가</option>
                                    <option value="사무실">사무실</option>
                                    <option value="건물(전체매매)">건물(전체매매)</option>
                                    <option value="토지">토지</option>
                                    <option value="공장/창고">공장/창고</option>
                                    <option value="분양권">분양권</option>
                                    <option value="지식산업센터">지식산업센터</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type4">거래유형</label>
                                <select class="inputModal" type="text" name="edit-type4" id="edit-type4">
                                	<option value="" hidden>선택</option>
                                    <option value="매매">매매</option>
                                    <option value="월세">월세</option>
                                    <option value="전세">전세</option>
                                    <option value="연세">연세</option>
                                </select>
                            </div>
                        </div>
                       <div class="row">
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
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">일정내용</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
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

    </div>
    <!-- /.container -->

    <script src="vendor/js/jquery.min.js"></script>
    <script src="vendor/js/bootstrap.min.js"></script>
    <script src="vendor/js/moment.min.js"></script>
    <script src="vendor/js/fullcalendar.min.js"></script>
    <script src="vendor/js/ko.js"></script>
    <script src="vendor/js/select2.min.js"></script>
    <script src="vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/addEvent.js"></script>
    <script src="js/editEvent.js"></script>
    <script src="js/etcSetting.js"></script>
</body>

</html>