package com.niu.dao.user;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.User;
import com.niu.dao.BaseDaoImpl;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	public UserDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	public User setTableByRs(ResultSet rs) throws SQLException {
		if (rs != null) {
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setLoginName(rs.getString("loginName"));
				user.setUserName(rs.getString("userName"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getInt("sex"));
				user.setIdentityCode(rs.getString("identityCode"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setType(rs.getInt("type"));
			}
		}
		return user;
	}

	@Override
	public User getUserByLoginName(String loginName) throws SQLException {
		StringBuffer sql = new StringBuffer(
				"SELECT id,loginName,userName,PASSWORD,sex,identityCode,email,mobile,TYPE "
						+ "FROM easybuy_user " + "WHERE 1=1 AND loginName=?");
		ResultSet rs = this.executeQuery(sql, loginName);
		user = setTableByRs(rs);
		return user;
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addUser(User user) throws SQLException {
		StringBuffer sql = new StringBuffer(
				"INSERT INTO easybuy_user(loginName,userName,`password`,sex,identityCode,email,mobile,`type`)"
						+ "VALUE(?,?,?,?,?,?,?,?);");
		ps = this.update(sql, user.getLoginName(), user.getUserName(),
				user.getPassword(), user.getSex(), user.getIdentityCode(),
				user.getEmail(), user.getMobile(), user.getType());
		int id = ps.executeUpdate();
		return id;
	}

}
