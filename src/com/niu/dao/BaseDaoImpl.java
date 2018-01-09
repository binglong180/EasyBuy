package com.niu.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public abstract class BaseDaoImpl<T> implements BaseDao<T> {
	protected Connection conn;
	protected PreparedStatement ps;
	protected ResultSet rs;

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

	public abstract T setTableByRs(ResultSet rs) throws SQLException;
}
