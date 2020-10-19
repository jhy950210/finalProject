<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 도로명주소 api -->
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("./jusoPopup.action?id=0","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.jibunAddr1.value = jibunAddr;
	document.form.rn1.value = rn;
	document.form.addrDetail1.value = addrDetail;
	document.form.zipNo1.value = zipNo;
}

</script>
<!-- 도로명주소 api 끝-->

</head>
<body>

<!-- dialog 아파트 -->

<div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
	<!-- 매물 주소 api 활용-->
	<form name="form" id="form" method="post" style="margin-right: 10px; margin-top: 10px; margin-bottom: 10px;">
	<div>
		<li style="margin-right: 10px; margin-top: 10px;"> 매물 주소(아파트) </li>
		<input type="hidden" name="bType" value="아파트" />
	<table >
			<colgroup>
				<col style="width:25%"><col>
			</colgroup>
			<tbody>
				<tr>
					<th>우편번호</th>
					<td>
						<div class="form-group row">
					    <input type="hidden" id="confmKey1" name="confmKey" value=""  >
						<input class="form-control" type="text" id="zipNo1" name="zipNo" readonly style="width:100px; margin-right: 10px;">
						<input class="form-control" type="button"  value="주소검색" style="width:100px" onclick="goPopup();">
						</div>
					</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td>
						<div class="form-group row">
						<input class="form-control" type="text" id="jibunAddr1" name="jibunAddr" style="width:300px; " readonly>
						</div>
					</td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
						<div class="form-group row">
						<input class="form-control" type="text" id="addrDetail1" name="hNumber" style="width:40%; margin-right: 10px;" value="">
						<input class="form-control" type="text" id="rn1" name="rn"  style="width:40% " value="" readonly>
						</div>
					</td>
				</tr>
			</tbody>
		</table>	

	</div>
							
	<!-- 계약 유형 -->
	
	<li style="margin-right: 20px; margin-left: 7.5px; margin-top: 5px;">계약 유형 
		<div class="form-group row" > 
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type11" name="contractType" value="매매" checked>
				<label for="contract_type11">
				매매
				</label>
			</div>
			
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type12" name="contractType" value="전세" >
				<label for="contract_type12">
				전세
				</label>
			</div>
	                      			
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type13" name="contractType" value="월세" >
				<label for="contract_type13">
				월세
				</label>
			</div>
		</div>
	</li>
	                    	
	<!-- 금액 정보 -->
	<div>
		<li style="margin-right: 20px; margin-top: 5px;">금액 정보
			<div class="form-group row">
				<section>
					<!-- 매매가 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
						<input type="text" class="form-control" name="budget1" id="budget11" style="width: 80px; margin-top: 5px;" >
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
				
				<section>						
					<!-- 현재 임차인 보증금 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">보증금</span>
						<input type="text" class="form-control" name="budget2" id="budget21" style="width: 80px; margin-top: 5px;" >
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
									
				<section>
					<!-- 현재 임차인 월세 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">현월세</span>
						<input type="text" class="form-control" name="budget3" id="budget31" style="width: 80px; margin-top: 5px;" >
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
				<!-- 대출유무 -->
			<section>
			    <div class="input-group mb-1">
				<span style="margin-right: 10px;  margin-top: 10px;">대출유무</span>
				<select class="form-control" id="loan1" name="loan" style="width: 125px; margin-top: 5px;">
				<option value="none">선택</option>
					<option>융자 있음</option>
					<option>융자 없음</option>
				</select>
				</div>
			</section>
			</div>	
		</li>
	</div>
	              			
	<!-- 면적 정보 -->
	
	<li style="margin-right: 20px; margin-top: 5px;">면적 정보
		<div class="form-group row">
			<section>
				<div class="input-group mb-3">
					<!-- 공용부분 포함한 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> 
					<input type="text" name="area1" id="area11" class="form-control" style="width: 100px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-3">
					<!-- 실제 집 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> 
					<input type="text" name="area2" id="area21" class="form-control" style="width: 100px; margin-top: 5px;">
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
		
			<section>
				<div class="input-group mb-3">
					<!-- 건물 대지에서 내 집이 차지하는 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">대지면적</span> 
					<input type="text" name="area3" id="area31" class="form-control" style="width: 100px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
		</div>
	</li>
	<li style="margin-right: 20px; margin-top: 5px;">입주 정보
		<div class="form-group row">
			<section>
				<div class="input-group col-md-12">
					<!-- 입주 가능 날짜 -->
					<span style="margin-right: 10px; margin-top: 10px;">입주 가능 날짜</span> 
					<input type="text" name="moveSchedule" id="moveSchedule1" readonly="readonly" />
				</div>
			</section>
			<section>
				<div class="input-group col-md-12">
					<!-- 임대 만기 날짜 -->
					<span style="margin-right: 10px; margin-top: 10px;">임대 만기 날짜</span>
					<input type="text" name="endOfLease" id="endOfLease1" readonly="readonly" />
				</div>
			</section>
		</div>
	</li>

	<li style="margin-right: 20px; margin-top: 5px;">상세 정보
		<div class="form-group row">
			<section>
				<div class="input-group mb-1">
					<!-- 방 개수 -->
					<span style="margin-right: 10px; margin-top: 10px;">방개수</span> 
					<select class="form-control" id="rooms1" name="rooms" style="width: 100px; margin-right: 30px; margin-top: 5px;">
						<option value="none">선택</option>
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
					</select>
				</div>
			</section>

			<section>
				<div class="input-group mb-1">
					<!-- 향 -->
					<span style="margin-right: 10px; margin-top: 10px;">향</span> 
					<select class="form-control" name="direction" id="direction1" style="width: 100px; margin-right: 30px; margin-top: 5px;">
						<option value="none">선택</option>
						<option>북향</option>
						<option>남향</option>
						<option>동향</option>
						<option>서향</option>
						<option>북동향</option>
						<option>북서향</option>
						<option>남동향</option>
						<option>남서향</option>
						<option>모름</option>
					</select>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-1">
					<!-- 욕실수 -->
					<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
					<select class="form-control" id="bathrooms1" name="bathrooms" style="width: 100px; margin-right: 30px; margin-top: 5px;">
						<option value="none">선택</option>
						<option>1개</option>
						<option>2개</option>
						<option>3개 이상</option>
					</select>
				</div>
			</section>

			<section>
				<div class="input-group mb-1">
					<!-- 난방방식 -->
					<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
					<select class="form-control" name="heatingSystem" id="heatingSystem1" style="width: 100px; margin-right: 10px; margin-top: 5px;">
						<option value="none">선택</option>
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
					</select>
				</div>
			</section>
		</div>
			
		<div class="form-group row">
			<section>
				<div class="input-group mb-2">
					<!-- 세대수 -->
					<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
					<input type="text" name="numberOfHousehold" id="numberOfHousehold1" class="form-control" style="width: 100px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">세대</span>
					</div>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-2">
					<!-- 건축년도 -->
					<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
					<input type="text" name="bYear" id="bYear1" class="form-control" style="width: 100px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">년</span>
					</div>
				</div>
			</section>

			<section>
				<div class="input-group mb-2">
					<!-- 층수 / 총층수-->
					<span style="margin-right: 10px; margin-top: 10px;">층수 / 총 층수</span>
					<input type="text" name="floor" id="floor1" class="form-control" style="width: 50px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">층</span>
					</div>
					<span style="margin-top: 10px; font-size: 140%;">/</span> 
					<input type="text" name="floorTotal" id="floorTotal1" class="form-control" style="width: 50px; margin-top: 5px; margin-left: 10px;">
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">층</span>
					</div>
				</div>
			</section>
			</div>
			
			<div class="input-group mb-3">
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="aircondition1" name="aircondition" value="1"> 
					<label for="aircondition1"> 냉방시설 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="parking1" value="1" name="parking">
					<label for="parking1"> 주차유무 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="elevator1" value="1" name="elevator">
					<label for="elevator1"> 승강기 </label>
				</div>

			</div>
		</li>
		<!-- text input -->
					
				<li>메 모 </li>
					<!-- textarea -->
					<div class="form-group">
						
							<textarea name="context" id="context1" class="form-control" rows="3" ></textarea>
					</div>
					
				<li>보안시설 </li>
					<!-- checkbox -->
					<div class="input-group row">
						<div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;" >
							<input type="checkbox" id="securityGuard1" name="securityGuard" value="1">
	                        <label for="securityGuard1">
	                        경비원
	                        </label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="videophone1" value="1" name="videophone">
	                    	<label for="videophone1">
	                    	비디오폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                    <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="interphone1" value="1" name="interphone" >
	                    	<label for="interphone1">
	                    	인터폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="cardKey1" value="1" name="cardKey" >
	                    	<label for="cardKey1">
	                    	카드키
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="cctv1" value="1" name="cctv" >
	                    	<label for="cctv1">
	                    	방범카메라
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="doorSecurity1" value="1" name="doorSecurity" >
	                    	<label for="doorSecurity1">
	                    	현관보안
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="windowGuard1" value="1" name="windowGuard" >
	                    	<label for="windowGuard1">
	                    	방범창
	                    	</label>
	                    </div>
	                    </div>
						
					</div>
					
				<li>연 락 처 </li>
					<!-- phone mask -->
					<div class="input-group row">
	                <div class="form-group col-md-6">
	                  <label>임대인</label>
	                  <div class="input-group">
	                    <div class="input-group-prepend">
	                    <!-- text input -->
						<input type="text" class="form-control" name="lessorName" placeholder="이름"  style="width: 100px;">
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" name="lessorTel" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
	                  </div>
	                  <!-- /.input group -->
	                </div>
	                
	                <!-- phone mask -->
	                <div class="form-group col-md-6">
	                  <label>임차인</label>
	                  <div class="input-group">
	                    <div class="input-group-prepend">
						<!-- text input -->
						<input type="text" class="form-control" name="lesseeName" placeholder="이름"  style="width: 100px;">
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" name="lesseeTel" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
	                  </div>
	                  <!-- /.input group -->
	                </div>
					</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" id="pfsWrite" class="btn btn-primary" data-dismiss="modal">등록</button>
				</div>
				</form>   
</div>
        


<script type="text/javascript">
$('#moveSchedule1').datepicker();
$('#endOfLease1').datepicker();
$('#moveSchedule1').datepicker('option', 'dateFormat', 'yy-mm-dd');
$('#endOfLease1').datepicker('option', 'dateFormat', 'yy-mm-dd');

</script>
</body>
</html>