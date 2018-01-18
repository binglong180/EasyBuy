package com.niu.service.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.User;
import com.niu.dao.user.UserDao;
import com.niu.dao.user.UserDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

public class UserServiceImpl extends BaseServiceImpl<User> implements
		UserService {
	UserDao ud = null;

	@Override
	public User getUserByLoginName(String loginName) {
		User user = null;
		try {
			conn = JDBCUtil.getConnection();
			ud = new UserDaoImpl(conn);
			user = ud.getUserByLoginName(loginName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return user;
	}

	@Override
	public List<User> getAllUser() {
		List<User> allUser = null;
		try {
			conn = JDBCUtil.getConnection();
			ud = new UserDaoImpl(conn);
			allUser = ud.getAllUser();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}

		return allUser;
	}

	@Override
	public int addUser(User user) {
		int result = -1;
		try {
			conn = JDBCUtil.getConnection();
			UserDao ud = new UserDaoImpl(conn);
			conn.setAutoCommit(false);
			result = ud.addUser(user);
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				JDBCUtil.closeAll(conn, ps, rs);
			}

		}
		return result;
	}

	@Override
	public List<User> deleteUser(String id) {
		List<User> deleteUser = null;
		try {
			conn = JDBCUtil.getConnection();
			ud = new UserDaoImpl(conn);
			conn.setAutoCommit(false);
			deleteUser = ud.deleteUser(id);
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return deleteUser;
	}

}
