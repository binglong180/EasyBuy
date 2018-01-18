package com.niu.dao.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.User;
import com.niu.dao.BaseDao;

public interface UserDao extends BaseDao<User> {
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
	User getUserByLoginName(String loginName) throws SQLException;

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

	/**
	 * 
	 * 添加用户接口！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2017-12-31
	 * 
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	int addUser(User user) throws SQLException;

	/**
	 * 
	 * 删除用户！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-14
	 * 
	 * @return
	 */
	List<User> deleteUser(String id);
}
