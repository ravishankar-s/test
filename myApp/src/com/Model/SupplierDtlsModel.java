package com.Model;

public class SupplierDtlsModel {
	
	private String supplier_name, supplier_code, country_name, zone_name, address, description,vat,cst,pan;
	private int geocode, country_id, zone_id, supplierID;
	
	
	
	public int getZone_id() {
		return zone_id;
	}
	public int getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(int supplierID) {
		this.supplierID = supplierID;
	}
	public void setZone_id(int zone_id) {
		this.zone_id = zone_id;
	}
	public int getCountry_id() {
		return country_id;
	}
	public void setCountry_id(int country_id) {
		this.country_id = country_id;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getVat() {
		return vat;
	}
	public void setVat(String vat) {
		this.vat = vat;
	}
	public String getCst() {
		return cst;
	}
	public void setCst(String cst) {
		this.cst = cst;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getSupplier_code() {
		return supplier_code;
	}
	public void setSupplier_code(String supplier_code) {
		this.supplier_code = supplier_code;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getZone_name() {
		return zone_name;
	}
	public void setZone_name(String zone_name) {
		this.zone_name = zone_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getGeocode() {
		return geocode;
	}
	public void setGeocode(int geocode) {
		this.geocode = geocode;
	}
	
	
	//to view the supplier list
	public SupplierDtlsModel(int supplierID, String supplier_name, String supplier_code, String country_name,
			String zone_name, int geocode, String address, String description, String vat, String cst, String pan){
		
		super();
		this.supplierID=supplierID;
		this.supplier_name=supplier_name;
		this.supplier_code=supplier_code;
		this.country_name=country_name;
		this.zone_name=zone_name;
		this.geocode=geocode;
		this.address=address;
		this.description=description;
		this.vat=vat;
		this.cst=cst;
		this.pan=pan;		
		
	}
	
	//to get supplier list in contact page
	public SupplierDtlsModel(int supplierID, String supplier_name){
		super();
		this.supplierID=supplierID;
		this.supplier_name=supplier_name;
		
	}
	
	
	public SupplierDtlsModel() {
		// TODO Auto-generated constructor stub
	}

}
