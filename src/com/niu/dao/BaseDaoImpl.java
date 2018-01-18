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

	public Integer update(StringBuffer sql, Object... prama) {
		int executeUpdate = -1;
		try {
			ps = conn.prepareStatement(sql.toString());
			for (int i = 0; i < prama.length; i++) {
				ps.setObject((i + 1), prama[i]);
			}
			executeUpdate = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return executeUpdate;
	}

	/*
	 * 新增并获得ResultSet
	 */
	public ResultSet insert(StringBuffer sql, Object... prama)
			throws SQLException {
		ps = conn.prepareStatement(sql.toString(),
				Statement.RETURN_GENERATED_KEYS);
		for (int i = 0; i < prama.length; i++) {
			ps.setObject((i + 1), prama[i]);
		}
		ps.executeUpdate();
		ResultSet rs = ps.getGeneratedKeys();
		return rs;
	}

	/**
	 * 
	 * 查询！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param sql
	 * @param prama
	 * @return
	 */
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
}
