package com.exam.ZipZom;

import java.util.ArrayList;

import modelTO.CustomerAllTO;
import modelTO.customerTO;
import modelTO.customer_visit_dateTO;
import modelTO.option_customerTO;
import modelTO.pfsTO;
import modelTO.security_customerTO;
import modelTO.userTO;

public interface TestMapper {
	public abstract ArrayList<pfsTO> pfsList(userTO uto);
	public abstract int pfsWrite(pfsTO pto);
	public abstract int customerWrite(customerTO cto);
	public abstract int optionCustomerWrite(option_customerTO octo);
	public abstract int customerVisitDate(customer_visit_dateTO cvdto);
	public abstract int securityCustomer(security_customerTO scto);
	public abstract ArrayList<customerTO> customerList(userTO uto);
	public abstract ArrayList<CustomerAllTO> customerView(userTO uto);
	
}
