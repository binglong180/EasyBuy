package com.niu.dao.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.User;
import com.niu.dao.BaseDao;


public interface UserDao extends BaseDao<User>{
	/**
	 * 
	 * 通过登录名和密码获得ResultSet！
	 * 
	 * @author 牛牛
	 *
	 * @date 2017-12-27
	 *
	 * @param param1
	 * @param param2
	 * @return
	 * @throws SQLException 
	 */
	User getUserByLoginPass(String loginName, String password) throws SQLException;
	/**
	 * 
	 * 获得所有用户的ResultSet结果集！
	 * 
	 * @author 牛牛
	 *
	 * @date 2017-12-27
	 *
	 * @param param1
	 * @param param2
	 * @return
	 */
	public List<User> getAllUser();
	
}
