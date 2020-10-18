<%@page import="modelTO.pfsTO"%>
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
	
	ArrayList<pfsTO> lists = (ArrayList<pfsTO>)request.getAttribute("lists");

	for(pfsTO to : lists) {
		int seqPfs = to.getSeqPfs();
		int pseqPfs = to.getPseqPfs();
		String bType = to.getbType();
		String si = to.getSi();
		String gu = to.getGu();
		String dong = to.getDong();
		String bunji = to.getBunji();
		String hNumber = to.gethNumber();
		String contractType = to.getContractType();
		int budget1 = to.getBudget1();
		int budget2 = to.getBudget2();
		int budget3 = to.getBudget3();
		int mCost = to.getmCost();
		String loan = to.getLoan();
		int area1 = to.getArea1();
		int area2 = to.getArea2();
		int area3 = to.getArea3();
		String moveSchedule = to.getMoveSchedule();
		String endOfLease = to.getEndOfLease();
		int room = to.getRoom();
		int bathroom = to.getBathroom();
		String direction = to.getDirection();
		String heatingSystem = to.getHeatingSystem();
		int numberOfHousehold = to.getNumberOfHousehold();
		int parking = to.getParking();
		int floor = to.getFloor();
		int floorTotal = to.getFloorTotal();
		String elevator = to.getElevator();
		String bYear = to.getbYear();
		String context = to.getContext();
		String lessorName = to.getLessorName();
		String lessorTel = to.getLessorTel();
		String lesseeName = to.getLesseeName();
		String lesseeTel = to.getLesseeTel();
		String wdate = to.getWdate();
		
		JSONObject obj = new JSONObject();

		obj.put("seqPfs", seqPfs);
		obj.put("pseqPfs", pseqPfs);
		obj.put("bType", bType);
		obj.put("si", si);
		obj.put("gu", gu);
		obj.put("dong", dong);
		obj.put("bunji", bunji);
		obj.put("hNumber", hNumber);
		obj.put("contractType", contractType);
		obj.put("budget1", budget1);
		obj.put("budget2", budget2);
		obj.put("budget3", budget3);
		obj.put("mCost", mCost);
		obj.put("loan", loan);
		obj.put("area1", area1);
		obj.put("area2", area2);
		obj.put("area3", area3);
		obj.put("moveSchedule", moveSchedule);
		obj.put("endOfLease", endOfLease);
		obj.put("room", room);
		obj.put("bathroom", bathroom);
		obj.put("direction", direction);
		obj.put("heatingSystem", heatingSystem);
		obj.put("numberOfHousehold", numberOfHousehold);
		obj.put("parking", parking);
		obj.put("floor", floor);
		obj.put("floorTotal", floorTotal);
		obj.put("elevator", elevator);
		obj.put("bYear", bYear);
		obj.put("context", context);
		obj.put("lessorName", lessorName);
		obj.put("lessorTel", lessorTel);
		obj.put("lesseeName", lesseeName);
		obj.put("lesseeTel", lesseeTel);
		obj.put("wdate", wdate);
		
		jsonArray.add(obj);
	}
	
	out.println(jsonArray);
%>