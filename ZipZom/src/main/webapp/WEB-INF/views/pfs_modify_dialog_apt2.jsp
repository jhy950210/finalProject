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

</head>
<body class="hold-transition sidebar-mini " >

<!-- dialog 아파트 -->

<div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
	<!-- 매물 주소 api 활용-->
	<form name="form2" id="form2" method="post" style="margin-right: 10px; margin-top: 10px; margin-bottom: 10px;">
	<div>
	<ul>
		<li style="margin-right: 10px; margin-top: 10px;"> 매물 주소(아파트) </li>
	</ul>
	
			<input type="hidden" name="seqPfs" id="seqPfs" value="">
			<input type="hidden" name="bType" id="bType" style="width:40%;" value="" />
	<table >
			<colgroup>
				<col style="width:25%"><col>
			</colgroup>
			<tbody>
				<tr>
					<!-- <th>우편번호</th> -->
					<td>
						<div class="form-group row">
						</div>
					</td>
				</tr>
				<tr>
					<th>도로명주소</th>
					<td>
						<div class="form-group row">
						<input class="form-control" type="text" id="address" name="address" style="width:400px; " readonly>
						</div>
					</td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
						<div class="form-group row">
						<input class="form-control" type="text" id="hNumber" name="hNumber" style="width:40%; margin-right: 10px;" value="" readonly>
						<input class="form-control" type="text" id="dong" name="dong"  style="width:40% " value="" readonly>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	

	</div>
							
	<!-- 계약 유형 -->
	
	<ul>
	<li style="margin-right: 20px; margin-left: 7.5px; margin-top: 5px;">계약 유형 
		<div class="form-group row" > 
			<div class="icheck-primary d-inline">
			<select class="form-control" id="contractType" name="contractType" style="width: 100px; margin-right: 30px; margin-top: 5px;" disabled>
						<option value="none">선택</option>
						<option>매매</option>
						<option>전세</option>
						<option>월세</option>
					</select>
			</div>
		</div>
	</li>
	    </ul>                	
	<!-- 금액 정보 -->
	<ul>
		<li style="margin-right: 20px; margin-top: 5px;">금액 정보
			<div class="form-group row">
				<section>
					<!-- 매매가 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
						<input type="text" class="form-control" name="budget1" id="budget1" style="width: 80px; margin-top: 5px;" readonly>
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
				
				<section>						
					<!-- 현재 임차인 보증금 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">보증금</span>
						<input type="text" class="form-control" name="budget2" id="budget2" style="width: 80px; margin-top: 5px;" readonly>
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
									
				<section>
					<!-- 현재 임차인 월세 -->
					<div class="input-group mb-1">
						<span style="margin-right: 10px; margin-top: 10px;">현월세</span>
						<input type="text" class="form-control" name="budget3" id="budget3" style="width: 80px; margin-top: 5px;" readonly>
						<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만원</span>
						</div>
					</div>
				</section>
				
				<section>						
					<!-- 집에 저당잡힌 은행 융자금 -->
					<div class="input-group mb-1">
				<span style="margin-right: 10px; margin-top: 10px;">대출 유무</span>
				<select class="form-control" id="loan" name="loan" style="width: 125px; margin-top: 5px;" disabled>
				<option value="none">선택</option>
					<option>융자 있음</option>
					<option>융자 없음</option>
				</select>
					</div>
				</section>
			</div>	
		</li>
		</ul>
	
	              			
	<!-- 면적 정보 -->
	<ul>
	<li style="margin-right: 20px; margin-top: 5px;">면적 정보
		<div class="form-group row">
			<section>
				<div class="input-group mb-3">
					<!-- 공용부분 포함한 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">공급면적</span> 
					<input type="text" name="area1" id="area1" class="form-control" style="width: 100px; margin-top: 5px;" readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-3">
					<!-- 실제 집 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">전용면적</span> 
					<input type="text" name="area2" id="area2" class="form-control" style="width: 100px; margin-top: 5px;" readonly>
					<div class="input-group-append">
					<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
		
			<section>
				<div class="input-group mb-3">
					<!-- 건물 대지에서 내 집이 차지하는 면적 -->
					<span style="margin-right: 10px; margin-top: 10px;">대지면적</span> 
					<input type="text" name="area3" id="area3" class="form-control" style="width: 100px; margin-top: 5px;" readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">m²</span>
					</div>
				</div>
			</section>
		</div>
	</li>
	</ul>
	<ul>
	<li style="margin-right: 20px; margin-top: 5px;">입주 정보
		<div class="form-group row">
			<section>
				<div class="input-group col-md-12">
					<!-- 입주 가능 날짜 -->
					<span style="margin-right: 10px; margin-top: 10px;">입주 가능 날짜</span> 
					<input type="text" name="moveSchedule" id="moveSchedule" readonly="readonly" />
				</div>
			</section>
			<section>
				<div class="input-group col-md-12">
					<!-- 임대 만기 날짜 -->
					<span style="margin-right: 10px; margin-top: 10px;">임대 만기 날짜</span>
					<input type="text" name="endOfLease" id="endOfLease" readonly="readonly" />
				</div>
			</section>
		</div>
	</li>
</ul>
<ul>
	<li style="margin-right: 20px; margin-top: 5px;">상세 정보</li></ul>
		<div class="form-group row">
			<section>
				<div class="input-group mb-1">
					<!-- 방 개수 -->
					<span style="margin-right: 10px; margin-top: 10px;">방개수</span> 
					<input type="text" class="form-control" id="room" name="rooms" style="width: 100px; margin-right: 30px; margin-top: 5px;" readonly>
				</div>
			</section>

			<section>
				<div class="input-group mb-1">
					<!-- 향 -->
					<span style="margin-right: 10px; margin-top: 10px;">향</span> 
					<input type="text" class="form-control" id="direction" name="direction" style="width: 100px; margin-right: 30px; margin-top: 5px;" readonly>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-1">
					<!-- 욕실수 -->
					<span style="margin-right: 10px; margin-top: 10px;">욕실수</span> 
					<input type="text" class="form-control" id="bathroom" name="bathrooms" style="width: 100px; margin-right: 30px; margin-top: 5px;" readonly>
				</div>
			</section>

			<section>
				<div class="input-group mb-1">
					<!-- 난방방식 -->
					<span style="margin-right: 10px; margin-top: 10px;">난방방식</span> 
					<input type="text" class="form-control" name="heatingSystem" id="heatingSystem" style="width: 100px; margin-right: 10px; margin-top: 5px;" readonly>
				</div>
			</section>
		</div>
			
		<div class="form-group row">
			<section>
				<div class="input-group mb-2">
					<!-- 세대수 -->
					<span style="margin-right: 10px; margin-top: 10px;">세대수</span> 
					<input type="text" name="numberOfHousehold" id="numberOfHousehold" class="form-control" style="width: 100px; margin-top: 5px;"readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">세대</span>
					</div>
				</div>
			</section>
			
			<section>
				<div class="input-group mb-2">
					<!-- 건축년도 -->
					<span style="margin-right: 10px; margin-top: 10px;">건축년도</span> 
					<input type="text" name="bYear" id="bYear" class="form-control" style="width: 100px; margin-top: 5px;" readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">년</span>
					</div>
				</div>
			</section>

			<section>
				<div class="input-group mb-2">
					<!-- 층수 / 총층수-->
					<span style="margin-right: 10px; margin-top: 10px;">층수 / 총 층수</span>
					<input type="text" name="floor" id="floor" class="form-control" style="width: 50px; margin-top: 5px;" readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">층</span>
					</div>
					<span style="margin-top: 10px; font-size: 140%;">/</span> 
					<input type="text" name="floorTotal" id="floorTotal" class="form-control" style="width: 50px; margin-top: 5px; margin-left: 10px;" readonly>
					<div class="input-group-append">
						<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">층</span>
					</div>
				</div>
			</section>
			</div>
			
			<div class="input-group mb-3">
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="aircondition" name="aircondition" value="1" disabled> 
					<label for="aircondition"> 냉방시설 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="parking" value="1" name="parking" disabled>
					<label for="parking"> 주차유무 </label>
				</div>
				<div class="icheck-primary d-inline" style="margin-right: 20px;">
					<input type="checkbox" id="elevator" value="1" name="elevator" disabled>
					<label for="elevator"> 승강기 </label>
				</div>

			</div>
		<!-- text input -->
					
				<ul><li>메 모 </li></ul>
					<!-- textarea -->
					<div class="form-group">
					<textarea name="context" id="context" class="form-control" rows="3" readonly></textarea>
					</div>
					
				<ul><li>보안시설 </li></ul>
					<!-- checkbox -->
					<div class="input-group row">
						<div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;" >
							<input type="checkbox" id="securityGuard" name="securityGuard" value="1" disabled>
	                        <label for="securityGuard">
	                        경비원
	                        </label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
						<div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="videophone" value="1" name="VIDEOPHONE" disabled>
	                    	<label for="videophone">
	                    	비디오폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                    <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="interphone" value="1" name="interphone" disabled>
	                    	<label for="interphone">
	                    	인터폰
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="cardKey" value="1" name="cardKey" disabled>
	                    	<label for="cardKey">
	                    	카드키
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="cctv" value="1" name="cctv" disabled>
	                    	<label for="cctv">
	                    	방범카메라
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="doorSecurity" value="1" name="doorSecurity" disabled>
	                    	<label for="doorSecurity">
	                    	현관보안
	                    	</label>
	                    </div>
	                    </div>
	                    <div class="form-group col-md-3">
	                      <div class="icheck-primary d-inline" style="margin-right: 20px;">
	                    	<input type="checkbox" id="windowGuard" value="방범창" name="windowGuard" disabled>
	                    	<label for="windowGuard">
	                    	방범창
	                    	</label>
	                    </div>
	                    </div>
						
					</div>
					
				<ul><li>연 락 처 </li></ul>
				
					<!-- phone mask -->
					<div class="input-group row">
	                <div class="form-group col-md-6">
	                  <label>임대인</label>
	                  <div class="input-group">
	                    <div class="input-group-prepend">
	                    <!-- text input -->
						<input type="text" class="form-control" name="lessorName" id="lessorName" placeholder="이름"  style="width: 100px;" readonly>
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" name="lessorTel" id="lessorTel" data-inputmask='"mask": "(999) 9999-9999"' data-mask readonly>
	                  </div>
	                  <!-- /.input group -->
	                </div>
	                
	                <!-- phone mask -->
	                <div class="form-group col-md-6">
	                  <label>임차인</label>
	                  <div class="input-group">
	                    <div class="input-group-prepend">
						<!-- text input -->
						<input type="text" class="form-control" name="lesseeName" id="lesseeName" placeholder="이름"  style="width: 100px;" readonly>
	                      <span class="input-group-text"><i class="fas fa-phone"></i></span>
	                    </div>
	                    <input type="text" class="form-control" name="lesseeTel" id="lesseeTel" data-inputmask='"mask": "(999) 9999-9999"' data-mask readonly>
	                  </div>
	                  <!-- /.input group -->
	                </div>
					</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<!-- <button type="button" id="pfsModify" class="btn btn-primary" data-dismiss="modal">수정</button> -->
				</div>   
		</form> 
       </div> 


<script type="text/javascript">



</script>
</body>
</html>