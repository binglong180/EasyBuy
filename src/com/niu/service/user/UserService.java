package com.niu.service.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.User;
import com.niu.service.BaseService;

public interface UserService extends BaseService<User>{
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
	User getUserByLoginName(String loginName);
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
	
	int addUser(User user);
}
