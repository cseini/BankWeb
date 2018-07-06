package test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBC {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","seini144","password");
			String sql = "SELECT * FROM TAB";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			List<String> list = new ArrayList<>();
			while(rs.next()) {
				list.add(rs.getString("TNAME"));
			}
			System.out.println("테이블 "+list);
		} catch (SQLException e) {
			System.out.println("에러 발생");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
