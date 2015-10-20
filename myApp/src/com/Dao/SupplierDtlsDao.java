package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Action.UserAction;
import com.Common.Database;
import com.Common.DateTime;
import com.Model.SettingsModel;
import com.Model.SupplierDtlsModel;

public class SupplierDtlsDao {
	
	
	//to get the supplier details in view page
	public static List<SupplierDtlsModel> getSupplierDtlsList() {
		List<SupplierDtlsModel> list = new ArrayList<SupplierDtlsModel>();
		Connection conn=null;
		try {
			conn = Database.getConnection();
			PreparedStatement ps = conn
					.prepareStatement("SELECT s.supplier_id, s.supplier_name, s.supplier_code, c.country_name, z.zone_name, s.geocode, s.address, s.description,s.vat,s.cst,s.pan"
							            + " FROM tbl_supplier_details AS s "
							            + " INNER JOIN tbl_country AS c ON c.country_id  = s.country_id"
							            + " INNER JOIN tbl_zone AS  z ON z.zone_id = s.zone_id where s.status='1'");
			ResultSet rs = ps.executeQuery();
		
			while (rs.next()) {
				SupplierDtlsModel model = new SupplierDtlsModel(rs.getInt(1),rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11));
				list.add(model);
			}
			
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		} finally {
			Database.close(conn);
		}
		return list;
	}
	
	//to insert the supplier details
	public static boolean insertSupplierDtls(SupplierDtlsModel supplierModel)
	{
		Connection conn=null;
		boolean strResult=false;
		try
		{
			conn=Database.getConnection();
			String sql="insert into tbl_supplier_details (supplier_name, supplier_code,country_id, zone_id, geocode, address, description, vat, cst, pan, created_by, created_time) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,supplierModel.getSupplier_name());
			ps.setString(2,"123");
			ps.setInt(3,supplierModel.getCountry_id());
			ps.setInt(4,1);
			ps.setInt(5,supplierModel.getGeocode());
			ps.setString(6,supplierModel.getAddress());
			ps.setString(7,supplierModel.getDescription());
			ps.setString(8,supplierModel.getVat());
			ps.setString(9,supplierModel.getCst());
			ps.setString(10,supplierModel.getPan());
			ps.setString(11,UserAction.sessionMap.get("uname").toString());
			ps.setString(12,DateTime.getDate());			
			ps.executeUpdate();			
			strResult=true;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}finally
		{
			Database.close(conn);
		}
		return strResult;
	}
	
	// method to delete Item details
			public static boolean deleteSupplier(SupplierDtlsModel data)
			{
				Connection conn=null;
				try
				{
					conn=Database.getConnection();
					PreparedStatement ps=conn.prepareStatement("update tbl_supplier_details set status='0' where supplier_id=?");
					ps.setInt(1,data.getSupplierID());
					ps.executeUpdate();					
					return true;
				}catch(Exception ex)
				{
					System.out.println(ex.getMessage());
					return false;
				}finally
				{
					Database.close(conn);
					
				}
			}
			
			
			//to get the supplier list in contact form
			public static List<SupplierDtlsModel> getSupplierListDrp(){
				List<SupplierDtlsModel> supplierlist=new ArrayList<SupplierDtlsModel>();
				Connection conn=null;
				ResultSet rs=null;
				try
				{
					conn=Database.getConnection();
					String sql="select supplier_id, supplier_name from tbl_supplier_details where status='1'";
					PreparedStatement ps=conn.prepareStatement(sql);
					rs=ps.executeQuery();
					while(rs.next())
					{
						SupplierDtlsModel model = new SupplierDtlsModel(rs.getInt(1),rs.getString(2));
						supplierlist.add(model);
					}
				}catch(Exception ex)
					{
						System.out.println(ex.getMessage());
						return null;
						}
					finally
					{
						Database.close(conn);
				}
				return supplierlist;
				
				
			} 
			
			
			
			
			
			
			
			
			
			

}
