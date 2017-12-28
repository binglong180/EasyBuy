package com.niu.util;

import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.Connection;
/**
 * 
 * 数据库工具类！
 * 获得连接
 * 关闭资源
 * 
 * @author 牛牛牛！！！牛牛！！牛！
 *
 * @date 2017-12-28
 *
 * @version 
 *
 */
public class JDBCUtil {
	static Connection conn;
	static String driver;
	static String url;
	static String username;
	static String password;
	static String path = "database.properties";
	static {
		Properties pro = new Properties();
		
			InputStream is = JDBCUtil.class.getClassLoader()
					.getResourceAsStream(path);
			try {
				pro.load(is);
				driver = pro.getProperty("jdbc.driver");
				password = pro.getProperty("jdbc.password");
				url = pro.getProperty("jdbc.url");
				username = pro.getProperty("jdbc.username");
				Class.forName(driver);
			} catch (Exception e) {
				e.getStackTrace();
			}
		

	}
	/**
	 * 
	 * 获得数据库连接！
	 * 
	 * @author 牛牛
	 *
	 * @date 2017-12-28
	 *
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		if (conn == null) {
			conn = (Connection) DriverManager.getConnection(url, username,
					password);
		}
		return conn;
	}
	/**
	 * 
	 * 关闭数据库连接及其他资源！
	 * 
	 * @author 牛牛
	 *
	 * @date 2017-12-28
	 *
	 * @param conn
	 * @param ps
	 * @param rs
	 */
	public static void closeAll(Connection conn, PreparedStatement ps,
			ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
