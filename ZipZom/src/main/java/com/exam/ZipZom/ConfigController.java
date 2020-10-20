package com.exam.ZipZom;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import modelTO.pfsTO;
import modelTO.scheduleTO;
import modelTO.security_customerTO;
import modelTO.security_pfsTO;
import modelTO.CustomerAllTO;
import modelTO.customerTO;
import modelTO.customer_visit_dateTO;
import modelTO.option_customerTO;
import modelTO.option_pfsTO;
import modelTO.pfsAllTO;
import modelTO.userTO;
import modelDAO.MailSender;
import modelDAO.encryption;
import modelTO.auth_passwordTO;
import modelTO.userTO;
@Controller
public class ConfigController {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private TestMapper testmapper;
	
	// 주소 API popup
	@RequestMapping(value = "/jusoPopup.action")
	public ModelAndView jusoPupupRequest(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		ModelAndView modelAndView = new ModelAndView();
		request.setAttribute("id", id);
		modelAndView.setViewName("jusoPopup");

		return modelAndView;
	}
	
	@RequestMapping(value = "/jusoPopup2.do")
	public ModelAndView jusoPupupRequest2(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("jusoPopup2");

		return modelAndView;
	}
	
	// 비밀번호 찾기 초기화면
	@RequestMapping(value = "/forgot_password.action")
	public ModelAndView forgotPasswordRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("forgot_password");

		return modelAndView;
	}
	
	// 비밀번호 분실 초기화면
	@RequestMapping(value = "/forgot_id.action")
	public ModelAndView forgotIdRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("forgot_id");

		return modelAndView;
	}
	
	// 대쉬보드 초기화면
	@RequestMapping(value = "/newDashboard.do")
	public ModelAndView dashboardPasswordRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("newDashboard");

		return modelAndView;
	}
	
	// 비밀번호 초기화면  
	@RequestMapping(value = "/change_password.action")
	public ModelAndView change_PasswordRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("change_password");

		return modelAndView;
	}
	
	// 로그인 초기화면
	@RequestMapping(value = "/start.action")
	public ModelAndView startRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("start");

		return modelAndView;
	}
	
	// 회원가입 초기화면
	@RequestMapping(value = "/register.action")
	public ModelAndView registerRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("register");

		return modelAndView;
	}
	
	// 메인에서 로그인 버튼을 누를 경우
	@RequestMapping(value = "/login.action")
	public ModelAndView loginRequest(HttpServletRequest request) {

		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession(false);
		
		userTO to = new userTO();
		encryption enc = new encryption();
		
		String id = request.getParameter("id"); 
		String password = enc.encryptionMain(request.getParameter("password"));
			
		to.setId(id);
		to.setPassword(password);
	
		int flag = 0;

		if(sqlSession.selectOne("loginSelect", to) != null) {
			flag = 1;
			to = sqlSession.selectOne("loginSelect", to);
			System.out.println("seqU : " +to.getSeqU());
			session.setAttribute("s_id", to.getId());
			session.setAttribute("seqU", to.getSeqU());
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 회원가입 창에서 확인 버튼을 누른 경우
	@RequestMapping(value = "/sign_up.action")
	public ModelAndView sign_upRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
		String name = request.getParameter("name"); 
		String id = request.getParameter("id"); 
		String password = enc.encryptionMain(request.getParameter("password")); 
		String address = request.getParameter("zipNo") + request.getParameter("roadAddrPart1") + request.getParameter("roadAddrPart2") + request.getParameter("addrDetail");
		String email = request.getParameter("email"); 
		String phone = request.getParameter("phone");
		String tel = request.getParameter("tel");
		
		
		to.setName(name);
		to.setId(id);
		to.setPassword(password);
		to.setAddress(address);
		to.setEmail(email);
		to.setTel1(phone);
		to.setTel2(tel);
		
		int flag = 0;
		
		flag = sqlSession.insert("signUpInsert", to);
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("register_ok");
		modelAndView.addObject("flag",flag);
		
		return modelAndView;
	}
	
	// 아이디 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duId.action")
	public ModelAndView duplicateIdRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
		to.setId(request.getParameter("id"));
		
		int flag = 0;
		
		if(sqlSession.selectOne("duIdSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 이메일 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duEmail.action")
	public ModelAndView duplicateEmailRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
		String email = request.getParameter("email");
		
		to.setEmail(email);

		int flag = 0;
		
		if(sqlSession.selectOne("duEmailSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 아이디 찾기 버튼 클릭한 경우
	@RequestMapping(value = "/findId.action")
	public ModelAndView findIdRequest(HttpServletRequest request) {

			userTO to = new userTO();

			String email = request.getParameter("email");
			String name = request.getParameter("name");
			to.setName(name);
			to.setEmail(email);

			int flag = 0;
			String id = sqlSession.selectOne("findIdSelect", to);
			if(id != null) {
				flag = 1;
			}

			request.setAttribute("flag", flag);
			request.setAttribute("id", id);

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("data/findid_json");
			modelAndView.addObject("list", request);

			return modelAndView;
		}

	// 인증번호 발송 버튼을 클릭한 경우
	@RequestMapping(value = "/sendNumber.action")
	public ModelAndView sendNumberRequest(HttpServletRequest request) {

			userTO to = new userTO();
			auth_passwordTO ato = new auth_passwordTO();
			encryption enc = new encryption();
			MailSender ms = new MailSender();

			String email = request.getParameter("email");
			String id = request.getParameter("id");
			to.setId(id);
			to.setEmail(email);
			ato.setEmail(email);

			int flag = 0;
			String result = "";
			String authNumber = "";

			// id와 email 일치 시 이메일 인증번호 생성
			if(sqlSession.selectOne("sendNumberSelect", to) != null) {
				flag = 1;
				for( int i = 0; i < 6; i ++) {
					result += String.valueOf((int)((Math.random()*10000)%10));
				}
				authNumber = enc.encryptionMain(result);			

				ato.setAuthKey(authNumber);

				// 이메일 인증 번호 테이블 중복 검사
				int count = 0;
				while(count == 0) {
					if(sqlSession.selectOne("duplicateAuth_KeySelect", ato) == null) {
						count = 1;
					} else {
						for( int i = 0; i < 6; i ++) {
							result += String.valueOf((int)((Math.random()*10000)%10));
						}
						authNumber = enc.encryptionMain(result);

						ato.setAuthKey(authNumber);
					}
				}
				// 현재 시각 생성
				Date date = new Date(System.currentTimeMillis());
				ato.setGenerateDate(date);
				// 중복된 이메일이 있는지 검사하고 인증번호 데이터 베이스 삽입
				if(sqlSession.selectOne("duplicateEmailSelect", ato) != null) {
					sqlSession.delete("duplicateEmailDelete", ato);
					sqlSession.insert("auth_KeyInsert", ato);
				} else {
					sqlSession.insert("auth_KeyInsert", ato);				
				}
				// 1시간이 지난 인증번호 삭제
				ms.sendMailMain(to.getEmail(), ato.getAuthKey());
			}

			request.setAttribute("flag", flag);

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/data/flag_json");
			modelAndView.addObject("list", request);

			return modelAndView;
		}

	// 인증번호 입력 확인 버튼을 누른 경우
	@RequestMapping(value = "/checkAuthKey.action")
	public ModelAndView checkAuthKeyRequest(HttpServletRequest request) {
			// 1시간이 지난 인증번호 삭제
			sqlSession.delete("auth_KeyDelete");

			auth_passwordTO ato = new auth_passwordTO();

			ato.setAuthKey(request.getParameter("number"));

			int flag = 0;
			String email = sqlSession.selectOne("authKeySelect", ato);
			if(email != null) {
				flag = 1;
			}

			request.setAttribute("flag", flag);
			request.setAttribute("email", email);

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/data/flag_json");
			modelAndView.addObject("list", request);

			return modelAndView;
		}

	// 비밀번호 변경 확인 버튼 클릭 시
	@RequestMapping(value = "/changePassword.action")
	public ModelAndView changePasswordRequest(HttpServletRequest request) {

			userTO to = new userTO();
			encryption enc = new encryption();

			String password = enc.encryptionMain(request.getParameter("password")); 
			String email = request.getParameter("email");
			
			to.setEmail(email);
			to.setPassword(password);

			int flag = 0;
			int update = sqlSession.update("userPasswordUpdate", to);
			if(update == 1) {
				flag = update;
				sqlSession.update("userPasswordUpdate", to);
			}

			request.setAttribute("flag", flag);

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/data/flag_json");
			modelAndView.addObject("list", request);

			return modelAndView;
		}
	
	// 로그아웃 버튼을 누른 경우
	@RequestMapping(value = "/logout.action")
	public ModelAndView logoutRequest(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("logout");
		
		return modelAndView;
	}
	
	// 회원탈퇴 버튼을 누른 경우
	@RequestMapping(value = "/signOut.action")
	public ModelAndView signOutRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
//		int seqU = Integer.parseInt(request.getParameter("seqU"));
//		String password = enc.encryptionMain(request.getParameter("password"));
		
//		to.setSeqU(seqU);
//		to.setPassword(password);
		
		to.setSeqU(1);
		to.setPassword("123");
		
		int flag = 0;
		
		flag = sqlSession.delete("userDelete", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 회원탈퇴를 시킨 경우
	@RequestMapping(value = "/signOutAdmin.action")
	public ModelAndView signOutAdminRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		int seqU = Integer.parseInt(request.getParameter("seqU"));
//	
//		to.setSeqU(seqU);
		
		to.setSeqU(1);
		
		int flag = 0;
		
		flag = sqlSession.delete("userAdminDelete", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 관리자 회원관리 view 페이지
	@RequestMapping(value = "/adminView.action")
	public ModelAndView adminViewRequest(HttpServletRequest request) {
		
		List<userTO> listTO = sqlSession.selectList("userAdminSelect");
		
		request.setAttribute("lists", listTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/user_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리 view 페이지
	@RequestMapping(value = "/viewSchedule.do")
	public ModelAndView viewScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
		int pseqS = Integer.parseInt(request.getParameter("pseqS"));
		
		to.setPseqS(pseqS);
		
		List<scheduleTO> listTO = sqlSession.selectList("scheduleSelect", to);
		
		request.setAttribute("lists", listTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/schedule_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	@RequestMapping(value = "/schedule.do")
	public ModelAndView schedule(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("schedule");

		
		return modelAndView;
	}
	
	// 일정관리에서 일정을 추가 한 경우
	@RequestMapping(value = "/addSchedule.do")
	public ModelAndView addScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
		int pseqS = Integer.parseInt(request.getParameter("pseqS"));
		String customerName = request.getParameter("customerName");
		String customerTel = request.getParameter("customerTel");
		String customerState = request.getParameter("customerState");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String context = request.getParameter("context");
		String scheduleType = request.getParameter("scheduleType");
		String progress = request.getParameter("progress");
		String bType = request.getParameter("bType");
		String contractType = request.getParameter("contractType");
		String backgroundColor = request.getParameter("backgroundColor");
		String textColor = request.getParameter("textColor");
		int allDay = Integer.parseInt(request.getParameter("allDay"));
		
		to.setPseqS(pseqS);
		to.setCustomerName(customerName);
		to.setCustomerTel(customerTel);
		to.setCustomerState(customerState);
		to.setStart(start);
		to.setEnd(end);
		to.setContext(context);
		to.setScheduleType(scheduleType);
		to.setProgress(progress);
		to.setbType(bType);
		to.setContractType(contractType);
		to.setBackgroundColor(backgroundColor);
		to.setTextColor(textColor);
		to.setAllDay(allDay);
		
//		to.setPseqS(1);
//		to.setCustomerName("박성훈");
//		to.setCustomerTel("123123");
//		to.setCustomerState("인도인");
//		to.setStart("2020-10-07T09:30");
//		to.setEnd("2020-10-07T12:30");
//		to.setContext("내용33333");
//		to.setScheduleType("전화");
//		to.setProgress("진행중");
//		to.setbType("아파트");
//		to.setContractType("매매");
//		to.setBackgroundColor("#D25565");
//		to.setTextColor("#ffffff");
//		to.setAllDay(1);
		
		int flag = 0;
		
		flag = sqlSession.insert("scheduleInsert", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리에서 일정을 수정 한 경우
	@RequestMapping(value = "/updateSchedule.do")
	public ModelAndView updateScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
		int seqS = Integer.parseInt(request.getParameter("seqS"));
		String customerName = request.getParameter("customerName");
		String customerTel = request.getParameter("customerTel");
		String customerState = request.getParameter("customerState");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String context = request.getParameter("context");
		String scheduleType = request.getParameter("scheduleType");
		String progress = request.getParameter("progress");
		String bType = request.getParameter("bType");
		String contractType = request.getParameter("contractType");
		String backgroundColor = request.getParameter("backgroundColor");
		String textColor = request.getParameter("textColor");
		int allDay = 0;
		if(request.getParameter("allDay").equals("false")) {
			allDay = 0;
		} else {
			allDay = 1;
		}
		
		to.setSeqS(seqS);
		to.setCustomerName(customerName);
		to.setCustomerTel(customerTel);
		to.setCustomerState(customerState);
		to.setStart(start);
		to.setEnd(end);
		to.setContext(context);
		to.setScheduleType(scheduleType);
		to.setProgress(progress);
		to.setbType(bType);
		to.setContractType(contractType);
		to.setBackgroundColor(backgroundColor);
		to.setTextColor(textColor);
		to.setAllDay(allDay);
		
//		to.setSeqS(1);
//		to.setCustomerName("박성훈");
//		to.setCustomerTel("123123");
//		to.setCustomerState("인도인");
//		to.setStart("2020-10-07T09:30");
//		to.setEnd("2020-10-07T12:30");
//		to.setContext("내용33333");
//		to.setScheduleType("전화");
//		to.setProgress("진행중");
//		to.setbType("아파트");
//		to.setContractType("매매");
//		to.setBackgroundColor("#D25565");
//		to.setTextColor("#ffffff");
//		to.setAllDay(1);
		
		int flag = 0;
		
		flag = sqlSession.update("scheduleUpdate", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}

	// 일정관리에서 일정을 삭제 한 경우
	@RequestMapping(value = "/deleteSchedule.do")
	public ModelAndView deleteScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();

		int seqS = Integer.parseInt(request.getParameter("seqS"));
		
		to.setSeqS(seqS);

//		to.setSeqS(2);

		int flag = 0;

		flag = sqlSession.delete("scheduleDelete", to);

		request.setAttribute("flag", flag);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);

		return modelAndView;
	}
	
	// 일정관리에서 드래그로 일정을 수정 한 경우
	@RequestMapping(value = "/updateDateSchedule.do")
	public ModelAndView updateDateScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
		int seqS = Integer.parseInt(request.getParameter("seqS"));
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		
		to.setSeqS(seqS);
		to.setStart(start);
		to.setEnd(end);
		
		int flag = 0;
		
		flag = sqlSession.update("scheduleDateUpdate", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 고객 관리 페이지
	@RequestMapping("/customer_manage.do")
	public String customerManage(HttpServletRequest request, HttpServletResponse response,Model model) {
		
	return "customer_manage";
	}
	
	// 고객 등록
	@RequestMapping("/customer_write.json")
	public String customerWrite(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,option_customerTO octo,customer_visit_dateTO cvdto,security_customerTO scto,HttpSession session) {
		int flag = 0;
		cto.setPseqC((Integer)session.getAttribute("seqU"));
		if(request.getParameter("rooms") != null) {
		cto.setRoom(Integer.parseInt(request.getParameter("rooms").substring(0,1)));
		}
		
		flag = (int)testmapper.customerWrite(cto);
		if(flag == 1) {
		octo.setPseqOc(cto.getSeqC());
		testmapper.optionCustomerWrite(octo);
		cvdto.setPseqCvd(cto.getSeqC());
		testmapper.customerVisitDate(cvdto);
		scto.setPseqSc(cto.getSeqC());
		testmapper.securityCustomer(scto);
		}
		
		
		request.setAttribute("flag", flag);
	return "data/customer_write";
	}
	
	// 고객 상세보기,수정창
	@RequestMapping("/customer_view.json")
	public String customerView(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,HttpSession session) {
		cto.setSeqC(Integer.parseInt(request.getParameter("seqC")));
		ArrayList<CustomerAllTO> caList = new ArrayList<CustomerAllTO>();
		caList = (ArrayList<CustomerAllTO>)testmapper.customerView(cto);
		request.setAttribute("caList", caList);
		return "data/customer_view";
	}
	
	//고객 리스트
	@RequestMapping("/customer_list.json")
	public String customerList(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,HttpSession session) {
		cto.setPseqC((Integer)session.getAttribute("seqU"));
		System.out.println("seqU : " + session.getAttribute("seqU"));
		ArrayList<customerTO> cList = new ArrayList<customerTO>();
		cList = (ArrayList<customerTO>)testmapper.customerList(cto);
		request.setAttribute("cList", cList);
		return "data/customer_list";
	}
	
	// 고객 수정페이지
	@RequestMapping("/customer_modify.json")
	public String customermodify(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,option_customerTO octo,customer_visit_dateTO cvdto,security_customerTO scto) {
			int flag = 0;
			//cto.setSeqC(Integer.parseInt(request.getParameter("seqC")));
			if(request.getParameter("rooms") != null) {
			cto.setRoom(Integer.parseInt(request.getParameter("rooms").substring(0,1)));
			}
			
			flag = (int)testmapper.customerUpdate(cto);
			if(flag == 1) {
			octo.setPseqOc(cto.getSeqC());
			testmapper.ocUpdate(octo);
			cvdto.setPseqCvd(cto.getSeqC());
			testmapper.cvdUpdate(cvdto);
			scto.setPseqSc(cto.getSeqC());
			testmapper.scUpdate(scto);
			}
			
			
			request.setAttribute("flag", flag);
			return "data/flag_json";
		}
	
	// 고객 삭제
	@RequestMapping("/customer_delete.json")
	public String customerDelete(HttpServletRequest request,HttpServletResponse response,Model model,int[] check) {
		int flag = 0;
		for(int i=0;i<check.length;i++) {
			customerTO cto = new customerTO();
			cto.setSeqC(check[i]);
		
		flag = (int)testmapper.customerDelete(cto);
		if(flag == 1) {
		option_customerTO octo = new option_customerTO();
		octo.setPseqOc(cto.getSeqC());
		testmapper.ocDelete(octo);
		customer_visit_dateTO cvdto = new customer_visit_dateTO();
		cvdto.setPseqCvd(cto.getSeqC());
		testmapper.cvdDelete(cvdto);
		security_customerTO scto = new security_customerTO();
		scto.setPseqSc(cto.getSeqC());
		testmapper.scDelete(scto);
		}
		}
		
		request.setAttribute("flag", flag);
		return "data/flag_json";
	}
	
	// 고객 정보 수정
	@RequestMapping("/customer_update.json")
	public String customerUpdate(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {
		cto.setSeqC(1);
		
		int flag = (int)testmapper.customerUpdate(cto);
		request.setAttribute("flag", flag);
		return "data/flag_json";
	}
	
	// 매물 관리 페이지
	@RequestMapping("/pfs_manage.do")
	public String pfsManage(HttpServletRequest request, HttpServletResponse response,Model model) {
	return "pfs_manage";
	}
	
	// 매물 리스트
	@RequestMapping("/pfs_list.json")
	public String pfsList(HttpServletRequest request, HttpServletResponse response,Model model,HttpSession session,pfsTO pto) {
	pto.setPseqPfs((Integer)session.getAttribute("seqU"));
	ArrayList<pfsTO> pfsList = (ArrayList<pfsTO>)testmapper.pfsList(pto);
	request.setAttribute("pfsList", pfsList);
	return "data/pfs_list";
	}
	
	
	// 매물 등록
	@RequestMapping("/pfs_write.json")
	public String writepfs(HttpServletRequest request, HttpServletResponse response,Model model,pfsTO pto,HttpSession session,option_pfsTO opto,security_pfsTO spto) {
		int flag = 0;
		pto.setPseqPfs((Integer)session.getAttribute("seqU"));
		
		String[] addr = request.getParameter("jibunAddr").split(" ");
		pto.setSi(addr[0]);
		pto.setGu(addr[1]);
		pto.setDong(addr[2]);
		String bunji = "";
		for(int i=3; i<addr.length;i++) {
			bunji += addr[i] + " ";
			pto.setBunji(bunji);
		}
		if(request.getParameter("rooms") != null) {
			pto.setRoom(Integer.parseInt(request.getParameter("rooms").substring(0,1)));
		}
		if(request.getParameter("bathrooms") != null) {
			pto.setBathroom(Integer.parseInt(request.getParameter("bathrooms").substring(0,1)));
		}
		flag = (int)testmapper.pfsWrite(pto);
		if(flag == 1) {
			opto.setPseqOp(pto.getSeqPfs());
			testmapper.pfsOption(opto);
			spto.setPseqSp(pto.getSeqPfs());
			testmapper.pfsSecurity(spto);
		}
		request.setAttribute("flag",flag);
	return "data/flag_json";
}
	@RequestMapping("/consulting_rtp.do")
	public String rtpSearch(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {

		return "consulting_rtp";
	}
	
	@RequestMapping("/consulting_map.do")
	public String rtpMap(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {
			
		return "consulting_map";
	}
	
	// 매물 비교 페이지(자바로 하는)
	@RequestMapping("/pfs_compare.do")
	public String pfsCompare(HttpServletRequest request, HttpServletResponse response,Model model) {
		 ArrayList<pfsTO> pcList = new ArrayList<pfsTO>();
		 if(request.getParameterValues("seqPfs") != null) {
		 String[] seqPfs = request.getParameterValues("seqPfs");
		 int[] seq = new int[seqPfs.length];
		 for(int i=0;i<seqPfs.length;i++) {
		 seq[i] = Integer.parseInt(seqPfs[i]); 
		 pfsTO pto = new pfsTO();
		 pto.setSeqPfs(seq[i]);
		 pto = testmapper.pfsCompare(pto);
		 pcList.add(pto);
		 }

		
		 }
		request.setAttribute("pcList",pcList);
		return "pfs_compare";
	}
	
	// 매물 비교창 셀렉트박스 구성
	@RequestMapping("/pfs_compareList.json")
	public String pfsCompare2(HttpServletRequest request, HttpServletResponse response,Model model,HttpSession session) {
			pfsTO pto = new pfsTO();
			pto.setPseqPfs((Integer)session.getAttribute("seqU"));
			
			ArrayList<pfsTO> pfsList = (ArrayList<pfsTO>)testmapper.pfsList(pto);
			request.setAttribute("pfsList", pfsList);
		return "data/pfs_list";
	}
	
	// 매물 비교창
	@RequestMapping("/pfs_compareView.json")
	public String pfsCompareView(HttpServletRequest request, HttpServletResponse response,Model model,HttpSession session,pfsTO pto) {
		//System.out.println(pto.getSeqPfs());
		
		pto = testmapper.pfsCompare(pto);
		request.setAttribute("pto", pto);
			
		return "data/pfs_compare_json";
	}
	
	// ajax쓰는 매물 비교페이지
	@RequestMapping("/pfs_compare2.do")
	public String pfsCompareJson(HttpServletRequest request, HttpServletResponse response,Model model) {
		return "pfs_compare2";
	}
	
	// 매물 상세 창
	@RequestMapping("/pfs_view.json")
	public String pfsView(HttpServletRequest request, HttpServletResponse response,Model model,pfsAllTO pato) {
		pato.setSeqPfs(Integer.parseInt(request.getParameter("seqPfs")));
		ArrayList<pfsAllTO> paList = new ArrayList<pfsAllTO>();
		paList = (ArrayList<pfsAllTO>)testmapper.pfsView(pato);
		request.setAttribute("paList", paList);
		
		return "data/pfs_view";
	}
	
	// 매물 수정
	@RequestMapping("/pfs_modify.json")
	public String pfsUpdate(HttpServletRequest request, HttpServletResponse response,Model model,pfsTO pto,HttpSession session,option_pfsTO opto,security_pfsTO spto) {
		int flag = 0;
		
		String[] addr = request.getParameter("address").split(" ");
		pto.setSi(addr[0]);
		pto.setGu(addr[1]);
		pto.setDong(addr[2]);
		String bunji = "";
		for(int i=3; i<addr.length;i++) {
			bunji += addr[i] + " ";
			pto.setBunji(bunji);
		}
		if(request.getParameter("rooms") != null) {
			pto.setRoom(Integer.parseInt(request.getParameter("rooms").substring(0,1)));
		}
		if(request.getParameter("bathrooms") != null) {
			pto.setBathroom(Integer.parseInt(request.getParameter("bathrooms").substring(0,1)));
		}
		flag = (int)testmapper.pfsUpdate(pto);
		if(flag == 1) {
			//opto.setPseqOp(pto.getSeqPfs());
			//testmapper.pfsOption(opto);
			spto.setPseqSp(pto.getSeqPfs());
			testmapper.spUpdate(spto);
		}
		request.setAttribute("flag",flag);
		return "data/flag_json";
		}
	
	// 매물 삭제
	@RequestMapping("/pfs_delete.json")
	public String pfsDelte(HttpServletRequest request, HttpServletResponse response,Model model,int[] check) {
		int flag = 0;
		for(int i=0;i<check.length;i++) {
			pfsTO pto = new pfsTO();
			pto.setSeqPfs(check[i]);
		
		flag = (int)testmapper.pfsDelete(pto);
		if(flag == 1) {
		option_pfsTO opto = new option_pfsTO();
		opto.setPseqOp(pto.getSeqPfs());
		testmapper.opDelete(opto);
		security_pfsTO spto = new security_pfsTO();
		spto.setPseqSp(pto.getSeqPfs());
		testmapper.spDelete(spto);
		}
		}
		
		request.setAttribute("flag", flag);
		return "data/flag_json";
	}
	
		// 상담 보고서
		@RequestMapping("/report.do")
		public String finalReport(HttpServletRequest request, HttpServletResponse response,Model model) {
			 ArrayList<pfsAllTO> paList = new ArrayList<pfsAllTO>();
			 customerTO cto = new customerTO();
			 if(request.getParameterValues("seqPfs") != null) {
				 cto.setSeqC(Integer.parseInt(request.getParameter("seqC")));
				 cto = testmapper.customerInfo(cto);
			 String[] seqPfs = request.getParameterValues("seqPfs");
			 int[] seq = new int[seqPfs.length];
			 for(int i=0;i<seqPfs.length;i++) {
			 seq[i] = Integer.parseInt(seqPfs[i]); 
			 pfsAllTO pato = new pfsAllTO();
			 pato = testmapper.pfsView(seq[i]);
			 paList.add(pato);
			 }
			
			 }
			request.setAttribute("paList",paList);
			request.setAttribute("cto", cto);	
			return "final_report";
		}
		
		// 맞춤 매물
		@RequestMapping("/consulting_match.do")
		public String consultingMatch(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {
				
			return "consulting_match";
		}
		// 고객 이름 찾기
		@RequestMapping("/customerFind.json")
		public String find(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {
			cto = (customerTO)testmapper.customerFind(cto);
			
			request.setAttribute("cto", cto);
			return "data/customer_find";
		}
		
		// 맞춤 매물 리스트
		@RequestMapping("/pfs_find.json")
		public String pfsfind(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,HttpSession session) {
			cto.setPseqC((int)session.getAttribute("seqU"));
			System.out.println(2 + cto.getElevator());
			if(cto.getElevator().equals("있음")) {
				cto.setElevator("0");
			} else {
				cto.setElevator("1");
			}
			System.out.println(1 + cto.getElevator());
			ArrayList<pfsTO> pfsList = (ArrayList<pfsTO>)testmapper.pfsFind(cto);
			
			request.setAttribute("pfsList", pfsList);
			return "data/pfs_list";
		}
}
