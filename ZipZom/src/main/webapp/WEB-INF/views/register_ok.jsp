<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int flag = (Integer)request.getAttribute("flag");
    
		out.println("<script type='text/javascript'>");
		if( flag == 1 ){
			out.println("alert('회원 등록에 성공했습니다.');");
			out.println("location.href='./start.do';");
		}else if( flag == 0){
			out.println("alert('회원 등록에 실패했습니다.');");
			out.println("history.back();");
		}else {
			out.println("alert('이상한 값입니다.');");
			out.println("history.back();"); // 되돌아가기
		}
		out.println("</script>");
    %>