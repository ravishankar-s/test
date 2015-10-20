package com.Model;

public class ContactModel {
	
	private int contactId, type, typeId;
	private String contactName, phoneNo, eMail, comments;
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public ContactModel(int contactId, int type, int typeId, String contactName, String phoneNo, String eMail, String comments){
		super();
		this.contactId=contactId;
		this.type=type;
		this.typeId=typeId;
		this.contactName=contactName;
		this.phoneNo=phoneNo;
		this.eMail=eMail;
		this.comments=comments;		
	}
}
