<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject"%>

<%
	int flag = (Integer)request.getAttribute("flag");
	String id = (String)request.getAttribute("id");
	JSONObject result = new JSONObject();
	result.put("flag", flag);
	result.put("id", id);
	
	out.println(result);
%>