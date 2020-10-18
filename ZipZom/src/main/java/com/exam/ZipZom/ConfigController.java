package com.exam.ZipZom;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import modelDAO.MailSender;
import modelDAO.encryption;
import modelTO.auth_passwordTO;
import modelTO.pfsTO;
import modelTO.scheduleTO;
import modelTO.userTO;

@Controller
public class ConfigController {

	/*
	 * 로그인이 필요없는 메인 페이지에서의 요청(회원가입, 로그인, 비밀번호, 아이디 찾기, 아이디 중복검사, 이메일 중복검사 등등) 
	 * 이외에는 .do로 요청
	 */
	
	@Autowired
	private SqlSession sqlSession;
	
	// 메인에서 로그인 버튼을 누를 경우
	@RequestMapping(value = "/login.action")
	public ModelAndView loginRequest(HttpServletRequest request) {

		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession(false);

		userTO to = new userTO();
		encryption enc = new encryption();
		
//		String id = request.getParameter("id"); 
//		String password = enc.encryptionMain(request.getParameter("password"));
//		
//		to.setId(id);
//		to.setPassword(password);
		
		to.setId("user");
		to.setPassword("333");
		
		int flag = 0;

		if(sqlSession.selectOne("loginSelect", to) != null) {
			flag = 1;
			session.setAttribute("s_id", to.getId());
			to = sqlSession.selectOne("loginSelect", to);
			session.setAttribute("s_seq", to.getSeqU());
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
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
	
	// 회원가입 창에서 확인 버튼을 누른 경우
	@RequestMapping(value = "/sign_up.action")
	public ModelAndView sign_upRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
//		String name = request.getParameter("name"); 
//		String id = request.getParameter("id"); 
//		String password = enc.encryptionMain(request.getParameter("password")); 
//		String address = request.getParameter("address"); 
//		String email = request.getParameter("email"); 
//		String tel1 = request.getParameter("tel1");
//		String tel2 = request.getParameter("tel2");
//		
//		to.setName(name);
//		to.setId(id);
//		to.setPassword(password);
//		to.setAddress(address);
//		to.setEmail(email);
//		to.setTel1(tel1);
//		to.setTel2(tel2);
		
		
		to.setName("박성훈");
		to.setId("user");
		to.setPassword("123");
		to.setAddress("123");
		to.setEmail("dlsncjfthodk@naver.com");
		to.setTel1("123");
		to.setTel2("123");
		
		int flag = 0;
		
		flag = sqlSession.insert("signUpInsert", to);
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
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
	
	// 아이디 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duId.action")
	public ModelAndView duplicateIdRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		to.setId(request.getParameter("id"));
		to.setId("user");
		
		int flag = 0;
		
		if(sqlSession.selectOne("duIdSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 이메일 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duEmail.action")
	public ModelAndView duplicateEmailRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		String email = request.getParameter("email");
//		String id = request.getParameter("id");
//		to.setId(id);
//		to.setEmail(email);

		to.setId("user");
		to.setEmail("123@123");
		
		int flag = 0;
		if(sqlSession.selectOne("duEmailSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 아이디 찾기 버튼 클릭한 경우
	@RequestMapping(value = "/findId.do")
	public ModelAndView findIdRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		String email = request.getParameter("email");
//		String name = request.getParameter("name");
//		to.setName(name);
//		to.setEmail(email);
		
		to.setName("박성훈");
		to.setEmail("dlsncjfthodk@naver.com");
		
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
		
//		String email = request.getParameter("email");
//		String id = request.getParameter("id");
//		to.setId(id);
//		to.setEmail(email);
//		ato.setEmail(email);
		
		to.setId("user");
		to.setEmail("dlsncjfthodk@naver.com");
		ato.setEmail("dlsncjfthodk@naver.com");
		
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
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 인증번호 입력 확인 버튼을 누른 경우
	@RequestMapping(value = "/checkAuthKey.action")
	public ModelAndView checkAuthKeyRequest(HttpServletRequest request) {
		// 1시간이 지난 인증번호 삭제
		sqlSession.delete("auth_KeyDelete");

		auth_passwordTO ato = new auth_passwordTO();
		
//		ato.setAuthKey(request.getParameter("authKey"));
		
		ato.setAuthKey("NjQ3MzI4");
		
		int flag = 0;
		String email = sqlSession.selectOne("authKeySelect", ato);
		if(email != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		request.setAttribute("email", email);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}

	// 비밀번호 변경 확인 버튼 클릭 시
	@RequestMapping(value = "/changePassword.action")
	public ModelAndView changePasswordRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
//		String password = enc.encryptionMain(request.getParameter("password")); 
//		String email = request.getParameter("email");
//		
//		to.setEmail(email);
//		to.setPassword(password);
		
		to.setEmail("dlsncjfthodk@naver.com");
		to.setPassword("333");
		int flag = 0;
		int update = sqlSession.update("userPasswordUpdate", to);
		if(update == 1) {
			flag = update;
		}

		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리 view 페이지
	@RequestMapping(value = "/viewSchedule.action")
	public ModelAndView viewScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
//		int pseqS = Integer.parseInt(request.getParameter("pseqS"));
		
//		to.setPseqS(pseqS);
		to.setPseqS(1);
		
		List<scheduleTO> listTO = sqlSession.selectList("scheduleSelect", to);
		
		request.setAttribute("lists", listTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/schedule_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리 상세정보 view 페이지
	@RequestMapping(value = "/viewPropertySchedule.action")
	public ModelAndView viewPropertyScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
//		int seqS = Integer.parseInt(request.getParameter("seqS"));
//	
//		to.setSeqS(seqS);
		to.setSeqS(1);
		
		List<scheduleTO> listTO = sqlSession.selectList("schedulePropertySelect", to);
		
		request.setAttribute("lists", listTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/schedule_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리에서 일정을 추가 한 경우
	@RequestMapping(value = "/addSchedule.action")
	public ModelAndView addScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
//		int pseqS = Integer.parseInt(request.getParameter("pseqS"));
//		String customerName = request.getParameter("customerName");
//		String customerTel = request.getParameter("customerTel");
//		String customerState = request.getParameter("customerState");
//		String date = request.getParameter("date");
//		String context = request.getParameter("context");
//		String scheduleType = request.getParameter("scheduleType");
//		String progress = request.getParameter("progress");
//		String bType = request.getParameter("bType");
//		String contractType = request.getParameter("contractType");
//		
//		to.setPseqS(pseqS);
//		to.setCustomerName(customerTel);
//		to.setCustomerTel(customerTel);
//		to.setCustomerState(customerState);
//		to.setDate(date);
//		to.setContext(context);
//		to.setScheduleType(scheduleType);
//		to.setProgress(progress);
//		to.setbType(bType);
//		to.setContractType(contractType);
		
		to.setPseqS(2);
		to.setCustomerName("박성훈");
		to.setCustomerTel("123123");
		to.setCustomerState("인도인");
		to.setDate("2000/10/10 15:35");
		to.setContext("내용33333");
		to.setScheduleType("몰라");
		to.setProgress("진33");
		to.setbType("메33");
		to.setContractType("그33");
		
		int flag = 0;
		
		flag = sqlSession.insert("scheduleInsert", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 일정관리에서 일정을 수정 한 경우
	@RequestMapping(value = "/updateSchedule.action")
	public ModelAndView updateScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();
		
//		int seqS = Integer.parseInt(request.getParameter("seqS"));
//		String customerTel = request.getParameter("customerTel");
//		String customerState = request.getParameter("customerState");
//		String date = request.getParameter("date");
//		String context = request.getParameter("context");
//		String scheduleType = request.getParameter("scheduleType");
//		String progress = request.getParameter("progress");
//		String bType = request.getParameter("bType");
//		String contractType = request.getParameter("contractType");
//		
//		to.setSeqS(seqS);
//		to.setCustomerTel(customerTel);
//		to.setCustomerState(customerState);
//		to.setDate(date);
//		to.setContext(context);
//		to.setScheduleType(scheduleType);
//		to.setProgress(progress);
//		to.setbType(bType);
//		to.setContractType(contractType);
		
		to.setSeqS(1);
		to.setCustomerTel("123123");
		to.setCustomerState("인도인");
		to.setDate("2000/10/10 15:35");
		to.setContext("내용33333");
		to.setScheduleType("몰라");
		to.setProgress("진33");
		to.setbType("메33");
		to.setContractType("그33");
		
		int flag = 0;
		
		flag = sqlSession.update("scheduleUpdate", to);
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}

	// 일정관리에서 일정을 삭제 한 경우
	@RequestMapping(value = "/deleteSchedule.action")
	public ModelAndView deleteScheduleRequest(HttpServletRequest request) {

		scheduleTO to = new scheduleTO();

//		int seqS = Integer.parseInt(request.getParameter("seqS"));
//		
//		to.setSeqS(seqS);

		to.setSeqS(2);

		int flag = 0;

		flag = sqlSession.delete("scheduleDelete", to);

		request.setAttribute("flag", flag);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);

		return modelAndView;
	}

	// 매물을 선택하고 매물비교 버튼을 누른 경우
	@RequestMapping(value = "/pfsCompare.action")
	public ModelAndView pfsCompareRequest(HttpServletRequest request) {

		pfsTO to = new pfsTO();

		ArrayList<pfsTO> listTO = new ArrayList<pfsTO>();

//		int seqPfs1 = Integer.parseInt(request.getParameter("seqPfs1"));
//		int seqPfs2 = Integer.parseInt(request.getParameter("seqPfs2"));
		int seqPfs1 = 1;
		int seqPfs2 = 1;

		to.setSeqPfs(seqPfs1);
		to = sqlSession.selectOne("pfsCompareSelect", to);
		listTO.add(to);
		to.setSeqPfs(seqPfs2);
		to = sqlSession.selectOne("pfsCompareSelect", to);
		listTO.add(to);

		if(request.getParameter("seqPfs3") != null) {
//			int seqPfs3 = Integer.parseInt(request.getParameter("seqPfs3"));
			int seqPfs3 = 1;
			to.setSeqPfs(seqPfs3);
			to = sqlSession.selectOne("pfsCompareSelect", to);
			listTO.add(to);
		}

		request.setAttribute("lists", listTO);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/pfsCompare_json");
		modelAndView.addObject("list", request);

		return modelAndView;
	}
}
