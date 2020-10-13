<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Zipzom - Realtor</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

<!-- 신규등록 modal -->
<div class="modal fade" id="modal-xl">
	<div class="modal-dialog modal-xl">
		<!-- 모달 시작 -->
		<div class="modal-content">
			<!-- modal 헤더 -->
			<div class="modal-header">
				<h4 class="modal-title">고객 신규 등록</h4>
	              
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                <span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- modal 바디 -->
			<!-- 폰트 테스트로 넣어봤음 / 나중에 바꿀 거나 css로 옮길것 -->
			<form action="./customer_write.json" name="cfrm" method="post">
			<div class="modal-body" style="font-family: 'Helvetica', sans-serif; color: #085ee4; font-weight: bold;">
				<ul>
					<li>
						<div class="input-group mb-3">
							<!-- 고객 이름 -->
	              			<span style="margin-right: 10px; margin-top: 10px;">고객 이름</span>
							<input type="text" class="form-control" name="name" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
							<span style="margin-right: 10px; margin-top: 10px;">고객 속성</span>
							<select class="form-control select2bs4" name="type" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>매도인</option>
									<option>매수인</option>
									<option>임대인</option>
									<option>임차인</option>
									<option>집주인</option>
									<option>일반상담</option>
							</select>
							
							<!-- 진행 상태 -->
							<span style="margin-right: 10px; margin-top: 10px;">진행 상태</span>
							<select class="form-control select2bs4" name="progress" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>계약대기</option>
									<option>계약준비</option>
									<option>계약완료</option>
									<option>방문예정</option>
									<option>기타</option>
							</select>
						</div>
	              	</li>
	              	
	              	
	              	<li>
	              		<!-- 계약 타입 -->
	              		<div class="input-group mb-3">
	              		<span style="margin-right: 10px; margin-top: 10px;">계약 타입</span>
						<input type="text" class="form-control" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
						<span style="margin-right: 10px; margin-top: 10px;">방문 날짜</span>
						<input type="text" name="visitDate" id="visitDate" readonly="readonly"/>
						
						<!-- 입주 날짜 -->
						<span style="margin-right: 10px; margin-top: 10px;">입주 날짜</span>
							<input type="text" name="moveSchedule" id="moveSchedule" readonly="readonly"/>
						</div>
	              	</li>
	              	
	              	
	         		<li>
	         			<!-- 예 산 -->
	         			<span>예  산</span>
	         			<div class="input-group mb-3">
	              		<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
						<input type="text" class="form-control" name="budgetT1" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
						<span style="margin-right: 10px; margin-top: 10px;">현보증금</span>
						<input type="text" class="form-control" name="budgetT2" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
						<span style="margin-right: 10px; margin-top: 10px;">현월세</span>
						<input type="text" class="form-control" name="budgetT3" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
						<span style="margin-right: 10px; margin-top: 10px;">대출유무</span>
						<select class="form-control select2bs4" name="budget_l" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>융자 50%이하</option>
									<option>융자 50%이상</option>
									<option>융자 없음</option>
						</select>
						</div>
					</li>
					
					
					<li>
	              		<div class="input-group mb-3">
	              			<!-- 전용면적 -->
	              			<span style="margin-right: 15px; margin-top: 5px;">전용 면적</span>
							<input type="text" name="area2" class="form-control" >
							<div class="input-group-append">
								<span class="input-group-text" style="margin-right: 30px; ">평</span>
							</div>
							
							<!-- 방 개수 -->
							<span style="margin-right: 10px; margin-top: 10px;">방 개수</span>
							<select class="form-control select2bs4" name="rooms" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>1개</option>
									<option>2개</option>
									<option>3개</option>
									<option>4개</option>
									<option>5개 이상</option>
							</select>
							
							<!-- 향 -->
							<span style="margin-right: 10px; margin-top: 10px;">향</span>
							<select class="form-control select2bs4" name="direction" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>북향</option>
									<option>남향</option>
									<option>동향</option>
									<option>서향</option>
									<option>모름</option>
							</select>
							
							<!-- 층수/총 층수 -->
							<span style="margin-right: 10px; margin-top: 10px;">층수/총층수</span>
							<input type="text" class="form-control" name="floor" style="width: 20px; margin-right: 30px; margin-top: 5px;" >
							<input type="text" class="form-control" name="floorTotal" style="width: 20px; margin-right: 30px; margin-top: 5px;" >
						
							<span style="margin-right: 10px; margin-top: 10px;">승강기</span>
							<select class="form-control select2bs4" name="elevators" style="width: 200px; margin-right: 30px; margin-top: 5px;">
		                    	<option value="none">선택</option>
									<option>있음</option>
									<option>없음</option>
							</select>
						
						</div>
	              	</li>
	              	
	              	<!-- 옵션 -->
	              	<li>
	              		<span>옵션</span>
	              			<div class="input-group mb-3">
								<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck1" name="bed" value="1" >
	                        	<label for="optioncheck1">
	                        	<span style="margin-right: 10px; margin-top: 10px;">침대</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck2" name="washingMachine" value="1" >
	                        	<label for="optioncheck2">
	                        	<span style="margin-right: 10px; margin-top: 10px;">세탁기</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck3" name="desk" value="1" />
	                        	<label for="optioncheck3">
	                        	<span style="margin-right: 10px; margin-top: 10px;">책상</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck4" name="dryingMachine" value="1" >
	                        	<label for="optioncheck4">
	                        	<span style="margin-right: 10px; margin-top: 10px;">건조기</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck5" name="induction" value="1" >
	                        	<label for="optioncheck5">
	                        	<span style="margin-right: 10px; margin-top: 10px;">인덕션</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck6" name="electricRange" value="1" >
	                        	<label for="optioncheck6">
	                        	<span style="margin-right: 10px; margin-top: 10px;">전기렌지</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck7" name="gasRange" value="1" >
	                        	<label for="optioncheck7">
	                        	<span style="margin-right: 10px; margin-top: 10px;">가스렌지</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck8" name="wordrobe" value="1" >
	                        	<label for="optioncheck8">
	                        	<span style="margin-right: 10px; margin-top: 10px;">옷장</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck9" name="sink" value="1" >
	                        	<label for="optioncheck9">
	                        	<span style="margin-right: 10px; margin-top: 10px;">싱크대</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck10" name="shoeRack" value="1" >
	                        	<label for="optioncheck10">
	                        	<span style="margin-right: 10px; margin-top: 10px;">신발장</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck11" name="refrigertor" value="1" >
	                        	<label for="optioncheck11">
	                        	<span style="margin-right: 10px; margin-top: 10px;">냉장고</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="optioncheck12" name="bathTube" value="1" >
	                        	<label for="optioncheck12">
	                        	<span style="margin-right: 10px; margin-top: 10px;">욕조</span>
	                        	</label>
	                      		</div>
							
							</div>
	              	</li>
	              	
	              	
	              	<!-- 보안시설 -->
	              	<li>
	              		<span>보안시설</span>
	              			<div class="input-group mb-3">
								<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck1" name="securityGuard" value="1" >
	                        	<label for="securitycheck1">
	                        	<span style="margin-right: 10px; margin-top: 10px;">경비원</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck2" name="videophone" value="1" >
	                        	<label for="securitycheck2">
	                        	<span style="margin-right: 10px; margin-top: 10px;">비디오폰</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck3" name="interphone" value="1" >
	                        	<label for="securitycheck3">
	                        	<span style="margin-right: 10px; margin-top: 10px;">인터폰</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck4" name="cardKey" value="1" >
	                        	<label for="securitycheck4">
	                        	<span style="margin-right: 10px; margin-top: 10px;">카드키</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck5" name="cctv" value="1" >
	                        	<label for="securitycheck5">
	                        	<span style="margin-right: 10px; margin-top: 10px;">CCTV</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck6" name="doorSecurity" value="1" >
	                        	<label for="securitycheck6">
	                        	<span style="margin-right: 10px; margin-top: 10px;">현관보안</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="securitycheck7" name="windowGuard" value="1" >
	                        	<label for="securitycheck7">
	                        	<span style="margin-right: 10px; margin-top: 10px;">방범창</span>
	                        	</label>
	                      		</div>
							
							</div>
	              	</li>
	              	
	              	<!-- 메모 -->
	              	<li>
	              		<div class="form-group">
	              			<span>메 모</span>
	                        <textarea class="form-control" name="context" rows="3" placeholder="특이사항 메모"></textarea>
	              		</div>
	              	
	              	</li>
	              	
	              	
	              	<!-- 임대인 / 임차인 정보 -->
	              	<li>
	              	
	                	<div class="form-group row">
	                		<!-- 임대인 -->
							<span style="margin-right: 15px; margin-top: 5px;">임대인</span>
							<input type="text" class="form-control" name="lessorName" placeholder="이름"  style="width: 150px; margin-right: 15px;">
							<span class="input-group-text"><i class="fas fa-phone"></i></span>
							<input type="text" class="form-control" name="lessorTel" placeholder="연락처" data-inputmask='"mask": "(999) 9999-9999"' style="width: 250px; margin-right: 15px;">
	                  
	                  		<!-- 임차인 -->
							<span style="margin-right: 15px; margin-top: 5px;">임차인</span>   
							<input type="text" class="form-control" name="lesseeName" placeholder="이름"  style="width: 150px; margin-right: 15px;">
							<span class="input-group-text"><i class="fas fa-phone"></i></span>
							<input type="text" class="form-control" name="lesseeTel" placeholder="연락처" data-inputmask='"mask": "(999) 9999-9999"' style="width: 250px; margin-right: 15px;">
						</div>
	
	                </li>
	              
					<!-- 닫기 / 등록 버튼 -->	              
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						<input type="button" id="customerWrite" class="btn btn-primary" value="등록" />
					</div>              
	            </div>
       </form>
	      </div>
    </section>

  </div>

</div>
<script type="text/javascript">
$('#moveSchedule').datepicker();
$('#visitDate').datepicker();
$('#moveSchedule').datepicker('option', 'dateFormat', 'yy-mm-dd');
$('#visitDate').datepicker('option', 'dateFormat', 'yy-mm-dd');
$('#customerWrite').on('click', function(){
	document.cfrm.submit();
})
</script>
</body>
</html>
