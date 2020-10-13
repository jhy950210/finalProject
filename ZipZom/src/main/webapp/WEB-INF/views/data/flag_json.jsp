<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject"%>

<%
	int flag = (Integer)request.getAttribute("flag");
	String email = (String)request.getAttribute("email");
	
	JSONObject result = new JSONObject();
	result.put("flag", flag);
	result.put("email", email);
	
	out.println(result);
%>