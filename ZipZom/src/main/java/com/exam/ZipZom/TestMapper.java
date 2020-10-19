package com.exam.ZipZom;

import java.util.ArrayList;

import modelTO.CustomerAllTO;
import modelTO.customerTO;
import modelTO.customer_visit_dateTO;
import modelTO.option_customerTO;
import modelTO.option_pfsTO;
import modelTO.pfsAllTO;
import modelTO.pfsTO;
import modelTO.security_customerTO;
import modelTO.security_pfsTO;
import modelTO.userTO;

public interface TestMapper {
	public abstract int customerWrite(customerTO cto);
	public abstract int optionCustomerWrite(option_customerTO octo);
	public abstract int customerVisitDate(customer_visit_dateTO cvdto);
	public abstract int securityCustomer(security_customerTO scto);
	public abstract ArrayList<customerTO> customerList(customerTO cto);
	public abstract ArrayList<CustomerAllTO> customerView(customerTO cto);
	public abstract int customerUpdate(customerTO cto);
	public abstract int ocUpdate(option_customerTO octo);
	public abstract int cvdUpdate(customer_visit_dateTO cvdto);
	public abstract int scUpdate(security_customerTO scto);
	public abstract int customerDelete(customerTO cto);
	public abstract int ocDelete(option_customerTO octo);
	public abstract int cvdDelete(customer_visit_dateTO cvdto);
	public abstract int scDelete(security_customerTO scto);
	public abstract ArrayList<pfsTO> pfsList(pfsTO pto);
	public abstract ArrayList<pfsAllTO> pfsView(pfsAllTO pato);
	public abstract int pfsWrite(pfsTO pto);
	public abstract int pfsOption(option_pfsTO opto);
	public abstract int pfsSecurity(security_pfsTO spto);
	public abstract int pfsUpdate(pfsTO pto);
	public abstract int spUpdate(security_pfsTO spto);
	public abstract int spDelete(security_pfsTO spto);
	public abstract int pfsDelete(pfsTO pto);
	public abstract int opDelete(option_pfsTO opto);
	public abstract pfsTO pfsCompare(pfsTO pto);
}
