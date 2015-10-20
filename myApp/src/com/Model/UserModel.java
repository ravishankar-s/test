package com.Model;

public class UserModel {
	
	private String username, password;
	public String createUser;
	public String createmaster;
	public String role;	
	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getCreatemaster() {
		return createmaster;
	}

	public void setCreatemaster(String createmaster) {
		this.createmaster = createmaster;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	public String permissionsetting;
	
	
	public String getPermissionsetting() {
		return permissionsetting;
	}

	public void setPermissionsetting(String permissionsetting) {
		this.permissionsetting = permissionsetting;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public UserModel(String username, String createUser, String createmaster,
			String role, String permissionsetting) {
		super();
		this.username = username;
		this.createUser = createUser;
		this.createmaster = createmaster;
		this.role = role;
		this.permissionsetting = permissionsetting;
	}
	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
	}


}
