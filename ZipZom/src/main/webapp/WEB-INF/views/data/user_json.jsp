<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="modelTO.userTO"%>
<%@page import="java.util.List"%>
<%	
	request.setCharacterEncoding("utf-8");	
	
	JSONArray jsonArray = new JSONArray();	
	
	List<userTO> lists = (List<userTO>)request.getAttribute("lists");

	for(userTO to : lists) {
		int seqU = to.getSeqU();
		String name = to.getName();
		String id = to.getId();
		String email = to.getEmail();
		String address = to.getAddress();
		String tel1 = to.getTel1();
		String tel2 = to.getTel2();
		
		JSONObject obj = new JSONObject();

		obj.put("seqU", seqU);
		obj.put("name", name);
		obj.put("id", id);
		obj.put("email", email);
		obj.put("address", address);
		obj.put("tel1", tel1);
		obj.put("tel2", tel2);
		
		jsonArray.add(obj);
	}
	
	out.println(jsonArray);
%>