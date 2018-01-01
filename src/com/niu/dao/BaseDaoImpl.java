package com.niu.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.ProductCategory;
import com.niu.bean.User;
import com.niu.util.JDBCUtil;
import com.sun.faces.renderkit.html_basic.HtmlBasicRenderer.Param;

public abstract class BaseDaoImpl<T> implements BaseDao<T> {
	protected static Connection conn;
	protected static PreparedStatement ps;
	protected static ResultSet rs;
	protected static User user;
	protected static ProductCategory productCategory;

	public BaseDaoImpl(Connection conn) {
		this.conn = conn;
	}

	public PreparedStatement update(StringBuffer sql, Object... prama) {
		try {
			ps = conn.prepareStatement(sql.toString());
			for (int i = 0; i < prama.length; i++) {
				ps.setObject((i + 1), prama[i]);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ps;
	}

	public PreparedStatement insert(StringBuffer sql, Object... prama)
			throws SQLException {
		ps = conn.prepareStatement(sql.toString(),
				Statement.RETURN_GENERATED_KEYS);
		for (int i = 0; i < prama.length; i++) {
			ps.setObject((i + 1), prama[i]);
		}
		return ps;

	}

	public ResultSet executeQuery(StringBuffer sql, Object... prama) {
		try {
			ps = conn.prepareStatement(sql.toString());
			for (int i = 0; i < prama.length; i++) {
				ps.setObject((i + 1), prama[i]);
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	/**
	 * 
	 * 用得到的result进行对象的赋值！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2017-12-28
	 * 
	 * @param rs
	 * @return
	 * @return
	 * @throws SQLException
	 */
	public abstract T setTableByRs(ResultSet rs) throws SQLException;

	public abstract List<T> setListByRs(ResultSet rs) throws SQLException;
}
