<%@page import="modelTO.pfsTO"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<% 
	pfsTO pto = (pfsTO)request.getAttribute( "pto" );
	JSONArray jsonArray = new JSONArray();
	
	String address = pto.getSi() + " " + pto.getGu() + " " + pto.getDong() + " " + pto.getBunji() + " " + pto.gethNumber();
	int seqPfs = pto.getSeqPfs();
	String contractType = pto.getContractType();
	int budget1 = pto.getBudget1();
	int budget2 = pto.getBudget2();
	int budget3 = pto.getBudget3();
	int area1 = pto.getArea1();
	int area2 = pto.getArea2();
	int area3 = pto.getArea3();
	int room = pto.getRoom();
	String direction = pto.getDirection();
	int bathroom = pto.getBathroom();
	int numberOfHousehold = pto.getNumberOfHousehold();
	String heatingSystem = pto.getHeatingSystem();
	String context = pto.getContext();
	String parking = "";
	if(pto.getParking() == 1){
		parking = "가능";
	} else {
		parking = "불가능";
	}
	String bYear = pto.getbYear();
	String elevator = "";
	if(pto.getElevator() == 1) {
		elevator = "있음";
	} else{
		elevator = "없음";
	}




		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("seqPfs", seqPfs);
		jsonObject.put("address", address);
		jsonObject.put("contractType",contractType);
		jsonObject.put("budget1",budget1);
		jsonObject.put("budget2",budget2);
		jsonObject.put("budget3",budget3);
		jsonObject.put("area1", area1);
		jsonObject.put("area2", area2);
		jsonObject.put("area3", area3);
		jsonObject.put("room",room);
		jsonObject.put("direction",direction);
		jsonObject.put("bathroom",bathroom);
		jsonObject.put("numberOfHousehold",numberOfHousehold);
		jsonObject.put("heatingSystem",heatingSystem);
		jsonObject.put("context",context);
		jsonObject.put("parking",parking);
		jsonObject.put("bYear",bYear);
		jsonObject.put("elevator",elevator);
		
		
		
		
		jsonArray.add(jsonObject);
	
	
	JSONObject result = new JSONObject();
	result.put( "data", jsonArray );
	out.println( result );
	
	
%>
