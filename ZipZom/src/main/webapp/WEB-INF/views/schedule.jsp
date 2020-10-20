<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="./image/favicon.ico">

    <link rel="stylesheet" href="./vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="./vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='./vendor/css/select2.min.css' />
    <link rel="stylesheet" href='./vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="./css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="./resources/plugins/fontawesome-free/css/all.min.css">
<!-- jQuery -->
<script src="./resources/plugins/jquery/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}

.w3-content {
  width: 100%;
  height: 100%;
  text-align: center;
  position: relative;
  z-index: 1;
}
.w3-content::after {
  width: 100%;
  height: 100%;
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.5;
}
</style>
</head>
<body>
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
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox">
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
                                <select class="inputModal" name="edit-customer" id="edit-customer3"  style="width:20.5%">
                                    <option value="">선택</option>
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
                                <select class="inputModal" name="edit-type1" id="edit-type1">
                                	<option value="">선택</option>
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
                                <select class="inputModal" name="edit-type2" id="edit-type2">
                                	<option value="">선택</option>
                                    <option value="진행중">진행중</option>
                                    <option value="대기중">대기중</option>
                                    <option value="완료">완료</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type3">매물종류</label>
                                <select class="inputModal" name="edit-type3" id="edit-type3">
                                	<option value="">선택</option>
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
                                <select class="inputModal" name="edit-type4" id="edit-type4">
                                	<option value="">선택</option>
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

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>
    </div>
    
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>ZipZom</b></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="./newDashboard.do" class="w3-bar-item w3-button">Home</a>
    <a href="./intro_website.jsp" class="w3-bar-item w3-button">About</a>
    <a href="./customer_manage.do" class="w3-bar-item w3-button">고객관리</a>
    
    <a onclick="myAccFunc1()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn1">
      매물관리 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc1" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="./pfs_manage.do" class="w3-bar-item w3-button">등록매물관리</a>
      <a href="./pfs_compare2.do" class="w3-bar-item w3-button">매물비교</a>
    </div>
    
    <a onclick="myAccFunc2()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn2">
      고객상담 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc2" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="./consulting_map.do" class="w3-bar-item w3-button">매물 위치</a>
      <a href="./consulting_rtp.do" class="w3-bar-item w3-button">매물 시세</a>
      <a href="./consulting_match.do" class="w3-bar-item w3-button">맞춤 매물</a>
      <a href="./final_report.do" class="w3-bar-item w3-button">상담보고서</a> 
    </div>
    <a href="./schedule.do" class="w3-bar-item w3-button">일정관리</a>

  </div>

</nav>

<script>
// Accordion 
function myAccFunc1() {
  var x = document.getElementById("demoAcc1");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

function myAccFunc2() {
  var x = document.getElementById("demoAcc2");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn1").click();
document.getElementById("myBtn2").click();


// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>
    <!-- /.container -->
    <script src="./vendor/js/jquery.min.js"></script>
    <script src="./vendor/js/bootstrap.min.js"></script>
    <script src="./vendor/js/moment.min.js"></script>
    <script src="./vendor/js/fullcalendar.min.js"></script>
    <script src="./vendor/js/ko.js"></script>
    <script src="./vendor/js/select2.min.js"></script>
    <script src="./vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="./js/main.js"></script>
    <script src="./js/addEvent.js"></script>
    <script src="./js/editEvent.js"></script>
    <script src="./js/etcSetting.js"></script>
</body>

</html>