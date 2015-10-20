package com.Action;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import com.Dao.RoleDao;
import com.Dao.UserDao;
import com.Model.RoleModel;
import com.Model.UserModel;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class UserAction extends ActionSupport implements SessionAware,
ModelDriven<UserModel> {

	List<UserModel> permissionlist = new ArrayList<UserModel>();
	public static SessionMap<String,Object> sessionMap; 
	private UserModel user = new UserModel();
	private UserDao daouser = new UserDao();
	
	
	@Override  
	public void setSession(Map<String, Object> map) {  
	    sessionMap=(SessionMap<String, Object>)map;  
	}  
	
	//to validate login
	public String validateUser() {
		if (UserDao.authendicateUser(user)) {
			sessionMap.put("uname", user.getUsername());
			 this.permissionlist=UserDao.permissionAuthentication(sessionMap.get("uname").toString());
		return SUCCESS;
		} else {
		addActionError("Invalid UserName / Password");
		return LOGIN;
		}
		}
	
	// method for logout user
		public String logoutUser() {
			sessionMap.remove("uname");
			return LOGIN;
		}
		
		//for page validation
		public String homepage()
		{
			 this.permissionlist=UserDao.permissionAuthentication(sessionMap.get("uname").toString());
			return "homes";
		}
	

	@Override
	public UserModel getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
}
