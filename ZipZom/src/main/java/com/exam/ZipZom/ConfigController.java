package com.exam.ZipZom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import modelDAO.encryption;
import modelTO.userTO;
@Controller
public class ConfigController {

	@Autowired
	private SqlSession sqlSession;
	
	// 메인에서 로그인 버튼을 누를 경우
	@RequestMapping(value = "/login.do")
	public ModelAndView loginRequest(HttpServletRequest request) {

		userTO to = new userTO();
		encryption enc = new encryption();
		
			String id = request.getParameter("id"); 
			String password = enc.encryptionMain(request.getParameter("password"));
			
			System.out.println(id);
			System.out.println(password);
			
			to.setID(id);
			to.setPASSWORD(password);
		
//		to.setID("user");
//		to.setPASSWORD("123");
		
		int flag = 0;

		if(sqlSession.selectOne("loginSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/data/flag_json");
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
//		to.setNAME(name);
//		to.setID(id);
//		to.setPASSWORD(password);
//		to.setADDRESS(address);
//		to.setEMAIL(email);
//		to.setTEL1(tel1);
//		to.setTEL2(tel2);
		
		to.setNAME("박성훈");
		to.setID("user");
		to.setPASSWORD("123");
		to.setADDRESS("123");
		to.setEMAIL("dlsncjfthodk@naver.com");
		to.setTEL1("123");
		to.setTEL2("123");
		
		int flag = 0;
		
		flag = sqlSession.insert("signUpInsert", to);
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 아이디 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duId.do")
	public ModelAndView duplicateIdRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		to.setID(request.getParameter("id"));
		to.setID("user");
		
		int flag = 0;
		
		if(sqlSession.selectOne("duIdSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 이메일 중복검사 버튼 클릭한 경우
	@RequestMapping(value = "/duEmail.do")
	public ModelAndView duplicateEmailRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		String email = request.getParameter("email");
//		String id = request.getParameter("id");
//		to.setID(id);
//		to.setEMAIL(email);

		to.setID("user");
		to.setEMAIL("123@123");
		
		int flag = 0;
		String id = "";
		if(sqlSession.selectOne("findIdSelect", to) != null) {
			flag = 1;
		}
		
		request.setAttribute("flag", flag);
		request.setAttribute("id", id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
	
	// 아이디 찾기 버튼 클릭한 경우
	@RequestMapping(value = "/findId.do")
	public ModelAndView findIdRequest(HttpServletRequest request) {

		userTO to = new userTO();
		
//		String email = request.getParameter("email");
//		String name = request.getParameter("name");
//		to.setNAME(name);
//		to.setEMAIL(email);
		
		to.setNAME("박성훈");
		to.setEMAIL("dlsncjfthodk@naver.com");
		
		int flag = 0;
		
		request.setAttribute("flag", flag);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test");
		modelAndView.addObject("list", request);
		
		return modelAndView;
	}
}
