package creation.common.jdbc;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import creation.common.config.ConfigLocation;

   

public class JDBCTemplate {
	
	// 커넥션 연결 하는 부분
	public static Connection getConnection() {
		
		Connection con = null;
		
		Properties prop = new Properties();
		
		try {
			prop.load(new FileReader(ConfigLocation.CONNECTION_CONFIG_LOCATION));
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			
			Class.forName(driver);
			
			con = DriverManager.getConnection(url,prop);
			
//			System.out.println(con); 커넥션 연결확인용
			
			/* 수동으로 커밋과 롤백을 하기 위한 설정을 하자 */
			con.setAutoCommit(false);
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	// 커넥션 닫아 주는 부분
	public static void close(Connection con) {
		try {
			if(con != null && !con.isClosed()) { // if문에 있는 isClosed로 예외처리하면 한번에 예외처리됨
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) { 
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) { 
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 트렌젝션 부분
	public static void commit(Connection con) {
		try {
			if(con != null && !con.isClosed()) {
				con.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void rollback(Connection con) {
		try {
			if(con != null && !con.isClosed()) {
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
}
