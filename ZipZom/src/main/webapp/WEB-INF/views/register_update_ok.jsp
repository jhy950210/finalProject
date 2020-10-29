<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int flag = (Integer)request.getAttribute("flag");
    
		out.println("<script type='text/javascript'>");
		if( flag == 1 ){
			out.println("alert('수정에 성공했습니다.');");
			out.println("location.href='./newDashboard.do';");
		}else if( flag == 0){
			out.println("alert('비밀번호가 잘못되었습니다..');");
			out.println("history.back();");
		}else {
			out.println("alert('이상한 값입니다.');");
			out.println("history.back();"); // 되돌아가기
		}
		out.println("</script>");
    %>