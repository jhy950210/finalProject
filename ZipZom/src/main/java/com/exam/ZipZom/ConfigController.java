package com.exam.ZipZom;

import java.text.SimpleDateFormat;
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
	
	// 메인에서 로그인 버튼을 누를 경우
	@RequestMapping(value = "/login.do")
	public ModelAndView loginRequest(HttpServletRequest request) {

		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpSession session = httpRequest.getSession(false);

		userTO to = new userTO();
		encryption enc = new encryption();
		
		String id = request.getParameter("id"); 
		String password = enc.encryptionMain(request.getParameter("password"));
		
		to.setId(id);
		to.setPassword(password);
		
//		to.setId("user");
//		to.setPassword("123");
		
		int flag = 0;

		if(sqlSession.selectOne("loginSelect", to) != null) {
			flag = 1;
			session.setAttribute("s_id", to.getId());
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("data/flag_json");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 회원가입 창에서 확인 버튼을 누른 경우
	@RequestMapping(value = "/sign_up.do")
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
	
	// 아이디 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duId.do")
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
	@RequestMapping(value = "/duEmail.do")
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
	@RequestMapping(value = "/sendNumber.do")
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
	@RequestMapping(value = "/checkAuthKey.do")
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
	@RequestMapping(value = "/changePassword.do")
	public ModelAndView changePasswordRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
//		String password = enc.encryptionMain(request.getParameter("password")); 
//		String email = request.getParameter("email");
//		
//		to.setEmail(email);
//		to.setPassword(password);
		
		to.setEmail("dlsncjfthodk@naver.com");
		to.setPassword("12334567890");
		int flag = 0;
		int update = sqlSession.update("userPasswordUpdate", to);
		if(update == 1) {
			flag = update;
			sqlSession.update("userPasswordUpdate", to);
		}

		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
}
