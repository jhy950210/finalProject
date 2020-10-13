<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

<!-- dialog 다가구 -->

<div class="tab-pane fade" id="custom-tabs-four-dagagu" role="tabpanel" aria-labelledby="custom-tabs-four-dagagu-tab">
<!-- 매물 주소 api 활용-->
	<div>
		<li style="margin-right: 10px; margin-top: 10px;"> 매물 주소(다가구/단독) </li>
			<div class="form-group row" >
				<input type="text" class="form-control" name="address" style="width: 200px; margin-right: 20px; margin-left: 20px; margin-top: 10px;" readonly="readonly" >
				<button type="button" class="btn btn-block btn-primary" style="width: 100px; margin-right: 10px;" margin-top: 10px;">
				주소 검색
				</button>
			</div>
			
			<div class="form-group row" >
				<input type="text" class="form-control" name="address1" value="" style="width: 400px; margin-right: 20px; margin-left: 20px;" readonly="readonly" >
				<input type="text" class="form-control" name="address2" value="" style="width: 400px; margin-right: 20px;" placeholder="나머지 주소를 입력하세요">
			</div>
	</div>
							
	<!-- 계약 유형 -->
	<div class="form-group row" >
		<li style="margin-right: 20px; margin-left: 7.5px; margin-top: 5px;">계약 유형 </li> 
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type41" name="contract_type" value="매매" checked>
				<label for="contract_type41">
				매매
				</label>
			</div>
			
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type42" name="contract_type" value="전세" >
				<label for="contract_type42">
				전세
				</label>
			</div>
	                      			
			<div class="icheck-primary d-inline">
				<input type="radio" id="contract_type43" name="contract_type" value="월세" >
				<label for="contract_type43">
				월세
				</label>
			</div>
	</div>
	                    	
	<!-- 금액 정보 -->
	<div>
		<li style="margin-right: 20px; margin-top: 5px;">금액 정보</li>
			<div class="form-group row">
				<!-- 매매가 -->
				<div class="input-group col-md-3">
					<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
					<input type="text" class="form-control" name="budget1" id="budget1" style="width: 150px; margin-top: 5px;" >
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">만원</span>
					</div>
				</div>
										
				<!-- 현재 임차인 보증금 -->
				<div class="input-group col-md-3">
					<span style="margin-right: 10px; margin-top: 10px;">현보증금</span>
					<input type="text" class="form-control" name="budget2" id="budget2" style="width: 150px; margin-top: 5px;" >
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">만원</span>
					</div>
				</div>
										
				<!-- 현재 임차인 월세 -->
				<div class="input-group col-md-3">
					<span style="margin-right: 10px; margin-top: 10px;">현월세</span>
					<input type="text" class="form-control" name="budget3" id="budget3" style="width: 150px; margin-top: 5px;" >
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">만원</span>
					</div>
				</div>
										
				<!-- 집에 저당잡힌 은행 융자금 -->
				<div class="input-group col-md-3">
					<span style="margin-right: 10px; margin-top: 10px;">융자금</span>
					<input type="text" class="form-control" name="loan" id="loan" style="width: 150px; margin-top: 5px;" >
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">만원</span>
					</div>
				</div>
			</div>	
	</div>
	              			
	<!-- 면적 정보 -->
		<div>
			<li style="margin-right: 20px; margin-top: 5px;">면적 정보
				<div class="input-group mb-3">
					<!-- 공용부분 포함한 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> <input
						type="text" name="area1" id="area1" class="form-control"
						style="width: 200px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text"
							style="margin-right: 30px; margin-top: 5px;">m²</span>
					</div>

					<!-- 실제 집 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> <input
						type="text" name="area2" id="area2" class="form-control"
						style="width: 200px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text"
							style="margin-right: 30px; margin-top: 5px;">m²</span>
					</div>

					<!-- 건물 대지에서 내 집이 차지하는 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">대지면적</span> <input
						type="text" name="area3" id="area3" class="form-control"
						style="width: 200px; margin-top: 5px;">
					<div class="input-group-append">
						<span class="input-group-text"
							style="margin-right: 30px; margin-top: 5px;">m²</span>
					</div>

				</div>
			</li>
		</div>
		<div class="form-group row">

			<div class="input-group col-md-6">
				<!-- 입주 가능 날짜 -->
				<li style="margin-top: 10px;"></li> 
				<span style="margin-right: 10px; margin-top: 10px;">입주 가능 날짜</span> 
				<input type="text" name="moveSchedule" id="moveSchedule" readonly="readonly" />
			</div>
			<div class="input-group col-md-6">
				<!-- 임대 만기 날짜 -->
				<span style="margin-right: 10px; margin-top: 10px;">임대 만기 날짜</span>
				<input type="text" name="" end_of_lease"" id="end_of_lease"
					readonly="readonly" />
			</div>

		</div>

		<li>상세 정보 : 
			<!-- select -->
			<div class="input-group mb-4">
				<!-- 방 개수 -->
				<span style="margin-right: 10px; margin-top: 10px;">방 개수</span> 
				<select class="form-control" id="room" name="room" style="width: 200px; margin-right: 30px; margin-top: 5px;">
					<option value="none">선택</option>
					<option>1개</option>
					<option>2개</option>
					<option>3개</option>
					<option>4개</option>
					<option>5개</option>
					<option>6개 이상</option>
				</select>

				<!-- 욕실수 -->
				<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
				<select class="form-control" id="bathroom" name="bathroom" style="width: 100px; margin-right: 30px; margin-top: 5px;">
					<option value="none">선택</option>
					<option>1개</option>
					<option>2개</option>
					<option>3개 이상</option>
				</select>

				<!-- 향 -->
				<span style="margin-right: 10px; margin-top: 10px;">향</span> 
				<select class="form-control" style="width: 100px; margin-right: 30px; margin-top: 5px;">
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

				<!-- 난방방식 -->
				<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
				<select class="form-control" style="width: 100px; margin-right: 30px; margin-top: 5px;">
					<option value="none">선택</option>
					<option>도시가스</option>
					<option>LPG</option>
					<option>전기</option>
					<option>기타</option>
				</select>

			</div>

			<div class="input-group mb-4">
				<!-- 세대수 -->
				<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
				<input type="text" name="area1" id="area1" class="form-control" style="width: 100px; margin-top: 5px;">
				<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">세대</span>
				</div>

				<!-- 건축년도 -->
				<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
				<input type="text" name="area1" id="area1" class="form-control" style="width: 100px; margin-top: 5px;">
				<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">년</span>
				</div>

				<!-- 층수 / 총층수-->
				<span style="margin-right: 10px; margin-top: 10px;">층수 / 총 층수</span>
				<input type="text" name="area1" id="area1" class="form-control" style="width: 50px; margin-top: 5px;">
				<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">층</span>
				</div>
				<span style="margin-top: 10px; font-size: 140%;">/</span> 
				<input type="text" name="area1" id="area1" class="form-control" style="width: 50px; margin-top: 5px; margin-left: 10px;">
				<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">층</span>
				</div>
			</div> <!--checkbox -->
			<div class="input-group mb-3">
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="aircondition" name="aircondition" value="냉방시설"> 
					<label for="aircondition"> 냉방시설 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="parking" value="주차유무" name="parking">
					<label for="parking"> 주차유무 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="elevator" value="승강기" name="elevator">
					<label for="elevator"> 승강기 </label>
				</div>

			</div>
		</li>
		<!-- text input -->
					
				<li>메 모 </li>
					<!-- textarea -->
					<div class="form-group">
						
							<textarea name="context" class="form-control" rows="3" ></textarea>
					</div>
					
				<li>보안시설 </li>
					<!-- checkbox -->
					<div class="input-group row">
						<div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;" >
							<input type="checkbox" id="SECURITY_GUARD" name="SECURITY_GUARD" value="경비원">
	                        <label for="SECURITY_GUARD">
	                        경비원
	                        </label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="VIDEOPHONE" value="비디오폰" name="VIDEOPHONE">
	                    	<label for="VIDEOPHONE">
	                    	비디오폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                    <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="INTERPHONE" value="인터폰" name="INTERPHONE" >
	                    	<label for="INTERPHONE">
	                    	인터폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="CARD_KEY" value="카드키" name="CARD_KEY" >
	                    	<label for="CARD_KEY">
	                    	카드키
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="CCTV	" value="방범카메라" name="CCTV	" >
	                    	<label for="CCTV">
	                    	방범카메라
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="DOOR_SECURITY" value="현관보안" name="DOOR_SECURITY" >
	                    	<label for="DOOR_SECURITY">
	                    	현관보안
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="WINDOW_GUARD	" value="방범창" name="WINDOW_GUARD	" >
	                    	<label for="WINDOW_GUARD">
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
						<input type="text" class="form-control" placeholder="이름"  style="width: 100px;">
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
	                  </div>
	                  <!-- /.input group -->
	                </div>
	                
	                <!-- phone mask -->
	                <div class="form-group col-md-6">
	                  <label>임차인</label>
	                  <div class="input-group">
	                    <div class="input-group-prepend">
						<!-- text input -->
						<input type="text" class="form-control" placeholder="이름"  style="width: 100px;">
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
	                  </div>
	                  <!-- /.input group -->
	                </div>
					</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">등록</button>
				</div>       							   
</div>
        



</body>
</html>