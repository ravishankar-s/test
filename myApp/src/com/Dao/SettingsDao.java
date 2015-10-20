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


public class SettingsDao {
	
	//view for country
	public static List<SettingsModel> getCountryList() {
		List<SettingsModel> list = new ArrayList<SettingsModel>();
		Connection conn=null;
		try {
			conn = Database.getConnection();
			PreparedStatement ps = conn
					.prepareStatement("SELECT country_id, country_name, iso_code FROM tbl_country where status='1'");
			ResultSet rs = ps.executeQuery();
		
			while (rs.next()) {
				SettingsModel model = new SettingsModel(rs.getInt(1), rs.getString(2),rs.getString(3));
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
	
	//view for state
	public static List<SettingsModel> getStateList() {
		List<SettingsModel> list = new ArrayList<SettingsModel>();
		Connection conn=null;
		try {
			conn = Database.getConnection();
			PreparedStatement ps = conn
					.prepareStatement("select zo.zone_id,count.country_name,zo.zone_name,zo.code from tbl_zone as zo inner join tbl_country as count on zo.country_id=count.country_id");
			ResultSet rs = ps.executeQuery();
		
			while (rs.next()) {
				SettingsModel model = new SettingsModel(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4));
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
	
	//country list for drop down in supplier page
	public static List<SettingsModel> getCountryListDrp(){
		List<SettingsModel> countrylist=new ArrayList<SettingsModel>();
		Connection conn=null;
		ResultSet rs=null;
		try
		{
			conn=Database.getConnection();
			String sql="select country_id, country_name from tbl_country";
			PreparedStatement ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				SettingsModel model = new SettingsModel(rs.getInt(1),rs.getString(2));
				countrylist.add(model);
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
		return countrylist;
		
		
	} 
	

}
