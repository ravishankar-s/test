package com.Action;

import java.util.ArrayList;
import java.util.List;

import com.Dao.SettingsDao;
import com.Model.SettingsModel;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SettingsAction extends ActionSupport implements ModelDriven<SettingsModel> {
	
	private static final long serialVersionUID = 1L;
	List<SettingsModel>countryViewList=new ArrayList<SettingsModel>();
	List<SettingsModel>stateViewList=new ArrayList<SettingsModel>();
	
	
	//getter and setter...
	public List<SettingsModel> getStateViewList() {
		return stateViewList;
	}
	public void setStateViewList(List<SettingsModel> stateViewList) {
		this.stateViewList = stateViewList;
	}
	public List<SettingsModel> getCountryViewList() {
		return countryViewList;
	}
	public void setCountryViewList(List<SettingsModel> countryViewList) {
		this.countryViewList = countryViewList;
	}
	
	
	
	//struts page link for setting page
	public String settingsPage()
	{			
		return "success";	
	}
	//struts page link for country page
	public String countryPage()
	{		
		this.countryViewList = SettingsDao.getCountryList();
		return "success";	
	}
	//struts page link for state page
		public String statePage()
		{		
			this.stateViewList = SettingsDao.getStateList();
			return "success";	
		}
	
	
	@Override
	public SettingsModel getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
