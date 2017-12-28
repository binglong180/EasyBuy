package com.niu.service.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.User;
import com.niu.dao.user.UserDao;
import com.niu.dao.user.UserDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
	@Override
	public User getUserByLoginPass(String loginName, String password)throws SQLException {
		conn=JDBCUtil.getConnection();
		UserDao ud=new UserDaoImpl(conn);
		return  ud.getUserByLoginPass(loginName,password);
	}

	@Override
	public List<User> getAllUser() {
		return null;
	}

}
