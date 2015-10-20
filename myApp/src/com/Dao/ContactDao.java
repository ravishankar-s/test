package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Action.UserAction;
import com.Common.Database;
import com.Common.DateTime;
import com.Model.ContactModel;


public class ContactDao {
	
	//view for contact
		public static List<ContactModel> getContactList() {
			List<ContactModel> list = new ArrayList<ContactModel>();
			Connection conn=null;
			try {
				conn = Database.getConnection();
				PreparedStatement ps = conn
						.prepareStatement("SELECT contact_id, type, type_id, contact_name, phone_no, email_id, comments FROM tbl_contacts where status='1'");
				ResultSet rs = ps.executeQuery();
			
				while (rs.next()) {
					ContactModel model = new ContactModel(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
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

}
