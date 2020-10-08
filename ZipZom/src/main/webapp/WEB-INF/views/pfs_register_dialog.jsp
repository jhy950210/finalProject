<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 44라인 아파트, 320라인 오피스텔, 596라인 다세대/빌라, 872라인 다가구,단독 -->

<!-- dialog -->
<div class="modal fade" id="modal-xl">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
            <!-- modal 제목 -->
              <h4 class="modal-title">상세정보 등록</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <!-- modal 본문 -->
            <div class="modal-body">
            <div class="card card-primary card-outline card-outline-tabs">
              <div class="card-header p-0 border-bottom-0">
                <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="custom-tabs-four-home-tab" data-toggle="pill" href="#custom-tabs-four-home" role="tab" aria-controls="custom-tabs-four-home" aria-selected="true">아파트</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-four-officetel-tab" data-toggle="pill" href="#custom-tabs-four-officetel" role="tab" aria-controls="custom-tabs-four-officetel" aria-selected="false">오피스텔</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-four-messages-tab" data-toggle="pill" href="#custom-tabs-four-messages" role="tab" aria-controls="custom-tabs-four-messages" aria-selected="false">다세대/빌라</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="custom-tabs-four-settings-tab" data-toggle="pill" href="#custom-tabs-four-settings" role="tab" aria-controls="custom-tabs-four-settings" aria-selected="false">다가구/단독</a>
                  </li>
                </ul>
              </div>
              <div class="card-body">
                <div class="tab-content" id="custom-tabs-four-tabContent">
                  <div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
                     <form>
                     <ul>
              	<li>
              		<span>매물 주소</span>
              		<span> : 서울특별시 강남구 역삼동 KIC아파트</span>
              		<input type="hidden" name="b_type" value="아파트">
              	</li>
         		<li>
         			<span>거래 유형</span>
         			<span>
         			<div class="form-group clearfix">
         			
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="contract_type" value="매매" checked>
                        <label for="radioPrimary1">
                        	매매
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" value="전세" name="contract_type">
                        <label for="radioPrimary2">
                        	전세
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary3" value="월세" name="contract_type" >
                        <label for="radioPrimary3">
                        	월세
                        </label>
                      </div>
                    </div>
                    
                    </span>
				</li>
              </ul>
              

              <li>금액 정보 : 
              	<div class="input-group mb-3">
              		<span>매매가</span>
					<input type="text" name="BUDGET1" id="budget1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>보증금</span>
					<input type="text" name="BUDGET2" id="budget2"  class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>월세금</span>
					<input type="text" name="BUDGET3" id="budget3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>융자금</span>
					<input type="text" name="LOAN" id="loan" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
                </div>
              </li> 
              <li>면적 정보 : 
              <div class="input-group mb-3">
              		<span>공급면적</span>
					<input type="text" name="area1" id="area1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>전용면적</span>
					<input type="text" name="area2" id="area2" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>대지면적</span>
					<input type="text" name="area3" id="area3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					
                </div>
              </li>
              <li>입주 정보 : </li>
				<!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="moveschedule" class="form-control float-right" id="moveschedule">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>임대 만기 : </li>
              <!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="end_of_lease" class="form-control float-right" id="end_of_lease">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>상세 정보 : </li>
				<!-- select -->
				<div class="form-group">
					<label>방개수</label>
						<select class="custom-select" name="room">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>욕실수</label>
						<select class="custom-select" name="bathroom">
						<option>1</option>
						<option>2</option>
						<option>3개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>향</label>
						<select class="custom-select" name="direction">
						<option>북향</option>
						<option>남향</option>
						<option>서향</option>
						<option>동향</option>
						<option>북서향</option>
						<option>북동향</option>
						<option>남서향</option>
						<option>남동향</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>난방방식</label>
						<select class="custom-select" name="heatingSystem">
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
                        </select>
				</div>
				
				<!--checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="optionPfs" type="checkbox" id="aircondition" value="aircondition">
						<label for="aircondition" class="custom-control-label">냉방시설</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="optionPfs" type="checkbox" id="parking">
						<label for="parking" class="custom-control-label">주차유무</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="optionPfs" type="checkbox" id="elevator" value="elevator">
						<label for="elevator" class="custom-control-label">승강기</label>
					</div>
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>세대수</label>
						<input type="text" name="numberOfHousehold" id="numberOfHousehold" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>층수</label>
						<input type="text" name="floor" id="floor" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>총 층수</label>
						<input type="text" name="floorTotal" id="floorTotal" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>건축 년도</label>
						<input type="text" name="bYear" id="bYear" class="form-control" style="width: 50px;">
				</div>
				
				<!-- textarea -->
				<div class="form-group">
					<label>메모</label>
						<textarea name="context" class="form-control" rows="3" ></textarea>
				</div>
				
				<!-- checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="securityPfs" type="checkbox" id="customCheckbox1" value="true">
						<label for="customCheckbox1" class="custom-control-label">경비원</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox2" value="true">
						<label for="customCheckbox2" class="custom-control-label">비디오폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox3" value="true">
						<label for="customCheckbox3" class="custom-control-label">인터폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox4" value="true">
						<label for="customCheckbox4" class="custom-control-label">카드키</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox5" value="true">
						<label for="customCheckbox5" class="custom-control-label">CCTV</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox6" value="door_security">
						<label for="customCheckbox6" class="custom-control-label">현관보안</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox7" value="window_guard">
						<label for="customCheckbox7" class="custom-control-label">방범창</label>
					</div>
				</div>
				
				<!-- phone mask -->
                <div class="form-group">
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
                <div class="form-group">
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
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" name="apart" id="apart"  class="btn btn-primary">등록</button>
			</div>              
          <!-- /.modal-content --> 
                  </div>
                  </form>
                  <div class="tab-pane fade" id="custom-tabs-four-officetel" role="tabpanel" aria-labelledby="custom-tabs-four-officetel-tab">
                      <form>
                      <ul>
              	<li>
              		<span>매물 주소</span>
              		<span> : 서울특별시 강남구 역삼동 KIC오피스텔</span>
              	</li>
         		<li>
         			<span>거래 유형</span>
         			<span>
         			<div class="form-group clearfix">
         			
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="r1" value="매매" checked>
                        <label for="radioPrimary1">
                        	매매
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" value="전세" name="r1">
                        <label for="radioPrimary2">
                        	전세
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary3" value="월세" name="r1" >
                        <label for="radioPrimary3">
                        	월세
                        </label>
                      </div>
                    </div>
                    
                    </span>
				</li>
              </ul>
              

              <li>금액 정보 : 
              	<div class="input-group mb-3">
              		<span>매매가</span>
					<input type="text" name="budget1" id="budget1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>보증금</span>
					<input type="text" name="budget2" id="budget2"  class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>월세금</span>
					<input type="text" name="budget3" id="budget3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>융자금</span>
					<input type="text" name="loan" id="loan" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
                </div>
              </li> 
              <li>면적 정보 : 
              <div class="input-group mb-3">
              		<span>공급면적</span>
					<input type="text" name="area1" id="area1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>전용면적</span>
					<input type="text" name="area2" id="area2" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>대지면적</span>
					<input type="text" name="area3" id="area3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					
                </div>
              </li>
              <li>입주 정보 : </li>
				<!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="moveSchedule" class="form-control float-right" id="reservation1">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>임대 만기 : </li>
              <!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="endOfLease" class="form-control float-right" id="reservation2">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>상세 정보 : </li>
				<!-- select -->
				<div class="form-group">
					<label>방개수</label>
						<select class="custom-select" name="room">
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
						<option>6개</option>
						<option>7개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>욕실수</label>
						<select class="custom-select" name="bathroom">
						<option>1개</option>
						<option>2개</option>
						<option>3개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>향</label>
						<select class="custom-select" name="direction">
						<option>북향</option>
						<option>남향</option>
						<option>서향</option>
						<option>동향</option>
						<option>북서향</option>
						<option>북동향</option>
						<option>남서향</option>
						<option>남동향</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>난방방식</label>
						<select class="custom-select" name="heating_system">
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
                        </select>
				</div>
				
				<!--checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="aircondition" value="aircondition">
						<label for="aircondition" class="custom-control-label">냉방시설</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="parking" value="parking">
						<label for="parking" class="custom-control-label">주차유무</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="elevator" value="elevator">
						<label for="elevator" class="custom-control-label">승강기</label>
					</div>
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>세대수</label>
						<input type="text" name="number_of_household" id="number_of_household" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>층수</label>
						<input type="text" name="floor" id="floor" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>총 층수</label>
						<input type="text" name="floor_total" id="floor_total" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>건축 년도</label>
						<input type="text" name="b_year" id="b_year" class="form-control" style="width: 50px;">
				</div>
				
				<!-- textarea -->
				<div class="form-group">
					<label>메모</label>
						<textarea name="context" class="form-control" rows="3" ></textarea>
				</div>
				
				<!-- checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox1" value="security_guard">
						<label for="customCheckbox1" class="custom-control-label">경비원</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox2" value="videophone">
						<label for="customCheckbox2" class="custom-control-label">비디오폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox3" value="interphone">
						<label for="customCheckbox3" class="custom-control-label">인터폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox4" value="card_key">
						<label for="customCheckbox4" class="custom-control-label">카드키</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox5" value="cctv">
						<label for="customCheckbox5" class="custom-control-label">CCTV</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox6" value="door_security">
						<label for="customCheckbox6" class="custom-control-label">현관보안</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox7" value="window_guard">
						<label for="customCheckbox7" class="custom-control-label">방범창</label>
					</div>
				</div>
				
				<!-- phone mask -->
                <div class="form-group">
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
                <div class="form-group">
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
			<div class="modal-footer justify-content-between">
				<button type="button" name="officetel" id="officetel" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" name="officetel" id="officetel" class="btn btn-primary">등록</button>
			</div>  
			</form>            
          <!-- /.modal-content -->  
                  </div>
                  
                  <div class="tab-pane fade" id="custom-tabs-four-messages" role="tabpanel" aria-labelledby="custom-tabs-four-messages-tab">
                  <form>
                  <ul>
              	<li>
              		<span>매물 주소</span>
              		<span> : 서울특별시 강남구 역삼동 KIC빌라</span>
              	</li>
         		<li>
         			<span>거래 유형</span>
         			<span>
         			<div class="form-group clearfix">
         			
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="r1" value="매매" checked>
                        <label for="radioPrimary1">
                        	매매
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" value="전세" name="r1">
                        <label for="radioPrimary2">
                        	전세
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary3" value="월세" name="r1" >
                        <label for="radioPrimary3">
                        	월세
                        </label>
                      </div>
                    </div>
                    
                    </span>
				</li>
              </ul>
              

              <li>금액 정보 : 
              	<div class="input-group mb-3">
              		<span>매매가</span>
					<input type="text" name="budget1" id="budget1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>보증금</span>
					<input type="text" name="budget2" id="budget2"  class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>월세금</span>
					<input type="text" name="budget3" id="budget3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>융자금</span>
					<input type="text" name="loan" id="loan" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
                </div>
              </li> 
              <li>면적 정보 : 
              <div class="input-group mb-3">
              		<span>공급면적</span>
					<input type="text" name="area1" id="area1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>전용면적</span>
					<input type="text" name="area2" id="area2" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>대지면적</span>
					<input type="text" name="area3" id="area3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					
                </div>
              </li>
              <li>입주 정보 : </li>
				<!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="moveSchedule" class="form-control float-right" id="reservation1">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>임대 만기 : </li>
              <!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="endOfLease" class="form-control float-right" id="reservation2">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>상세 정보 : </li>
				<!-- select -->
				<div class="form-group">
					<label>방개수</label>
						<select class="custom-select" name="room">
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
						<option>6개</option>
						<option>7개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>욕실수</label>
						<select class="custom-select" name="bathroom">
						<option>1개</option>
						<option>2개</option>
						<option>3개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>향</label>
						<select class="custom-select" name="direction">
						<option>북향</option>
						<option>남향</option>
						<option>서향</option>
						<option>동향</option>
						<option>북서향</option>
						<option>북동향</option>
						<option>남서향</option>
						<option>남동향</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>난방방식</label>
						<select class="custom-select" name="heating_system">
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
                        </select>
				</div>
				
				<!--checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="aircondition" value="aircondition">
						<label for="aircondition" class="custom-control-label">냉방시설</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="parking" value="parking">
						<label for="parking" class="custom-control-label">주차유무</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="elevator" value="elevator">
						<label for="elevator" class="custom-control-label">승강기</label>
					</div>
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>세대수</label>
						<input type="text" name="number_of_household" id="number_of_household" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>층수</label>
						<input type="text" name="floor" id="floor" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>총 층수</label>
						<input type="text" name="floor_total" id="floor_total" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>건축 년도</label>
						<input type="text" name="b_year" id="b_year" class="form-control" style="width: 50px;">
				</div>
				
				<!-- textarea -->
				<div class="form-group">
					<label>메모</label>
						<textarea name="context" class="form-control" rows="3" ></textarea>
				</div>
				
				<!-- checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox1" value="security_guard">
						<label for="customCheckbox1" class="custom-control-label">경비원</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox2" value="videophone">
						<label for="customCheckbox2" class="custom-control-label">비디오폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox3" value="interphone">
						<label for="customCheckbox3" class="custom-control-label">인터폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox4" value="card_key">
						<label for="customCheckbox4" class="custom-control-label">카드키</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox5" value="cctv">
						<label for="customCheckbox5" class="custom-control-label">CCTV</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox6" value="door_security">
						<label for="customCheckbox6" class="custom-control-label">현관보안</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox7" value="window_guard">
						<label for="customCheckbox7" class="custom-control-label">방범창</label>
					</div>
				</div>
				
				<!-- phone mask -->
                <div class="form-group">
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
                <div class="form-group">
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
			<div class="modal-footer justify-content-between">
				<button type="button" name="villa" id="villa" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" name="villa" id="villa" class="btn btn-primary">등록</button>
			</div>
			</form>        
          <!-- /.modal-content -->  
                  </div>
                  <div class="tab-pane fade" id="custom-tabs-four-settings" role="tabpanel" aria-labelledby="custom-tabs-four-settings-tab">
                      <ul>
              	<li>
              		<span>매물 주소</span>
              		<span> : 서울특별시 강남구 역삼동 KIC주택</span>
              	</li>
         		<li>
         			<span>거래 유형</span>
         			</li>
         			<span>
         			<div class="form-group clearfix">
         			
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="r1" value="매매" checked>
                        <label for="radioPrimary1">
                        	매매
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" value="전세" name="r1">
                        <label for="radioPrimary2">
                        	전세
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary3" value="월세" name="r1" >
                        <label for="radioPrimary3">
                        	월세
                        </label>
                      </div>
                    </div>
                    
                    </span>
				
              
              

              <li>금액 정보 : </li> 
              	<div class="input-group mb-3">
              		<span>매매가</span>
					<input type="text" name="budget1" id="budget1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>보증금</span>
					<input type="text" name="budget2" id="budget2"  class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>월세금</span>
					<input type="text" name="budget3" id="budget3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
					<span>융자금</span>
					<input type="text" name="loan" id="loan" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">만원</span>
					</div>
                </div>
              
              <li>면적 정보 : </li>
              <div class="input-group mb-3">
              		<span>공급면적</span>
					<input type="text" name="area1" id="area1" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>전용면적</span>
					<input type="text" name="area2" id="area2" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					<span>대지면적</span>
					<input type="text" name="area3" id="area3" class="form-control" >
					<div class="input-group-append">
					<span class="input-group-text">평</span>
					</div>
					
                </div>
              
              <li>입주 정보 : </li>
				<!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="moveSchedule" class="form-control float-right" id="reservation1">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>임대 만기 : </li>
              <!-- Date range -->
                <div class="form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input type="text" name="endOfLease" class="form-control float-right" id="reservation2">
                  </div>
                  <!-- /.input group -->
                </div>
              <li>상세 정보 : </li>
				<!-- select -->
				<div class="form-group">
					<label>방개수</label>
						<select class="custom-select" name="room">
						<option>1개</option>
						<option>2개</option>
						<option>3개</option>
						<option>4개</option>
						<option>5개</option>
						<option>6개</option>
						<option>7개 이상</option>
                        </select>
				</div>
				</ul>
				<!-- select -->
				<div class="form-group">
					<label>욕실수</label>
						<select class="custom-select" name="bathroom">
						<option>1개</option>
						<option>2개</option>
						<option>3개 이상</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>향</label>
						<select class="custom-select" name="direction">
						<option>북향</option>
						<option>남향</option>
						<option>서향</option>
						<option>동향</option>
						<option>북서향</option>
						<option>북동향</option>
						<option>남서향</option>
						<option>남동향</option>
                        </select>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<label>난방방식</label>
						<select class="custom-select" name="heating_system">
						<option>도시가스</option>
						<option>LPG</option>
						<option>전기</option>
						<option>기타</option>
                        </select>
				</div>
				
				<!--checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="aircondition" value="aircondition">
						<label for="aircondition" class="custom-control-label">냉방시설</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="parking" value="parking">
						<label for="parking" class="custom-control-label">주차유무</label>
					</div>
				</div>
				
				<!-- select -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="pfs_checkbox" type="checkbox" id="elevator" value="elevator">
						<label for="elevator" class="custom-control-label">승강기</label>
					</div>
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>세대수</label>
						<input type="text" name="number_of_household" id="number_of_household" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>층수</label>
						<input type="text" name="floor" id="floor" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>총 층수</label>
						<input type="text" name="floor_total" id="floor_total" class="form-control" style="width: 50px;">
				</div>
				
				<!-- text input -->
				<div class="form-group">
					<label>건축 년도</label>
						<input type="text" name="b_year" id="b_year" class="form-control" style="width: 50px;">
				</div>
				
				<!-- textarea -->
				<div class="form-group">
					<label>메모</label>
						<textarea name="context" class="form-control" rows="3" ></textarea>
				</div>
				
				<!-- checkbox -->
				<div class="form-group">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox1" value="security_guard">
						<label for="customCheckbox1" class="custom-control-label">경비원</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox2" value="videophone">
						<label for="customCheckbox2" class="custom-control-label">비디오폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox3" value="interphone">
						<label for="customCheckbox3" class="custom-control-label">인터폰</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox4" value="card_key">
						<label for="customCheckbox4" class="custom-control-label">카드키</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox5" value="cctv">
						<label for="customCheckbox5" class="custom-control-label">CCTV</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox6" value="door_security">
						<label for="customCheckbox6" class="custom-control-label">현관보안</label>
					</div>
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" name="security_pfs" type="checkbox" id="customCheckbox7" value="window_guard">
						<label for="customCheckbox7" class="custom-control-label">방범창</label>
					</div>
				</div>
				
				<!-- phone mask -->
                <div class="form-group">
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
                <div class="form-group">
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
			<div class="modal-footer justify-content-between">
				<button type="button" name="house" id="house" class="btn btn-default" data-dismiss="modal">닫기</button>
				<button type="button" name="house" id="house" class="btn btn-primary">등록</button>
			</div>              
          <!-- /.modal-content -->  
                  </div>
                </div>
              </div>
            </div>
              <!-- /.card -->
              
          
        </div>
</body>
</html>