package com.Model;

public class SettingsModel {
	
	private int countryId;
	private String countryName, isoCode;
	
	private int zoneId;
	private String zoneName, zoneCode;
	
	
	public int getCountryId() {
		return countryId;
	}
	public int getZoneId() {
		return zoneId;
	}
	public void setZoneId(int zoneId) {
		this.zoneId = zoneId;
	}
	public String getZoneName() {
		return zoneName;
	}
	public void setZoneName(String zoneName) {
		this.zoneName = zoneName;
	}
	public String getZoneCode() {
		return zoneCode;
	}
	public void setZoneCode(String zoneCode) {
		this.zoneCode = zoneCode;
	}
	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getIsoCode() {
		return isoCode;
	}
	public void setIsoCode(String isoCode) {
		this.isoCode = isoCode;
	}
	//related to county page
	public SettingsModel(int countryId, String countryName, String isoCode){
		super();		
		this.countryId=countryId;
		this.countryName=countryName;
		this.isoCode=isoCode;		
	}
	//related to state page
	public SettingsModel(int zoneId, String countryName, String zoneName, String zoneCode){
		super();
		this.zoneId=zoneId;
		this.countryName=countryName;
		this.zoneName=zoneName;
		this.zoneCode=zoneCode;
		
	}
	
	//related to supplier page
	public SettingsModel(int countryId, String countryName){
		super();
				
		this.countryId=countryId;
		this.countryName=countryName;	
	}
	

}
