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
		int pseqC = cto.getPseqC();
		String name= cto.getName();
		String tel= cto.getTel();
		String type= cto.getType();
		String progress= cto.getProgress();
		String contractType= cto.getContractType();
		int budgetT1= cto.getBudgetT1();
		int budgetT2= cto.getBudgetT2();
		int budgetT3= cto.getBudgetT3();
		String budgetL= cto.getBudgetL();
		int budgetM1= cto.getBudgetM1();
		int budgetM2= cto.getBudgetM2();
		int area2= cto.getArea2();
		String moveSchedule= cto.getMoveSchedule();
		int room= cto.getRoom();
		String direction= cto.getDirection();
		int option= cto.getOption();
		int floor= cto.getFloor();
		int elevator= cto.getElevator();
		String bYear= cto.getbYear();
		String visitDate = cto.getVisitDate();
		int security= cto.getSecurity();
		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("seqC", seqC);
		jsonObject.put("name", name);
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
