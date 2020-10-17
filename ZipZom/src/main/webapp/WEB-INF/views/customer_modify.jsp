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
<script type="text/javascript">
</script>
</head>
<body>

<!-- 신규등록 modal -->
<div class="modal fade" id="modal-modify">
	<div class="modal-dialog modal-xl">
		<!-- 모달 시작 -->
		<div class="modal-content">
			<!-- modal 헤더 -->
			<div class="modal-header">
				<h4 class="modal-title">고객 수정</h4>
	              
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                <span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- modal 바디 -->
			<!-- 폰트 테스트로 넣어봤음 / 나중에 바꿀 거나 css로 옮길것 -->
			<form id="mcfrm" method="post">
			<div class="modal-body" style="font-family: 'Helvetica', sans-serif; color: #0553DD; font-weight: bold;">
			<input type="hidden" id="seqC" name=seqC value="" />
				<ul>
					<li>
						<div class="form-group row">
							<section>
								<div class="input-group mb-3">
								<!-- 고객 이름 -->
	              				<span style="margin-right: 10px; margin-top: 10px;">고객 이름</span>
								<input type="text" class="form-control" id="name" name="name" value="" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
								</div>
							</section>
							
							<section>
								<div class="input-group mb-3">
								<!-- 연락처 -->
								<span style="margin-right: 20px; margin-top: 10px;">연 락 처  </span>
								<span class="input-group-text" style="margin-top: 5px;"><i class="fas fa-phone"></i></span>
								<input type="text" class="form-control" id="tel" name="tel" placeholder="연락처" data-inputmask='"mask": "(999) 9999-9999"' style="width: 158px; margin-top: 5px; margin-right: 15px;">
								</div>
							</section>
							<section>
								<div class="input-group mb-3">
									<!-- 매물 타입 -->
									<span style="margin-right: 10px; margin-top: 10px;">매물</span>
									<select class="form-control select2bs4" id="bType" name="bType" style="width: 200px; margin-right: 30px; margin-top: 5px;">
				                    	<option value="none">선택</option>
											<option>아파트</option>
											<option>오피스텔</option>
											<option>다가구/단독</option>
											<option>다세대/빌라</option>
									</select>
								</div>
							</section>
						</div>
					</li>
					<li>
						<div class="form-group row">
							<section>
								<div class="input-group mb-3">
									<!-- 고객 속성 -->
									<span style="margin-right: 10px; margin-top: 10px;">고객 속성</span>
									<select class="form-control select2bs4" id="type" name="type" style="width: 200px; margin-right: 30px; margin-top: 5px;">
				                    	<option value="none">선택</option>
											<option>매도인</option>
											<option>매수인</option>
											<option>임대인</option>
											<option>임차인</option>
											<option>집주인</option>
											<option>일반상담</option>
									</select>
								</div>
							</section>
							<section>
								<div class="input-group mb-3">
									<!-- 진행 상태 -->
									<span style="margin-right: 10px; margin-top: 10px;">진행 상태</span>
									<select class="form-control select2bs4" id="progress" name="progress" style="width: 200px; margin-right: 30px; margin-top: 5px;">
				                    	<option value="none">선택</option>
											<option>계약대기</option>
											<option>계약준비</option>
											<option>계약완료</option>
											<option>방문예정</option>
											<option>기타</option>
									</select>
								</div>
							</section>
							<section>
								<div class="input-group mb-3">
									<!-- 건축 년도 -->
									<span style="margin-right: 10px; margin-top: 10px;">건축 년도</span>
									<input type="text" class="form-control" id="bYear" name="bYear" style="width: 200px; margin-right: 30px; margin-top: 5px;" >
							
								</div>
							</section>
						</div>
	              	</li>
	              	
	              	
	              	<li>
	              		<div class="form-group row">
	              			
	              			<section>
								<div class="input-group mb-3">
									<!-- 고객 속성 -->
									<span style="margin-right: 10px; margin-top: 10px;">계약 타입</span>
									<select class="form-control select2bs4" id="contractType" name="contractType" style="width: 200px; margin-right: 30px; margin-top: 5px;">
				                    	<option value="none">선택</option>
											<option>매매</option>
											<option>전세</option>
											<option>월세</option>
									</select>
								</div>
							</section>
							
							<section>
		              			<div class="input-group mb-4">
								<!-- 방문 날짜 -->
								<span style="margin-right: 10px; margin-top: 10px;">방문 날짜</span>
								<input type="text" name="visitDate" id="visitDate" style="width: 200px; margin-right: 30px; margin-top: 5px;" readonly="readonly"/>
								</div>
							</section>
							
							<section>
		              			<div class="input-group mb-4">
								<!-- 입주 날짜 -->
								<span style="margin-right: 10px; margin-top: 10px;">입주 날짜</span>
								<input type="text" name="moveSchedule" id="moveSchedule" style="width: 200px; margin-right: 30px; margin-top: 5px;" readonly="readonly"/>
								</div>
							</section>
						</div>
	              	</li>
	              	
	              	
	         		<li>
	         			<!-- 예 산 -->
	         			<span>예  산</span>
	         			<div class="form-group row">
		         			<section>
			         			<div class="input-group mb-1">
			              			<span style="margin-right: 10px; margin-top: 10px;">매매가</span>
									<input type="text" class="form-control" id="budgetT1" name="budgetT1" style="width: 100px; margin-top: 5px;" >
									<div class="input-group-append">
									<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만</span>
									</div>
								</div>
							</section>
							<section>
			         			<div class="input-group mb-1">	
									<span style="margin-right: 10px; margin-top: 10px;">보증금</span>
									<input type="text" class="form-control" id="budgetT2" name="budgetT2" style="width: 100px; margin-top: 5px;" >
									<div class="input-group-append">
									<span class="input-group-text" style="margin-right: 10px; margin-top: 5px; ">만</span>
									</div>
								</div>
							</section>
							<section>
			         			<div class="input-group mb-1">
									<span style="margin-right: 10px; margin-top: 10px;">현월세</span>
									<input type="text" class="form-control" id="budgetT3" name="budgetT3" style="width: 100px;  margin-top: 5px;" >
									<div class="input-group-append">
									<span class="input-group-text" style="margin-right: 10px; margin-top: 5px;">만</span>
									</div>
								</div>
							</section>
							<section>
			         			<div class="input-group mb-1">
									<span style="margin-right: 10px;  margin-top: 10px;">대출유무</span>
									<select class="form-control select2bs4" id="budgetL" name="budgetL" style="width: 125px; margin-top: 5px;">
				                    	<option value="none">선택</option>
											<option>융자 있음</option>
											<option>융자 없음</option>
								</select>
								</div>
							</section>
						</div>
					</li>
					
					
					<li>
						<div class="form-group row">
							<section>
			              		<div class="input-group mb-3">
			              			<!-- 전용면적 -->
			              			<span style="margin-right: 15px; margin-top: 5px;">전용 면적</span>
									<input type="text" class="form-control" id="area2" name="area2" style="width: 100px; margin-top: 5px;">
									<div class="input-group-append">
										<span class="input-group-text" style="margin-right: 30px; margin-top: 5px;">평</span>
									</div>
								</div>
							</section>
							<section>
			              		<div class="input-group mb-3">
								<!-- 방 개수 -->
								<span style="margin-right: 10px; margin-top: 10px;">방 개수</span>
								<select class="form-control select2bs4" id="room" name="rooms" style="width: 100px; margin-right: 30px; margin-top: 5px;">
			                    	<option value="none">선택</option>
										<option>1개</option>
										<option>2개</option>
										<option>3개</option>
										<option>4개</option>
										<option>5개 이상</option>
								</select>
								</div>
							</section>
							<section>
			              		<div class="input-group mb-3">
								<!-- 향 -->
								<span style="margin-right: 10px; margin-top: 10px;">향</span>
								<select class="form-control select2bs4" id="direction" name="direction" style="width: 100px; margin-right: 30px; margin-top: 5px;">
			                    	<option value="none">선택</option>
										<option>북향</option>
										<option>남향</option>
										<option>동향</option>
										<option>서향</option>
										<option>모름</option>
								</select>
								</div>
							</section>
							<section>
			              		<div class="input-group mb-3">
								<!-- 층수/총 층수 -->
								<span style="margin-right: 10px; margin-top: 10px;">층수</span>
								<input type="text" class="form-control" id="floor" name="floor" style="width: 60px; margin-right: 10px; margin-top: 5px;" >
								</div>
							</section>
							<section>
			              		<div class="input-group mb-3">
			              		<!-- 승강기 -->
								<span style="margin-right: 10px; margin-top: 10px;">승강기</span>
								<select class="form-control select2bs4" id="elevator" name="elevator" style="width: 100px; margin-right: 30px; margin-top: 5px;">
			                    	<option value="none">선택</option>
										<option>있음</option>
										<option>없음</option>
								</select>
								</div>
							</section>
						
						</div>
	              	</li>
	              	
	              	<!-- 옵션 -->
	              	<li>
	              		<span>옵션</span>
	              			<div class="input-group mb-3">
								<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="bed" name="bed" value="1" >
	                        	<label for="bed">
	                        	<span style="margin-right: 10px; margin-top: 10px;">침대</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="washingMachine" name="washingMachine" value="1" >
	                        	<label for="washingMachine">
	                        	<span style="margin-right: 10px; margin-top: 10px;">세탁기</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="desk" name="desk" value="1" />
	                        	<label for="desk">
	                        	<span style="margin-right: 10px; margin-top: 10px;">책상</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="dryingMachine" name="dryingMachine" value="1" >
	                        	<label for="dryingMachine">
	                        	<span style="margin-right: 10px; margin-top: 10px;">건조기</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="induction" name="induction" value="1" >
	                        	<label for="induction">
	                        	<span style="margin-right: 10px; margin-top: 10px;">인덕션</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="electricRange" name="electricRange" value="1" >
	                        	<label for="electricRange">
	                        	<span style="margin-right: 10px; margin-top: 10px;">전기렌지</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="gasRange" name="gasRange" value="1" >
	                        	<label for="gasRange">
	                        	<span style="margin-right: 10px; margin-top: 10px;">가스렌지</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="wordrobe" name="wordrobe" value="1" >
	                        	<label for="wordrobe">
	                        	<span style="margin-right: 10px; margin-top: 10px;">옷장</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="sink" name="sink" value="1" >
	                        	<label for="sink">
	                        	<span style="margin-right: 10px; margin-top: 10px;">싱크대</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="shoeRack" name="shoeRack" value="1" >
	                        	<label for="shoeRack">
	                        	<span style="margin-right: 10px; margin-top: 10px;">신발장</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="refrigerator" name="refrigerator" value="1" >
	                        	<label for="refrigerator">
	                        	<span style="margin-right: 10px; margin-top: 10px;">냉장고</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="bathTube" name="bathTube" value="1" >
	                        	<label for="bathTube">
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
	                        	<input type="checkbox" id="securityGuard" name="securityGuard" value="1" >
	                        	<label for="securityGuard">
	                        	<span style="margin-right: 10px; margin-top: 10px;">경비원</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="videophone" name="videophone" value="1" >
	                        	<label for="videophone">
	                        	<span style="margin-right: 10px; margin-top: 10px;">비디오폰</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="interphone" name="interphone" value="1" >
	                        	<label for="interphone">
	                        	<span style="margin-right: 10px; margin-top: 10px;">인터폰</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="cardKey" name="cardKey" value="1" >
	                        	<label for="cardKey">
	                        	<span style="margin-right: 10px; margin-top: 10px;">카드키</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="cctv" name="cctv" value="1" >
	                        	<label for="cctv">
	                        	<span style="margin-right: 10px; margin-top: 10px;">CCTV</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="doorSecurity" name="doorSecurity" value="1" >
	                        	<label for="doorSecurity">
	                        	<span style="margin-right: 10px; margin-top: 10px;">현관보안</span>
	                        	</label>
	                      		</div>
	                      		
	                      		<div class="icheck-primary d-inline">
	                        	<input type="checkbox" id="windowGuard" name="windowGuard" value="1" >
	                        	<label for="windowGuard">
	                        	<span style="margin-right: 10px; margin-top: 10px;">방범창</span>
	                        	</label>
	                      		</div>
							
							</div>
	              	</li>
	              	
	              	<!-- 메모 -->
	              	<li>
	              		<div class="form-group">
	              			<span>메 모</span>
	                        <textarea class="form-control" id="context" name="context" rows="3" placeholder="특이사항 메모.."></textarea>
	              		</div>
	              	
	              	</li>
	              	
					<!-- 닫기 / 등록 버튼 -->	              
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						<button type="button" id="customerModify" class="btn btn-primary" data-dismiss="modal">수정</button>
					</div>              
	            </div>
       			</form>
	      </div>
    </section>

  </div>

</div>
<script type="text/javascript">
$('#moveSchedule1').datepicker();
$('#visitDate1').datepicker();
$('#moveSchedule1').datepicker('option', 'dateFormat', 'yy-mm-dd');
$('#visitDate1').datepicker('option', 'dateFormat', 'yy-mm-dd');
</script>

</body>
</html>
