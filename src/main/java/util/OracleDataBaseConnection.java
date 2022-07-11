package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleDataBaseConnection {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection
					("jdbc:oracle:thin:@//localhost:1521/xe", "test1", "1234");
		} catch (Exception e) {
			System.out.println("오류 : " + e.getMessage());
		}
		return con;
	}
}
