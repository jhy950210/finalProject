package com.exam.ZipZom;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import modelTO.PfsTO;
import modelTO.userTO;

@Controller
public class ConfigCotroller {
	
	@Autowired
	private TestMapper_pfs testmapper_pfs;

	@RequestMapping("/test.do")
	public String test(HttpServletRequest request, HttpServletResponse response,Model model,PfsTO pto) {
//		userTO uto = new userTO();
		pto.setmCost(pto.getmCost());
		int test = pto.getmCost();
		request.setAttribute("test",test);
	return "test";
	}
	
	@RequestMapping("/customer_manage.do")
	public String CustomerManage(HttpServletRequest request, HttpServletResponse response,Model model,PfsTO pto) {
		
	return "customer_manage";
	}
	
	@RequestMapping("/pfs_manage.do")
	public String selectpfs(HttpServletRequest request, HttpServletResponse response,Model model,userTO uto) {
//		userTO uto = new userTO();
		uto.setID(uto.getID());
		ArrayList<PfsTO> pfslist = (ArrayList<PfsTO>)testmapper_pfs.pfs_list(uto);
		request.setAttribute("pfslist",pfslist);
	return "pfs_manage";
	}
	
	@RequestMapping("/pfs_write.do")
	public String writepfs(HttpServletRequest request, HttpServletResponse response,Model model,PfsTO pto) {
		pto.setPseqPfs(1);
		pto.setSi(pto.getSi());
		int flag = (int)testmapper_pfs.pfs_write(pto);
		request.setAttribute("flag",flag);
	return "pfs_list";
}
}
