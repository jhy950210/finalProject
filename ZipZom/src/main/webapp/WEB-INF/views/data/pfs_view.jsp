<%@page import="modelTO.pfsAllTO"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="modelTO.CustomerAllTO"%>
<%@page import="modelTO.customerTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
	ArrayList<pfsAllTO> lists = (ArrayList)request.getAttribute( "paList" );
	
	JSONArray jsonArray = new JSONArray();
	ObjectMapper objectMapper = new ObjectMapper();
	for(pfsAllTO pato : lists) {
		
		String catoJson = objectMapper.writeValueAsString(pato);
		
		out.println( catoJson );
	} 
	
/* 	JSONObject result = new JSONObject(); 
	result.put( "totalRecord", lists.size() );
	result.put( "data", lists );
	out.println( result ); */
	
	
%>
