package com.exam.ZipZom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import modelTO.pfsTO;
import modelTO.security_customerTO;
import modelTO.customerTO;
import modelTO.customer_visit_dateTO;
import modelTO.option_customerTO;
import modelTO.userTO;

@Controller
public class ConfigCotroller {
	
	@Autowired
	private TestMapper_pfs testmapper_pfs;

	@RequestMapping("/test.do")
	public String test(HttpServletRequest request, HttpServletResponse response,Model model,pfsTO pto) {
//		userTO uto = new userTO();
		pto.setmCost(pto.getmCost());
		int test = pto.getmCost();
		request.setAttribute("test",test);
	return "test";
	}
	
	@RequestMapping("/customer_manage.do")
	public String customerManage(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {
		
	return "customer_manage";
	}
	
	@RequestMapping("/customer_write.json")
	public String customerWrite(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto,option_customerTO octo,customer_visit_dateTO cvdto,security_customerTO scto) {
		int flag = 0;
		cto.setPseqC(1);
		if(request.getParameter("rooms") != null) {
		cto.setRoom(request.getParameter("rooms").charAt(0));
		}
		System.out.println(request.getParameter("elevators"));
		if(request.getParameter("elevators") != null && request.getParameter("elevators").equals("있음")) {
			cto.setElevator(1);
		} else {
			cto.setElevator(0);
		}
		flag = (int)testmapper_pfs.customerWrite(cto);
		if(flag == 1) {
		octo.setPseqOc(cto.getSeqC());
		testmapper_pfs.optionCustomerWrite(octo);
		cvdto.setPseqCvd(cto.getSeqC());
		testmapper_pfs.customerVisitDate(cvdto);
		scto.setPseqSc(cto.getSeqC());
		testmapper_pfs.securityCustomer(scto);
		}
		
		
		request.setAttribute("flag", flag);
	return "data/customer_write";
	}
	
	
	@RequestMapping("/pfs_manage.do")
	public String selectpfs(HttpServletRequest request, HttpServletResponse response,Model model,userTO uto) {
//		userTO uto = new userTO();
		ArrayList<pfsTO> pfslist = (ArrayList<pfsTO>)testmapper_pfs.pfsList(uto);
		request.setAttribute("pfslist",pfslist);
	return "pfs_manage";
	}
	
	@RequestMapping("/pfs_write.do")
	public String writepfs(HttpServletRequest request, HttpServletResponse response,Model model,pfsTO pto) {
		pto.setPseqPfs(1);
		pto.setSi(pto.getSi());
		int flag = (int)testmapper_pfs.pfsWrite(pto);
		request.setAttribute("flag",flag);
	return "pfs_list";
}
	
	@RequestMapping("/customer_list.json")
	public String customerList(HttpServletRequest request, HttpServletResponse response,Model model,userTO uto) {
		uto.setId("user1");
		
		ArrayList<customerTO> cList = new ArrayList<customerTO>();
		cList = (ArrayList<customerTO>)testmapper_pfs.customerList(uto);
		request.setAttribute("cList", cList);
		return "data/customer_list";
	}
	@RequestMapping("/customer_delete.json")
	public String customerDelete(HttpServletRequest request, HttpServletResponse response,Model model,customerTO cto) {

		return "data/customer_delete";
	}
}
