<%@page import="modelTO.pfsTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
	ArrayList<pfsTO> lists = (ArrayList)request.getAttribute( "pfsList" );
	JSONArray jsonArray = new JSONArray();
	for(pfsTO pto : lists) {
		int seqPfs = pto.getSeqPfs();
		String bType = pto.getbType();
		String si = pto.getSi();
		String gu = pto.getGu();
		String dong = pto.getDong();
		String bunji = pto.getBunji();
		String hNumber = pto.gethNumber();
		String contractType = pto.getContractType();
		int budget1 = pto.getBudget1();
		int budget2 = pto.getBudget2();
		int budget3 = pto.getBudget3();
		String loan = pto.getLoan();
		String wdate = pto.getWdate();




		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("seqPfs", seqPfs);
		jsonObject.put("bType", bType);
		jsonObject.put("si", si);
		jsonObject.put("gu", gu);
		jsonObject.put("dong", dong);
		jsonObject.put("bunji",bunji);
		jsonObject.put("hNumber", hNumber);
		jsonObject.put("contractType",contractType);
		jsonObject.put("budget1",budget1);
		jsonObject.put("budget2",budget2);
		jsonObject.put("budget3",budget3);
		jsonObject.put("loan",loan);
		jsonObject.put("wdate",wdate);
		
		jsonArray.add(jsonObject);
	}
	
	JSONObject result = new JSONObject(); 
	result.put( "totalRecord", lists.size() );
	result.put( "data", jsonArray );
	out.println( result );
	
	
%>
