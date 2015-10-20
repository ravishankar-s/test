package com.Action;

import java.util.ArrayList;
import java.util.List;

import com.Dao.SupplierDtlsDao;
import com.Model.SupplierDtlsModel;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

//to get the country list
import com.Dao.SettingsDao;
import com.Model.SettingsModel;



public class SupplierDtlsAction extends ActionSupport implements ModelDriven<SupplierDtlsModel> {
	//To view the supplier details page when clicked on url
	private static final long serialVersionUID = 1L;
	
	List<SupplierDtlsModel>supplierDtlsViewList=new ArrayList<SupplierDtlsModel>();
	
	List<SettingsModel> countryList=new ArrayList<SettingsModel>();
	
	String result;
		
	private SupplierDtlsModel supplierDtls = new SupplierDtlsModel();
	
	
	public SupplierDtlsModel getSupplierDtls() {
		return supplierDtls;
	}


	public void setSupplierDtls(SupplierDtlsModel supplierDtls) {
		this.supplierDtls = supplierDtls;
	}


	public List<SettingsModel> getCountryList() {
		return countryList;
	}


	public void setCountryList(List<SettingsModel> countryList) {
		this.countryList = countryList;
	}



	public List<SupplierDtlsModel> getSupplierDtlsViewList() {
		return supplierDtlsViewList;
	}


	public void setSupplierDtlsViewList(List<SupplierDtlsModel> supplierDtlsViewList) {
		this.supplierDtlsViewList = supplierDtlsViewList;
	}
	
	
	//to display the supplier details/view
	public String suplierDetailsPage()
	{		
		this.countryList = SettingsDao.getCountryListDrp();
		this.supplierDtlsViewList = SupplierDtlsDao.getSupplierDtlsList();
		return "success";	
	}
	
	
	//method to insert Item Details
		public String insertSupplierDtls() {
			if (SupplierDtlsDao.insertSupplierDtls(supplierDtls)) {
				addActionMessage("Item Details Added Successfully");
				result="success";				
			} else {
				addActionError("Item Details Not Added");
				result="error";				
			}
			return result;
		}
		
		// method to delete Item details
				public String deleteSupplierDtls()
				{
					if(SupplierDtlsDao.deleteSupplier(supplierDtls))
					{
						return "success";
					}else
					{
						return "error";
					}
				}


	@Override
	public SupplierDtlsModel getModel() {
		// TODO Auto-generated method stub
		return supplierDtls;
	}
	


}
