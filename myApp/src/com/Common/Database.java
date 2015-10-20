package com.Common;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
	public static Connection getConnection()
	{
		try
		{
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/db_office_maintenance", "root","");
			return con;
		}catch(Exception ex)
			{
				System.out.println(ex.getMessage());
				return null;
			}
		}
	public static void close(Connection con)
	{
		try{
			con.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}

}
