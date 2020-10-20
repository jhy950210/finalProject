<%@page import="modelTO.customerTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
	customerTO cto = (customerTO)request.getAttribute( "cto" );
	
	JSONArray jsonArray = new JSONArray();
		int seqC = cto.getSeqC();
		String name= cto.getName();
		int floor = cto.getFloor();
		String contractType= cto.getContractType();
		String bYear= cto.getbYear();
		//String visitDate = cto.getVisitDate();
		String bType = cto.getbType();
		String elevator = cto.getElevator();
		int area2 = cto.getArea2();
		int budgetT1 = cto.getBudgetT1();
		int budgetT2 = cto.getBudgetT2();
		int budgetT3 = cto.getBudgetT3();
		int room = cto.getRoom();
		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("number", seqC);
		jsonObject.put("findname", name);	
		jsonObject.put("findfloor", floor);
		jsonObject.put("findroom", room);
		jsonObject.put("findbType", bType);
		jsonObject.put("findarea2", area2);
		jsonObject.put("findbudgetT1", budgetT1);
		jsonObject.put("findbudgetT2", budgetT2);
		jsonObject.put("findbudgetT3", budgetT3);
		jsonObject.put("findcontractType",contractType);
		jsonObject.put("findbYear",bYear);
		jsonObject.put("findelevator",elevator);
		
	

	out.println( jsonObject );
	
	
%>
