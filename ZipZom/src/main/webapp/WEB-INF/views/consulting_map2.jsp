<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding( "utf-8" );

	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address3 = request.getParameter("address3");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Zipzom - Realtor</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ea1cd4df3dc8369022db16f972c085c3&libraries=services,clusterer,drawing"></script>

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

   <!-- sidebar include -->
    <jsp:include page = "./sidebar.jsp" flush = "false"/>

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
                  <li class="breadcrumb-item active">매물 위치</li>
               </ol>
            </div>
         </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 메인 컨텐츠 -->
	<section class="content-body">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-md-6">
				<div class="input-group">
	   				<div class="" id="map" style="width:700px;height:700px;"></div>
	   			</div>
			</div>
			
			<div class="col-md-6">   			
	   			<div class="input-group">
					<form name="form" id="form" method="post" style="width:700px;">
						
						<div class="card">
							<div class="card-header">
								<div class="form-group row">
									<section class="col-md-6">		
										<div class="input-group">
										<!-- 주소 검색 -->
						         		<input type="hidden" id="confmKey" name="confmKey" value=""  >
										<input type="text" class="form-control" id="findname" placeholder=주소 검색 style="width: 100%; margin-right: 10px; margin-top: 5px;" readonly>
											<button type="button" class="btn btn-outline-primary" value="주소검색" onclick="goPopup();" style="width: 70px; margin-top:5px;">
						              		찾기
						              		</button>              		
										</div>
									</section>
								</div>
							</div>
							<div class="card-body">	
								<div class="form-group row">
									<section>		
										<table class="type03">
						                  <thead>
						                  <tr>
											<th>매물 주소</th>
											<td colspan="6">서울특별시 서초구 강남대로6길 66-4 (양재동)</td>
											
						                  </tr>
						                  
						                  <tr>
											<th>금액정보</th>
											<td>매매가</td>
											<td>340,000</td>
											<td>보증금</td>
											<td>10,000</td>
											<td>월세</td>
											<td>200</td>

						                  </tr>
						                  
						                  <tr>
											<th>면적정보</th>
											<td>공급면적</td>
											<td>127.23</td>
											<td>전용면적</td>
											<td>100.32</td>
											<td>대지면적</td>
											<td>16.45</td>

						                  </tr>
			
										  <tr>
											<th rowspan="4">상세정보</th>
											<td>방개수</td>
											<td colspan="2">4개</td>
											<td>욕실수</td>
											<td colspan="2">2개</td>

						                  </tr>
						                  
						                  <tr>
											<td>층수</td>
											<td colspan="2">11층</td>
											<td>냉방시설</td>
											<td colspan="2">있음</td>
						                  </tr>
						                  
						                  <tr>
											<td>승강기</td>
											<td colspan="2">있음</td>
											<td>주차유무</td>
											<td colspan="2">가능</td>

						                  </tr>
						                  
						                  <tr>
											<td>옵션</td>
											<td colspan="2">에어컨, 가스렌지</td>
											<td>보안시설</td>
											<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
						                  </tr>

						                  
						                  </thead>
						                  <tbody id="tbody">
						                  </tbody>         
						                </table>
									</section>
								</div>
							</div>
							
							<div class="card-body">	
								<div class="form-group row">
									<section>		
										<table class="type03">
						                  <thead>
						                  <tr>
											<th>매물 주소</th>
											<td colspan="6">서울특별시 서초구 동산로 73 (양재동)</td>
											
						                  </tr>
						                  
						                  <tr>
											<th>금액정보</th>
											<td>매매가</td>
											<td>340,000</td>
											<td>보증금</td>
											<td>10,000</td>
											<td>월세</td>
											<td>200</td>

						                  </tr>
						                  
						                  <tr>
											<th>면적정보</th>
											<td>공급면적</td>
											<td>127.23</td>
											<td>전용면적</td>
											<td>100.32</td>
											<td>대지면적</td>
											<td>16.45</td>

						                  </tr>
			
										  <tr>
											<th rowspan="4">상세정보</th>
											<td>방개수</td>
											<td colspan="2">4개</td>
											<td>욕실수</td>
											<td colspan="2">2개</td>

						                  </tr>
						                  
						                  <tr>
											<td>층수</td>
											<td colspan="2">11층</td>
											<td>냉방시설</td>
											<td colspan="2">있음</td>
						                  </tr>
						                  
						                  <tr>
											<td>승강기</td>
											<td colspan="2">있음</td>
											<td>주차유무</td>
											<td colspan="2">가능</td>

						                  </tr>
						                  
						                  <tr>
											<td>옵션</td>
											<td colspan="2">에어컨, 가스렌지</td>
											<td>보안시설</td>
											<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
						                  </tr>

						                  
						                  </thead>
						                  <tbody id="tbody">
						                  </tbody>         
						                </table>
									</section>
								</div>
							</div>
							
							<div class="card-body">	
								<div class="form-group row">
									<section>		
										<table class="type03">
						                  <thead>
						                  <tr>
											<th>매물 주소</th>
											<td colspan="6">서울특별시 서초구 동산로 2 (양재동)</td>
											
						                  </tr>
						                  
						                  <tr>
											<th>금액정보</th>
											<td>매매가</td>
											<td>340,000</td>
											<td>보증금</td>
											<td>10,000</td>
											<td>월세</td>
											<td>200</td>

						                  </tr>
						                  
						                  <tr>
											<th>면적정보</th>
											<td>공급면적</td>
											<td>127.23</td>
											<td>전용면적</td>
											<td>100.32</td>
											<td>대지면적</td>
											<td>16.45</td>

						                  </tr>
			
										  <tr>
											<th rowspan="4">상세정보</th>
											<td>방개수</td>
											<td colspan="2">4개</td>
											<td>욕실수</td>
											<td colspan="2">2개</td>

						                  </tr>
						                  
						                  <tr>
											<td>층수</td>
											<td colspan="2">11층</td>
											<td>냉방시설</td>
											<td colspan="2">있음</td>
						                  </tr>
						                  
						                  <tr>
											<td>승강기</td>
											<td colspan="2">있음</td>
											<td>주차유무</td>
											<td colspan="2">가능</td>

						                  </tr>
						                  
						                  <tr>
											<td>옵션</td>
											<td colspan="2">에어컨, 가스렌지</td>
											<td>보안시설</td>
											<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
						                  </tr>

						                  
						                  </thead>
						                  <tbody id="tbody">
						                  </tbody>         
						                </table>
									</section>
								</div>
							</div>
						</div>
	
					</form>
	   			</div>
	   		</div>
   		</div>
   	</div>
   	</section>
	<!-- 지도api스크립트는 항상 구현하려는 지도 아래에 있어야됨 -->
	
	<script>

	var container = document.getElementById('map');
	// 시작 위치
	var options = {
		center: new kakao.maps.LatLng(37.582544875368, 126.973059283309),
		level: 5
	};

	var map = new kakao.maps.Map(container, options);
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var address = ["<%=address1%>", "<%=address2%>", "<%=address3%>"];
	
	for (var i = 0; i < 3; i++) {
		var newAddress = address[i];
		if( newAddress != null) {
			addressSearch(newAddress);
		}
	}
	
	function goPopup(){
		// 주소 팝업창 경로
	    var pop = window.open("./jusoPopup2.do","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
							, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
		addressSearch(roadFullAddr);
	}
	
	// 주소로 좌표를 검색합니다
	function addressSearch(address) {
		geocoder.addressSearch(address, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		        var iwContent = '<div style="width:150px;text-align:center;padding:6px 0;">'+ address +'</div>';
		        
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: iwContent,
			        removable: true
		        });
		        infowindow.open(map, marker);
		        
		     	// 마커에 클릭이벤트를 등록합니다
		        kakao.maps.event.addListener(marker, 'click', function() {
		              // 마커 위에 인포윈도우를 표시합니다
		              infowindow.open(map, marker);
		        });
		        kakao.maps.event.addListener(marker, 'rightclick', function() {
		              // 마커 위에 인포윈도우를 표시합니다
		        	  marker.setMap(null);
		        });
		        
		     	map.setCenter(coords);
		    } 
		});
	}

	
	// 도형 스타일을 변수로 설정합니다
	var strokeColor = '#39f',
		fillColor = '#cce6ff',
		fillOpacity = 0.5,
		hintStrokeStyle = 'dash';

	var options = { // Drawing Manager를 생성할 때 사용할 옵션입니다
	    map: map, // Drawing Manager로 그리기 요소를 그릴 map 객체입니다
	    drawingMode: [
	        kakao.maps.Drawing.OverlayType.MARKER,
	        kakao.maps.Drawing.OverlayType.ARROW,
	        kakao.maps.Drawing.OverlayType.POLYLINE,
	        kakao.maps.Drawing.OverlayType.RECTANGLE,
	        kakao.maps.Drawing.OverlayType.CIRCLE,
	        kakao.maps.Drawing.OverlayType.ELLIPSE,
	        kakao.maps.Drawing.OverlayType.POLYGON
	    ],
	    // 사용자에게 제공할 그리기 가이드 툴팁입니다
	    // 사용자에게 도형을 그릴때, 드래그할때, 수정할때 가이드 툴팁을 표시하도록 설정합니다
	    guideTooltip: ['draw', 'drag', 'edit'], 
	    markerOptions: {
	        draggable: true,
	        removable: true
	    },
	    arrowOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        hintStrokeStyle: hintStrokeStyle
	    },
	    polylineOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        hintStrokeStyle: hintStrokeStyle
	    },
	    rectangleOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        fillColor: fillColor,
	        fillOpacity: fillOpacity
	    },
	    circleOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        fillColor: fillColor,
	        fillOpacity: fillOpacity
	    },
	    ellipseOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        fillColor: fillColor,
	        fillOpacity: fillOpacity
	    },
	    polygonOptions: {
	        draggable: true,
	        removable: true,
	        strokeColor: strokeColor,
	        fillColor: fillColor,
	        fillOpacity: fillOpacity
	    }
	};

	// 위에 작성한 옵션으로 Drawing Manager를 생성합니다
	var manager = new kakao.maps.Drawing.DrawingManager(options);

	// Toolbox를 생성합니다. 
	// Toolbox 생성 시 위에서 생성한 DrawingManager 객체를 설정합니다.
	// DrawingManager 객체를 꼭 설정해야만 그리기 모드와 매니저의 상태를 툴박스에 설정할 수 있습니다.
	var toolbox = new kakao.maps.Drawing.Toolbox({drawingManager: manager});

	// 지도 위에 Toolbox를 표시합니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOP은 위 가운데를 의미합니다.
	map.addControl(toolbox.getElement(), kakao.maps.ControlPosition.TOP);

	// 지도 타입 변경 컨트롤을 생성한다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
</script>

    <!-- /.content -->
  </div>
  
  <!-- /.content-wrapper -->



  <!-- Control Sidebar -->

  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Page script -->


</body>
</html>