<%@page import="modelTO.customerTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
	ArrayList<customerTO> lists = (ArrayList)request.getAttribute( "cList" );
	
	JSONArray jsonArray = new JSONArray();
	for(customerTO cto : lists) {
		int seqC = cto.getSeqC();
		String name= cto.getName();
		String tel= cto.getTel();
		String type= cto.getType();
		String progress= cto.getProgress();
		String contractType= cto.getContractType();
		String bYear= cto.getbYear();
		String visitDate = cto.getVisitDate();
		String bType = cto.getbType();
		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("seqC", seqC);
		jsonObject.put("name", name);
		jsonObject.put("bType", bType);
		jsonObject.put("tel", tel);
		jsonObject.put("type", type);
		jsonObject.put("progress", progress);
		jsonObject.put("contractType",contractType);
		jsonObject.put("bYear",bYear);
		jsonObject.put("visitDate",visitDate);
		
		jsonArray.add(jsonObject);
	}
	
	JSONObject result = new JSONObject(); 
	result.put( "totalRecord", lists.size() );
	result.put( "data", jsonArray );
	out.println( result );
	
	
%>
