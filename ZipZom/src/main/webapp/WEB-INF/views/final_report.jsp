<%@page import="modelTO.customerTO"%>
<%@page import="modelTO.pfsAllTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String name = "";
	String tel = "";
	StringBuffer table = new StringBuffer();
	if(request.getAttribute("paList") != null && request.getAttribute("cto") != null) {
	ArrayList<pfsAllTO> paList = (ArrayList<pfsAllTO>)request.getAttribute("paList");
	customerTO cto = (customerTO)request.getAttribute("cto");
	name = cto.getName();
	tel = cto.getTel();
	
	
	for(pfsAllTO pato : paList) {
		String address = pato.getAddress();
		String contractType = pato.getContractType();
		int budget1 = pato.getBudget1();
		int budget2 = pato.getBudget2();
		int budget3 = pato.getBudget3();
		String loan = pato.getLoan();
		int area1 = pato.getArea1();
		int area2 = pato.getArea2();
		int area3 = pato.getArea3();
		String moveSchedule = pato.getMoveSchedule();
		String endOfLease = pato.getEndOfLease();
		int room = pato.getRoom();
		String direction = pato.getDirection();
		int bathroom = pato.getBathroom();
		String heatingSystem = pato.getHeatingSystem();
		int numberOfHousehold = pato.getNumberOfHousehold();
		int floor = pato.getFloor();
		int floorTotal = pato.getFloorTotal();
		String aircondition = (pato.getAircondition() == 0) ? "" : "있음";
		String elevator = (pato.getElevator() == 0) ? "" : "있음";
		String parking = (pato.getParking() == 0) ? "" : "없음";
		String bYear = pato.getbYear();
		String context = pato.getContext();
		String secu = "";
		String[] str = {"경비원","비디오폰","인터폰","카드키","cctv","도어락","방범창"};
		String[] strSecurity = new String[7];
		int[] security = {pato.getSecurityGuard(),pato.getVideophone(),pato.getInterphone(),pato.getCardKey(),pato.getCctv(),pato.getDoorSecurity(),pato.getWindowGuard()};
		for(int i=0;i<security.length;i++) {
			strSecurity[i] = (security[i] == 0) ? "" : str[i];
		}
		for(int i=0;i<strSecurity.length;i++){
			if(!strSecurity[i].equals("")) {
				secu += strSecurity[i]+ " ";
			}
			if(!strSecurity[6].equals("")) {
				secu += strSecurity[i];
				System.out.println(secu);
			}
		}
		table.append("<div class='card'>");
		table.append("<table class='type03'>");
        table.append("<thead>");
        table.append("<tr class='page-break-tr'>");
		table.append("<th>매물 주소</th>");
		table.append("<td colspan='4'>"+address+"</td>");
		table.append("<th>계약 유형</th>");
		table.append("<td colspan='3'>"+contractType+"</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<th>금액정보</th>");
		table.append("<td>매매가</td>");
		table.append("<td>"+budget1+"</td>");
		table.append("<td>보증금</td>");
		table.append("<td>"+budget2+"</td>");
		table.append("<td>월세</td>");
		table.append("<td>"+budget3+"</td>");
		table.append("<td>융자금</td>");
		table.append("<td>"+loan+"</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<th>면적정보</th>");
		table.append("<td>공급면적</td>");
		table.append("<td>"+area1+"</td>");
		table.append("<td>전용면적</td>");
		table.append("<td>"+area2+"</td>");
		table.append("<td>대지면적</td>");
		table.append("<td>"+area3+"</td>");
		table.append("<td>-</td>");
		table.append("<td>-</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<th>입주정보</th>");
		table.append("<td colspan='2'>입주가능날짜</td>");
		table.append("<td colspan='2'>"+moveSchedule+"</td>");
		table.append("<td colspan='2'>임대만기날짜</td>");
		table.append("<td colspan='2'>"+endOfLease+"</td>");
        table.append("</tr>");
		table.append("<tr>");
		table.append("<th rowspan='4'>상세정보</th>");
		table.append("<td>방개수</td>");
		table.append("<td>"+room+"개</td>");
		table.append("<td>방향</td>");
		table.append("<td>"+direction+"</td>");
		table.append("<td>욕실수</td>");
		table.append("<td>"+bathroom+"개</td>");
		table.append("<td>난방방식</td>");
		table.append("<td>"+heatingSystem+"</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<td>세대수</td>");
		table.append("<td>"+numberOfHousehold+"세대</td>");
		table.append("<td>층수</td>");
		table.append("<td>"+floor+"층</td>");
		table.append("<td>총층수</td>");
		table.append("<td>"+floorTotal+"층</td>");
		table.append("<td>냉방시설</td>");
		table.append("<td>"+aircondition+"</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<td>승강기</td>");
		table.append("<td>"+elevator+"</td>");
		table.append("<td>주차유무</td>");
		table.append("<td>"+parking+"</td>");
		table.append("<td>건축년도</td>");
		table.append("<td>"+bYear+"년</td>");
		table.append("<td>-</td>");
		table.append("<td>-</td>");
        table.append("</tr>");
        table.append("<tr>");
		table.append("<td>옵션</td>");
		table.append("<td colspan='3'>에어컨</td>");
		table.append("<td>보안시설</td>");
		table.append("<td colspan='3'>"+secu+"</td>");
        table.append("</tr>");
		table.append("<tr>");
		table.append("<th>메모</th>");
		table.append("<td colspan='8'>"+context+"</td>");
        table.append("</tr>");
        table.append("</thead>");
        table.append("</table>");
		table.append("</div>");
		
		
		
		
		
	}
	}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Zipzom - Realtor</title>
<style type="text/css">

table.type03 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.25;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
 	margin : 20px 10px;
}
table.type03 th {
    width: 300px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
	background: #eee;
}
table.type03 td {
    width: 349px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    
}

.endline{page-break-before:always}

}

.page-break-tr { 

	page-break-inside:avoid;

	page-break-after: auto;

}
</style>
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
<!-- Theme style -->
<link rel="stylesheet" href="./resources/css/adminlte.min.css">
<!-- DataTables -->

<!-- 제목 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
 
</head>
<body class="w3-content" style="max-width:1500px">

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">

   <!-- sidebar include -->
    <jsp:include page = "./sidebar.jsp" flush = "false"/>
    
  </aside>
	
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-top:10px; margin-bottom:50px;">
      <div class="container-fluid">
         <div class="row mb-2">
            <div class="col-sm-6">
               
            </div>
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">고객 상담</li>
                  <li class="breadcrumb-item active">상담 보고서</li>
               </ol>
            </div>
         </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 메인 컨텐츠 -->
    <section class="content">
 	<div class="book">
 		<div id="report">
 		<div class="page" id="pdf_wrap" style="width:1100px; float: none; margin: 0 auto;">	 			
		
			<!-- 카드 헤더 -->
		  	<div class="card-header">
				<h1 style="font-size: 50px; font-family: 'Noto Sans KR', sans-serif; text-align: center;">매물 보고서</h1> 
			</div>
			
			<!-- 카드 바디 -->
			<div class="card-body">
				<!-- 좌측 테이블 -->
				<section class="col-md-4" style="float: left;">
					<table class="type03">
							<thead>
								<tr>
									<th>고객 이름</th>
									<td><%=name %></td>
								</tr>
								<tr>
									<th>고객 연락처</th>
									<td><%=tel %></td>
								</tr>
							</thead>
					</table>
				</section>
				
				<!-- 우측 테이블 -->
				<section class="col-md-4" style="float: right;">
					<table class="type03">
							<thead>
								<tr>
									<th>방문 일자</th>
									<td></td>
								</tr>
								<tr>
									<th>담당자</th>
									<td></td>
								</tr>
							</thead>
					</table>
				</section>
			</div>
			
			<div class="card">
			<%=table %>
				<!--<div class="card">
					
					<table class="type03">
	                  <thead>
	                  <tr class="page-break-tr">
						<th>매물 주소</th>
						<td colspan="4">서울특별시 강남구 대치동 503 개포우성1차</td>
						<th>계약 유형</th>
						<td colspan="3">매매</td>
	                  </tr>
	                  
	                  <tr>
						<th>금액정보</th>
						<td>매매가</td>
						<td>340,000</td>
						<td>보증금</td>
						<td>10,000</td>
						<td>월세</td>
						<td>200</td>
						<td>융자금</td>
						<td>100,000</td>
	                  </tr>
	                  
	                  <tr>
						<th>면적정보</th>
						<td>공급면적</td>
						<td>127.23</td>
						<td>전용면적</td>
						<td>100.32</td>
						<td>대지면적</td>
						<td>16.45</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr>
						<th>입주정보</th>
						<td colspan="2">입주가능날짜</td>
						<td colspan="2">2020-10-30</td>
						<td colspan="2">임대만기날짜</td>
						<td colspan="2">2020-10-27</td>
	                  </tr>
	                  
					  <tr>
						<th rowspan="4">상세정보</th>
						<td>방개수</td>
						<td>4개</td>
						<td>방향</td>
						<td>남향</td>
						<td>욕실수</td>
						<td>2개</td>
						<td>난방방식</td>
						<td>도시가스</td>
	                  </tr>
	                  
	                  <tr>
						<td>세대수</td>
						<td>360세대</td>
						<td>층수</td>
						<td>11층</td>
						<td>총층수</td>
						<td>14층</td>
						<td>냉방시설</td>
						<td>있음</td>
	                  </tr>
	                  
	                  <tr>
						<td>승강기</td>
						<td>있음</td>
						<td>주차유무</td>
						<td>가능</td>
						<td>건축년도</td>
						<td>1990년</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr>
						<td>옵션</td>
						<td colspan="3">에어컨, 가스렌지</td>
						<td>보안시설</td>
						<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
	                  </tr>
	                  
					  <tr>
						<th>메모</th>
						<td colspan="8">-</td>
	                  </tr>
	                  
	                  </thead>
     
	                </table>
					
				</div>
				
	
	
				<div class="card">
					<table class="type03">
	                  <thead>
	                  <tr>
						<th>매물 주소</th>
						<td colspan="4">서울특별시 강남구 대치동 503 개포우성1차</td>
						<th>계약 유형</th>
						<td colspan="3">매매</td>
	                  </tr>
	                  
	                  <tr>
						<th>금액정보</th>
						<td>매매가</td>
						<td>340,000</td>
						<td>보증금</td>
						<td>10,000</td>
						<td>월세</td>
						<td>200</td>
						<td>융자금</td>
						<td>100,000</td>
	                  </tr>
	                  
	                  <tr>
						<th>면적정보</th>
						<td>공급면적</td>
						<td>127.23</td>
						<td>전용면적</td>
						<td>100.32</td>
						<td>대지면적</td>
						<td>16.45</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr>
						<th>입주정보</th>
						<td colspan="2">입주가능날짜</td>
						<td colspan="2">2020-10-30</td>
						<td colspan="2">임대만기날짜</td>
						<td colspan="2">2020-10-27</td>
	                  </tr>
	                  
					  <tr>
						<th rowspan="4">상세정보</th>
						<td>방개수</td>
						<td>4개</td>
						<td>방향</td>
						<td>남향</td>
						<td>욕실수</td>
						<td>2개</td>
						<td>난방방식</td>
						<td>도시가스</td>
	                  </tr>
	                  
	                  <tr>
						<td>세대수</td>
						<td>360세대</td>
						<td>층수</td>
						<td>11층</td>
						<td>총층수</td>
						<td>14층</td>
						<td>냉방시설</td>
						<td>있음</td>
	                  </tr>
	                  
	                  <tr>
						<td>승강기</td>
						<td>있음</td>
						<td>주차유무</td>
						<td>가능</td>
						<td>건축년도</td>
						<td>1990년</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr>
						<td>옵션</td>
						<td colspan="3">에어컨, 가스렌지</td>
						<td>보안시설</td>
						<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
	                  </tr>
	                  
					  <tr>
						<th>메모</th>
						<td colspan="8">-</td>
	                  </tr>
	                  
	                  </thead>
  
	                </table>
				</div>
				
				<div class="card">
					세번째 테이블
					<table class="type03">
	                  <thead>
	                  <tr class="page-break-tr">
						<th>매물 주소</th>
						<td colspan="4">서울특별시 강남구 대치동 503 개포우성1차</td>
						<th>계약 유형</th>
						<td colspan="3">매매</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<th>금액정보</th>
						<td>매매가</td>
						<td>340,000</td>
						<td>보증금</td>
						<td>10,000</td>
						<td>월세</td>
						<td>200</td>
						<td>융자금</td>
						<td>100,000</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<th>면적정보</th>
						<td>공급면적</td>
						<td>127.23</td>
						<td>전용면적</td>
						<td>100.32</td>
						<td>대지면적</td>
						<td>16.45</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<th>입주정보</th>
						<td colspan="2">입주가능날짜</td>
						<td colspan="2">2020-10-30</td>
						<td colspan="2">임대만기날짜</td>
						<td colspan="2">2020-10-27</td>
	                  </tr>
	                  
					  <tr class="page-break-tr">
						<th rowspan="4">상세정보</th>
						<td>방개수</td>
						<td>4개</td>
						<td>방향</td>
						<td>남향</td>
						<td>욕실수</td>
						<td>2개</td>
						<td>난방방식</td>
						<td>도시가스</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<td>세대수</td>
						<td>360세대</td>
						<td>층수</td>
						<td>11층</td>
						<td>총층수</td>
						<td>14층</td>
						<td>냉방시설</td>
						<td>있음</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<td>승강기</td>
						<td>있음</td>
						<td>주차유무</td>
						<td>가능</td>
						<td>건축년도</td>
						<td>1990년</td>
						<td>-</td>
						<td>-</td>
	                  </tr>
	                  
	                  <tr class="page-break-tr">
						<td>옵션</td>
						<td colspan="3">에어컨, 가스렌지</td>
						<td>보안시설</td>
						<td colspan="3">경비원, CCTV, 현관보안, 방범창</td>
	                  </tr>
	                  
					  <tr class="page-break-tr">
						<th>메모</th>
						<td colspan="8">-</td>
	                  </tr>
	                  
	                  </thead>
  
	                </table>
				</div> -->		
					
			</div>
		
		
		<!-- pdf 출력 시 다음페이지로 넘기기 -->
		<!-- <div class="endline"></div><br style="height:0; line-height:0"> -->
		<!-- /.pdf 출력 시 다음페이지로 넘기기 -->
		
		</div>
		</div>
		
		<!-- /.출력페이지 끝 -->
		
		<!-- 출력버튼 -->
		<div class="modal-footer">
           	<button type="button" id="create_pdf" class="btn btn-outline-primary" >
           	PDF 생성하기
           	</button>

		</div> 
		
	</div>
	<!-- /.book -->

	</section>
	<!-- /.메인 컨텐츠 -->
  </div>
  <!-- /.content-wrapper -->


  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->


<!-- Bootstrap 4 -->
<script src="./resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="./resources/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="./resources/js/demo.js"></script>

<!-- pdf변환 -->
<script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script>
<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<script type="text/javascript">



</script>

<script type="text/javascript">

/* $(function() {
	$("pdfdown").click(function() {
		
		html2canvas(document.getElementById("report"), {
			
			allowTaint: true,
			useCORS: true,
			logging: false,
			height: window.outerHeight + window.innerHeight,
			windowHeight: window.outerHeight + window.innerHeight
			
		}).then(function(canvas) {
			
			// 이미지로 변환
			var imgData = canvas.toDataURL('image/png');
			
			var imgWidth = 210;
			var pageHeight = imgWidth * 1.414;
			var imgHeight = canvas.height * imgWidth / canvas.width;
			var heightLeft = imgHeight;
			var doc = new jsPDF('p', 'mm');
			var position = 0;
			
			// 첫페이지 출력
			doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
			heightLeft -= pageHeight;
			
			// 파일 저장
			doc.save('ZipZom.pdf');
			
		});
		
	});
}); */



</script>
<script type="text/javascript">

 var pdfprint = document.getElementById('pdf_wrap').innerHTML; 

$('#create_pdf').click( function() {
	html2canvas($('#pdf_wrap')[0]).then(function(canvas) {
	    var doc = new jsPDF('p', 'mm', 'a4'); //jspdf객체 생성
	    var imgData = canvas.toDataURL('image/png'); //캔버스를 이미지로 변환
	    doc.addImage(imgData, 'PNG', 0, 0); //이미지를 기반으로 pdf생성
	    doc.save('sample-file.pdf'); //pdf저장
	  });
		
     window.onbeforeprint = function (ev) {
        document.body.innerHTML = pdfprint;
    };

    window.print();
    location.reload(); 

});
</script>


</body>
</html>