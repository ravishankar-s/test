package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Action.UserAction;
import com.Common.Database;
import com.Common.DateTime;
import com.Model.UserModel;

public class UserDao {
	
	public static List<UserModel> list;
	
	// method to validate login
		public static boolean authendicateUser(UserModel data) {
			Connection conn = null;
			boolean strReturn = false;
			boolean flag = false;
			boolean flag1 = false;
			ResultSet rs = null;

			try {
				conn = Database.getConnection();
				PreparedStatement ps = conn
						.prepareStatement("SELECT user_name FROM tbl_users WHERE user_name = ? AND password = ?");
				ps.setString(1, data.getUsername().trim());
				ps.setString(2, data.getPassword().trim());
				rs = ps.executeQuery();
				while (rs.next()) {
					strReturn = true;
				}
				/*try {
					PreparedStatement ps1 = conn
							.prepareStatement("select invoiceno from tbl_delivery_header");
					rs = ps1.executeQuery();
					while (rs.next()) {
						flag = true;
					}
					PreparedStatement ps2 = conn
							.prepareStatement("select grnno from tbl_purchase_header");
					rs = ps2.executeQuery();
					while (rs.next()) {
						flag1 = true;
					}
					if (flag == false) {
						PreparedStatement pstmt = conn
								.prepareStatement("insert into tbl_delivery_header (invoiceno) values ('ADVINV1000')");
						pstmt.executeUpdate();

					}
					if (flag1 == false) {
						PreparedStatement pstmt = conn
								.prepareStatement("insert into tbl_purchase_header (grnno) values ('ADVGRN1000')");
						pstmt.executeUpdate();
					}

				} catch (Exception ex) {
					System.out.println(ex.getMessage());

				}*/
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
				strReturn = false;
			} finally {
				Database.close(conn);
			}
			return strReturn;
		}
		
		// method to validate login
		public static List<UserModel> permissionAuthentication(String uname) {
			Connection conn = null;
			ResultSet rs = null;
			try {
				conn = Database.getConnection();
				PreparedStatement ps = conn
						.prepareStatement("SELECT u.role,p.create_master,p.create_user,p.createrole,p.permission FROM tbl_users as u inner join tbl_permission as p on u.role = p.roleid  WHERE u.user_name = ?");
				ps.setString(1, uname);
				rs = ps.executeQuery();
				list = new ArrayList<UserModel>();
				while (rs.next()) {
					UserModel umodel = new UserModel(rs.getString(1),
							rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5));
					list.add(umodel);
				}
				return list;
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
				return null;
			} finally {
				Database.close(conn);
			}
		}

}
