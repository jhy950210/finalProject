package com.exam.ZipZom;

import java.util.ArrayList;
import java.util.Date;

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
import modelTO.userTO;
@Controller
public class ConfigController {

	@Autowired
	private SqlSession sqlSession;
	
	
	// 주소 API popup
	@RequestMapping(value = "/jusoPopup.action")
	public ModelAndView jusoPupupRequest(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("jusoPopup");

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
			session.setAttribute("s_id", to.getId());
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
	
	// 일정관리 화면
		@RequestMapping(value = "/schedule.do")
		public ModelAndView scheduleRequest(HttpServletRequest request) {

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("schedule");

			return modelAndView;
		}
}
