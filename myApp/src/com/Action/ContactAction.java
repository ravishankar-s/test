package com.Action;


import java.util.ArrayList;
import java.util.List;
import com.Dao.ContactDao;
import com.Model.ContactModel;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


import com.Dao.SupplierDtlsDao;
import com.Model.SupplierDtlsModel;

public class ContactAction extends ActionSupport implements ModelDriven<ContactModel> {
	
	List<SupplierDtlsModel> supplierList=new ArrayList<SupplierDtlsModel>();
	
	
	public List<SupplierDtlsModel> getSupplierList() {
		return supplierList;
	}
	public void setSupplierList(List<SupplierDtlsModel> supplierList) {
		this.supplierList = supplierList;
	}

	
	public String contactPage()
	{			
		this.supplierList = SupplierDtlsDao.getSupplierListDrp();
		return "success";	
	}

	@Override
	public ContactModel getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
