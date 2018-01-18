package com.niu.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.niu.bean.User;
import com.niu.dao.BaseDaoImpl;
import com.niu.util.ResultSetUtil;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	private User user;

	public UserDaoImpl(Connection conn) {
		super(conn);
		// TODO Auto-generated constructor stub
	}

	@Override
	public User getUserByLoginName(String loginName) throws SQLException {
		StringBuffer sql = new StringBuffer(
				"SELECT id,loginName,userName,PASSWORD,sex,identityCode,email,mobile,TYPE "
						+ "FROM easybuy_user " + "WHERE 1=1 AND loginName=?");
		ResultSet rs = this.executeQuery(sql, loginName);
		return ResultSetUtil.getClassByRs(rs, User.class);

	}

	@Override
	public List<User> getAllUser() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT id,loginName,userName,PASSWORD,sex,identityCode,email,mobile,TYPE ");
		sql.append("FROM easybuy_user;");
		ResultSet rs = this.executeQuery(sql);
		return ResultSetUtil.getListByRs(rs, User.class);
	}

	@Override
	public int addUser(User user) throws SQLException {
		int id = -1;
		StringBuffer sql = new StringBuffer(
				"INSERT INTO easybuy_user(loginName,userName,`password`,sex,identityCode,email,mobile,`type`)"
						+ "VALUE(?,?,?,?,?,?,?,?);");
		id = this.update(sql, user.getLoginName(), user.getUserName(),
				user.getPassword(), user.getSex(), user.getIdentityCode(),
				user.getEmail(), user.getMobile(), user.getType());

		return id;
	}

	@Override
	public List<User> deleteUser(String id) {
		StringBuffer sql = new StringBuffer(
				"DELETE FROM easybuy_user WHERE id=?");
		this.update(sql, id);
		List<User> allUser = getAllUser();
		return allUser;
	}

}
