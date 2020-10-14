<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="modelTO.scheduleTO"%>
<%@page import="java.util.List"%>
<%	
	request.setCharacterEncoding("utf-8");	
	
	JSONArray jsonArray = new JSONArray();	
	
	List<scheduleTO> lists = (List<scheduleTO>)request.getAttribute("lists");

	for(scheduleTO to : lists) {
		int seqS = to.getSeqS();
		int pseqS = to.getPseqS();
		String date = to.getDate();
		String customerName = to.getCustomerName();
		String customerTel = to.getCustomerTel();
		String customerState = to.getCustomerState();
		String context = to.getContext();
		String scheduleType = to.getScheduleType();
		String progress = to.getProgress();
		String bType = to.getbType();
		String contractType = to.getContractType();
		
		JSONObject obj = new JSONObject();

		obj.put("seqS", seqS);
		obj.put("pseqS", pseqS);
		obj.put("customerName", customerName);
		obj.put("customerTel", customerTel);
		obj.put("customerState", customerState);
		obj.put("date", date);
		obj.put("context", context);
		obj.put("scheduleType", scheduleType);
		obj.put("progress", progress);
		obj.put("bType", bType);
		obj.put("contractType", contractType);
		
		jsonArray.add(obj);
	}
	
	out.println(jsonArray);
%>